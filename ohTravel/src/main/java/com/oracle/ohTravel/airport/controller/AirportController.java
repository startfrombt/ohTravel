package com.oracle.ohTravel.airport.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.ohTravel.airport.model.AirSearch;
import com.oracle.ohTravel.airport.model.Air_FlightSchDTO;
import com.oracle.ohTravel.airport.model.Air_ReservationDTO;
import com.oracle.ohTravel.airport.model.Air_Reservation_PiDTO;
import com.oracle.ohTravel.airport.model.Air_ScheduleDTO;
import com.oracle.ohTravel.airport.model.PeopleInfo;
import com.oracle.ohTravel.airport.model.Reservation_Seat;
import com.oracle.ohTravel.airport.service.ScheduleService;
import com.oracle.ohTravel.city.model.CityDTO;
import com.oracle.ohTravel.city.service.CityService;
import com.oracle.ohTravel.country.model.CountryDTO;
import com.oracle.ohTravel.country.service.CountryService;
import com.oracle.ohTravel.manager.model.CouponDTO;
import com.oracle.ohTravel.manager.model.PaymentDTO;
import com.oracle.ohTravel.member.model.AirReservationDetail;
import com.oracle.ohTravel.member.model.MemberDTO;
import com.oracle.ohTravel.member.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@RequestMapping("/airport")
@Slf4j
public class AirportController {
	
	private final CityService cityService;
	private final CountryService countryService;
	private final ScheduleService scheduleService;
	private final MemberService memberService;
	
	//항공권 검색
	@RequestMapping(value = "/searchTicket")
	public String searchTicket(Model model) throws Exception {
		log.info("AirportController searchTicket");
		// 가고싶은 나라 country 모두 가져오기
		List<CountryDTO> countryList = countryService.selectCountryByCountryId(0);
				
		
		model.addAttribute("countryList",countryList);
		
		return "airport/searchTicket";
	}
	
	//항공권 예약
	@RequestMapping(value = "/air_reservation")
	public String air_reservation() {
		return "airport/air_reservation";
	}
	
	//도시불러오는 메서드
	@PostMapping("/selectCity")
	@ResponseBody
	public List<CityDTO> selectCity(Integer country_id) throws Exception {
		log.info("AirportController selectCity() start...");
		List<CityDTO> list = cityService.selectCityByCountryId(country_id);
		log.info("AirportController selectCity() end...");
		return list;
	}
	
	@GetMapping("/searchAirplane")
	public ModelAndView searchAirplane(AirSearch airSearch,HttpServletRequest request,HttpSession session) {
		
		
				// 현재 로그인하고 있는 사용자 정보
				MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
				log.info("memberDTO = " + memberDTO);
				String toURL = request.getRequestURI();
				//toURL을 받을때는 &를 몰라서 맨앞에 있는것만 받는데 %26으로 보내고 받을때 replaceAll로 %26을 &로 변환하면 잘받아진다....(성대씨대박!)
				toURL = toURL+"?gubun_check="+airSearch.getGubun_check()+"%26order="+airSearch.getOrder()+"%26start_country_id="+airSearch.getStart_country_id()+"%26start_city_name="+airSearch.getStart_city_name()+"%26start_city_id="+airSearch.getStart_city_id()+"%26start_city_name="+airSearch.getStart_city_name()+"%26end_country_id="+airSearch.getEnd_country_id()+"%26end_city_id="+airSearch.getEnd_city_id()+"%26start_date1="+airSearch.getStart_date1()+"%26end_date="+airSearch.getEnd_date()+"%26start_date2="+airSearch.getStart_date2()+"%26seat_name="+airSearch.getSeat_name()+"%26seat_position="+airSearch.getSeat_position()+"%26count="+airSearch.getCount();
				System.out.println("toURL====?"+toURL);
				
				ModelAndView mav = new ModelAndView();
//				
//				if(memberDTO == null) {
//					mav.setViewName("redirect:/member/loginForm?toURL="+toURL);
//					return mav;
//				}
		
		
		
		
		List<Air_ScheduleDTO> oneway_schedule_list= null;
		List<Air_ScheduleDTO> round_trip_come_schedule_list=null;
		List<Air_ScheduleDTO> round_trip_go_schedule_list=null;
	
		
		
		if(airSearch.getGubun_check()==1) { //편도일때(가는비행기)
				oneway_schedule_list = scheduleService.searchAirplane(airSearch);
				
				for(int i = 0; i<oneway_schedule_list.size(); i++ ) {
					oneway_schedule_list.get(i).generalCalc();
					oneway_schedule_list.get(i).businessCalc();
					oneway_schedule_list.get(i).firstCalc();
				}
				
				mav.addObject("schedule_list",oneway_schedule_list);//편도일때 가는비행기 select
				
		}else if(airSearch.getGubun_check()==0) { //왕복일때(오는비행기)
			
			 round_trip_come_schedule_list = scheduleService.roundSearchAirplane(airSearch);
			 
			 for(int i = 0; i<round_trip_come_schedule_list.size(); i++ ) {
				 round_trip_come_schedule_list.get(i).generalCalc();
				 round_trip_come_schedule_list.get(i).businessCalc();
				 round_trip_come_schedule_list.get(i).firstCalc();
				}
			 
			 round_trip_go_schedule_list = scheduleService.round_GoSearchAriplane(airSearch);
			 
			 for(int i = 0; i<round_trip_go_schedule_list.size(); i++ ) {
				 round_trip_go_schedule_list.get(i).generalCalc();
				 round_trip_go_schedule_list.get(i).businessCalc();
				 round_trip_go_schedule_list.get(i).firstCalc();
				}
			 
			 mav.addObject("comeList",round_trip_come_schedule_list); // 왕복일때 오는 비행기 select
			 mav.addObject("goList",round_trip_go_schedule_list); // 왕복일때 가는 비행기
		}
			
	
		
		System.out.println("oneway_schedule_list="+oneway_schedule_list);
		System.out.println("round_trip_come_schedule_list="+round_trip_come_schedule_list);
		System.out.println("airSearch="+airSearch);
		
		
		
		
		mav.setViewName("airport/resultAirplane");
		
		mav.addObject("seat_position",airSearch.getSeat_position());
		mav.addObject("start_date1",airSearch.getStart_date1());
		mav.addObject("start_date2",airSearch.getStart_date2());
		mav.addObject("end_date",airSearch.getEnd_date());
		mav.addObject("start_city_id",airSearch.getStart_city_id());
		mav.addObject("end_city_id",airSearch.getEnd_city_id());
		mav.addObject("gubun_check",airSearch.getGubun_check());
		mav.addObject("order",airSearch.getOrder());
		mav.addObject("count",airSearch.getCount());
		mav.addObject("seat_name",airSearch.getSeat_name());
		mav.addObject("start_country_id",airSearch.getStart_country_id());
		mav.addObject("end_country_id",airSearch.getEnd_country_id());
		mav.addObject("memberDTO",memberDTO);
		mav.addObject("toURL",toURL);
//		mav.addObject("general_remaining_seats",air_ScheduleDTO.getGeneral_remaining_seats());
//		mav.addObject("business_remaining_seats",air_ScheduleDTO.getBusiness_remaining_seats());
//		mav.addObject("first_remaining_seats",air_ScheduleDTO.getFirst_remaining_seats());

		return mav;
	}
	
	@GetMapping("/searchAirplaneAjax")
	@ResponseBody
	public ModelAndView searchAirplaneAjax(String seat_position,Integer order,AirSearch airSearch) {
		
		System.out.println("searchAirplaneAjax airSearch="+airSearch);
		System.out.println("searchAirplaneAjax order="+order);
		airSearch.setOrder(order);
		
		ModelAndView mav = new ModelAndView();
		List<Air_ScheduleDTO> oneway_schedule_list= null;
		List<Air_ScheduleDTO> round_trip_come_schedule_list=null;
		List<Air_ScheduleDTO> round_trip_go_schedule_list=null;
	
		
		if(airSearch.getGubun_check()==1) { //편도일때(가는비행기)
				oneway_schedule_list = scheduleService.searchAirplane(airSearch);
				
				for(int i = 0; i<oneway_schedule_list.size(); i++ ) {
					oneway_schedule_list.get(i).generalCalc();
					oneway_schedule_list.get(i).businessCalc();
					oneway_schedule_list.get(i).firstCalc();
				}
				mav.addObject("schedule_list",oneway_schedule_list);//편도일때 가는비행기 select
		}else if(airSearch.getGubun_check()==0) { //왕복일때(오는비행기)
			
			 round_trip_come_schedule_list = scheduleService.roundSearchAirplane(airSearch);
			 
			 for(int i = 0; i<round_trip_come_schedule_list.size(); i++ ) {
				 round_trip_come_schedule_list.get(i).generalCalc();
				 round_trip_come_schedule_list.get(i).businessCalc();
				 round_trip_come_schedule_list.get(i).firstCalc();
				}
			 
			 round_trip_go_schedule_list = scheduleService.round_GoSearchAriplane(airSearch);
			 
			 for(int i = 0; i<round_trip_go_schedule_list.size(); i++ ) {
				 round_trip_go_schedule_list.get(i).generalCalc();
				 round_trip_go_schedule_list.get(i).businessCalc();
				 round_trip_go_schedule_list.get(i).firstCalc();
				}
			 mav.addObject("comeList",round_trip_come_schedule_list); // 왕복일때 오는 비행기 select
			 mav.addObject("goList",round_trip_go_schedule_list); // 왕복일때 가는 비행기
		}
			
	
		
		System.out.println("oneway_schedule_list="+oneway_schedule_list);
		System.out.println("round_trip_come_schedule_list="+round_trip_come_schedule_list);
		System.out.println("airSearch="+airSearch);
		
		mav.setViewName("empty/resultAirplaneAjax");
		mav.addObject("gubun_check",airSearch.getGubun_check());
		mav.addObject("seat_position",seat_position);
		mav.addObject("start_date1",airSearch.getStart_date1());
		mav.addObject("start_date2",airSearch.getStart_date2());
		mav.addObject("end_date",airSearch.getEnd_date());
		mav.addObject("start_city_id",airSearch.getStart_city_id());
		mav.addObject("end_city_id",airSearch.getEnd_city_id());
		return mav;
	}
	
	@GetMapping("/reservationAirplaneAgreeCheck")
	@ResponseBody
	public ModelAndView airplaneReservationAgreeCheck(String toURL,Integer count,Integer go_schedule_id,Integer come_schedule_id,String seat_position,String seat_name,Integer gubun_check,Integer start_city_id,Integer end_city_id,HttpServletRequest request,HttpSession session) {
		
		
		
		// 현재 로그인하고 있는 사용자 정보
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		log.info("memberDTO = " + memberDTO);

		ModelAndView mav = new ModelAndView();
		
		if(memberDTO == null) {
			mav.setViewName("redirect:/member/loginForm?toURL="+toURL);
			return mav;
		}
		
		System.out.println("airplaneReservation count="+count);
		System.out.println("airplaneReservation go_schedule_id="+go_schedule_id);
		System.out.println("airplaneReservation come_schedule_id="+come_schedule_id);
		System.out.println("airplaneReservation seat_position="+seat_position);
		System.out.println("airplaneReservation seat_name="+seat_name);
		System.out.println("gubun_check="+gubun_check);
		
		//왕복 가는비행기와 오는비행기
		if(gubun_check == 0) {
			Air_ScheduleDTO  scheduleGo= scheduleService.airplaneReservationAgreeCheckGo(go_schedule_id);
			Air_ScheduleDTO scheduleCome = scheduleService.airplaneReservationAgreeCheckCome(come_schedule_id);
			mav.addObject("go",scheduleGo);
			mav.addObject("come",scheduleCome);
		//편도 가는비행기	
		}else if(gubun_check == 1) {
			Air_ScheduleDTO  scheduleGo= scheduleService.airplaneReservationAgreeCheckGo(go_schedule_id);
			mav.addObject("go",scheduleGo);
		}
		
		
		
		
		
		mav.setViewName("airport/air_reservation");
		mav.addObject("count",count);
		mav.addObject("go_schedule_id",go_schedule_id);
		mav.addObject("come_schedule_id",come_schedule_id);
		mav.addObject("seat_position",seat_position);
		mav.addObject("seat_name",seat_name);
		mav.addObject("start_city_id",start_city_id);
		mav.addObject("end_city_id",end_city_id);
		
		
		
		return mav;
		
	}
	
	
	@PostMapping("/airplaneReserve")
	public String airReserve(Integer go_schedule_id,Integer come_schedule_id, Integer count,Integer go_price,Integer come_price,Integer total_price, String go_airplane_name,String come_airplane_name,String seat_position,String seat_name,Model model,HttpSession session) throws Exception {
		
		// 현재 로그인하고 있는 사용자 정보
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		log.info("memberDTO = " + memberDTO);
		
	
		
		if(memberDTO == null) {
			return "redirect:/member/loginForm";
			
		}
		  
		
		
		String mem_id = memberDTO.getMem_id();
		
		// 멤버 (등급 까지 들고가기)
		memberDTO = memberService.selectMemberWithGrade(mem_id);
		System.out.println("memberDTO="+memberDTO);
		
		List<CouponDTO> couponList = memberService.selectMemberWithCoupon(mem_id);
		System.out.println("couponList="+couponList);
		log.info("couponList = " + couponList);
		//memberDTO.setCouponList(couponList);
		
		
		// 회원 등급 적용한 가격 가져가기
		int priceWithGd =  total_price- (total_price*memberDTO.getMembership_discount() / 100);
		System.out.println("priceWithGd="+priceWithGd);
	
		
		// 회원 등급 적용한 마일리지 가져가기
		int mile =  total_price *  memberDTO.getMembership_discount() / 100;
		System.out.println("mile="+mile);
		
		System.out.println("가는가격?"+go_price);
		System.out.println("오는가격?"+come_price);
		
		model.addAttribute("count", count);
		model.addAttribute("price", total_price);
		model.addAttribute("go_price", go_price);
		model.addAttribute("come_price", come_price);
		
		model.addAttribute("go_schedule_id", go_schedule_id);
		model.addAttribute("come_schedule_id", come_schedule_id);
		model.addAttribute("go_airplane_name", go_airplane_name);
		model.addAttribute("come_airplane_name", come_airplane_name);
		model.addAttribute("seat_position", seat_position);
		model.addAttribute("seat_name", seat_name);
		model.addAttribute("memberDTO", memberDTO);
		model.addAttribute("mem_id", mem_id);
		model.addAttribute("couponList", couponList);
		model.addAttribute("mile", mile);
		model.addAttribute("priceWithGd", priceWithGd);
		
	
		
		System.out.println("price="+total_price);
		
		
		return "airport/airplane_reservation";
	}
	
	@PostMapping("/airplaneInsertReservation")
	@ResponseBody
	public int airInsertReserve(Integer coupon_id,Integer count,String go_airplane_name,String come_airplane_name,String seat_position,Integer go_schedule_id,Integer come_schedule_id,Air_ReservationDTO air_ReservationDTO,PeopleInfo peopleInfo,Air_FlightSchDTO air_FlightSchDTO,Reservation_Seat reservation_Seat,PaymentDTO paymentDTO,Air_ScheduleDTO air_ScheduleDTO,HttpSession session) throws Exception {
		System.out.println("peopleInfo="+peopleInfo);
		System.out.println("go_airplane_name="+go_airplane_name);
		System.out.println("come_airplane_name="+come_airplane_name);
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		log.info("memberDTO = " + memberDTO);
		
		ModelAndView mav = new ModelAndView();
	    int reservationCnt = scheduleService.insertReservation(air_ReservationDTO);
	    System.out.println("reservationCtn 갯수?"+reservationCnt);
	   
	   
	    
	    Air_ReservationDTO reservationList = scheduleService.selectReservationId(air_ReservationDTO.getMem_id());
	    System.out.println("air_ReservationDTO 예약아이디?"+reservationList.getReservation_id());
	    System.out.println("air_ReservationDTO 예약날짜?"+reservationList.getReservation_date());
	   
		System.out.println("reservationList="+reservationList);
		
		
		
	
		
	    
		Map<String,Object> map = new HashMap<String, Object>();
		
		
		Integer reservation_id = reservationList.getReservation_id();
		
		map.put("reservation_id",reservationList.getReservation_id());
		map.put("reservation_date",reservationList.getReservation_date());
		map.put("air_FlightSchDTO",air_FlightSchDTO);
		map.put("reservation_Seat",reservation_Seat);
		map.put("peopleInfo",peopleInfo);
		map.put("go_airplane_name",go_airplane_name);
		map.put("come_airplane_name",come_airplane_name);
		map.put("seat_position",seat_position);
		map.put("go_schedule_id",go_schedule_id);
		if(come_schedule_id != null) {
			map.put("come_schedule_id",come_schedule_id);
		}
		map.put("air_gubun",air_FlightSchDTO.getAir_gubun());
		map.put("paymentDTO",paymentDTO);
		map.put("mem_id",memberDTO.getMem_id());
		map.put("air_ScheduleDTO",air_ScheduleDTO);
		map.put("count",count);
		map.put("coupon_id",coupon_id);
		
		System.out.println("map="+map);
		
		
		 
		 int insertMethod = scheduleService.insertAll(map);
		 System.out.println("insertMethod 갯수?"+insertMethod);
		 
		
		  
		
		 
//		 int reservationCnt = scheduleService.insertReservation(air_ReservationDTO);
//		 int piCnt = scheduleService.insertPiReservation(air_Reservation_PiDTO);
//		 int flightCnt = scheduleService.insertFlightSche(air_FlightSchDTO);
//		 int seatCnt = scheduleService.insertSeat(reservation_Seat);
		
		
			
		mav.setViewName("airport/orderComplete");
		mav.addObject("seat_position", seat_position);
		mav.addObject("go_schedule_id", go_schedule_id);
		mav.addObject("come_schedule_id", come_schedule_id);
		mav.addObject("come_airplane_name", come_airplane_name);
		mav.addObject("go_airplane_name", go_airplane_name);
		mav.addObject("insertMethod",insertMethod);
		mav.addObject("reservationCnt",reservationCnt);
		mav.addObject("reservationList",reservationList);
		
		
		
		return reservation_id;
	}
	
	@PostMapping("/reservationComplete")
	public String  reservationComplete(Integer coupon_id,Integer reservation_id,HttpSession session, Model model) {
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");

		Air_ReservationDTO air_ReservationDTO = scheduleService.selectCompleteReservationId(reservation_id);
		
		model.addAttribute("air_ReservationDTO",air_ReservationDTO);
		model.addAttribute("mem_id",memberDTO.getMem_id());
		
		return "airport/orderComplete";
	}
	
	//회원정보 수정하려고
	@GetMapping("/airInfoModify")
	public String airInfoModify(Integer reservation_id,Model model) {
		
		System.out.println("예매번호는?"+reservation_id);
		if(reservation_id != null) {
			List<Air_Reservation_PiDTO> air_Reservation_PiList = scheduleService.selectReservation(reservation_id);
			model.addAttribute("air_Reservation_PiList",air_Reservation_PiList);
			model.addAttribute("reservation_id",reservation_id);
			System.out.println("air_Reservation_PiList는?"+air_Reservation_PiList);
		}
		
		
		
		
		
		
		return "airport/air_info_modify";
	}

	//회원정보 진짜 update
	@GetMapping("/airInfoModifyComplete")
	@ResponseBody
	public void airInfoModifyComplete(Integer air_pi_id,Integer reservation_id,String air_pi_name,Date air_pi_birth,Integer air_pi_gen,String air_pi_lname,String air_pi_fname,String air_pi_email,Integer air_pi_tel,String air_passport,Model model) {
		Air_Reservation_PiDTO air_Reservation_PiDTO = new Air_Reservation_PiDTO();
		
		air_Reservation_PiDTO.setReservation_id(reservation_id); //예약아이디 수정
		air_Reservation_PiDTO.setAir_pi_id(air_pi_id); //인원 아이디 수정
		air_Reservation_PiDTO.setAir_pi_name(air_pi_name); //이름 수정
		air_Reservation_PiDTO.setAir_pi_birth(air_pi_birth); // 생년월일 수정
		air_Reservation_PiDTO.setAir_pi_gen(air_pi_gen); // 성별 수정
		air_Reservation_PiDTO.setAir_pi_lname(air_pi_lname); // 영문 성 수정
		air_Reservation_PiDTO.setAir_pi_fname(air_pi_fname); // 영문 이름 수정
		air_Reservation_PiDTO.setAir_pi_email(air_pi_email); // 이메일 수정
		air_Reservation_PiDTO.setAir_pi_tel(air_pi_tel); // 휴대폰 번호 수정
		air_Reservation_PiDTO.setAir_passport(air_passport); // 여권 번호 수정
		System.out.println("수정한 인원정보 ID는?"+air_Reservation_PiDTO.getAir_pi_id());
		System.out.println("air_Reservation_PiDTO는????"+air_Reservation_PiDTO);
		
		List<Air_Reservation_PiDTO> air_Reservation_PiList = scheduleService.updatePeopleInfo(air_Reservation_PiDTO);
		
		model.addAttribute("air_Reservation_PiList",air_Reservation_PiList);
		model.addAttribute("reservation_id",reservation_id);
		
	}
	
}
