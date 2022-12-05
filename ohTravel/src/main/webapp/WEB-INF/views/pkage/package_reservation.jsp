<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- google fonts icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="/css/pkage/package_detail.css">
<link rel="stylesheet" href="/css/pkage/package_reservation.css">
<link rel="stylesheet" href="/css/pkage/package_clear.css">
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<!-- regeXP.js -->
<script src="/js/pkage/regExp.js"></script>
</head>
<body>
<div id="pkRv_container">
        <div class="pkRv_contents">
            <div id="" class="fontCtrl">
                <!-- 헤더 -->
                <div class="text_wrap big">
                    <strong class="tit">예약하기</strong>
                </div>

                <!-- 내용 -->
                <div class="ly_wrap pay_info">
                    <!-- 왼쪽 부분 -->
                    <div class="inr">
                        <div class="text_wrap mid">
                        <%-- 패키지 상세 이름 --%>
                            <strong class="tit">${pkage_detailDTO.pkage_dt_name }</strong>
                        </div>

                        <!-- 예약 정보 table -->
                        <div class="tbl">
                            <table class="type2">
                                <colgroup>
                                    <col style="width: 17%;"><col>
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>여행기간</th>
                                        <td>
                                        	<strong><%-- pkg detail의 일정 --%>
                                        	<fmt:formatDate value="${pkage_detailDTO.pkage_dt_startDay }" pattern="yyyy.MM.dd"/>
                                       		 ~
                                       		 <fmt:formatDate value="${pkage_detailDTO.pkage_dt_endDay }" pattern="yyyy.MM.dd"/>
                                       		 / ${pkage_detailDTO.day-1 }박 ${pkage_detailDTO.day }일
                                        	</strong>
                                       	</td>
                                    </tr>
                                    <%-- 비행일정이 있는 상품만 표시 --%>
                                    <c:if test="${pkage_detailDTO.pkage_flightScheDTOList[0].schedule_id != null }">
	                                    <tr>
	                                        <th>항공편</th>
	                                        <td>
	                                            <div class="item_course">
	                                                <p><%-- 항공편, 출발쪽은 인천으로 고정되어있기 때문에 하드코딩함 --%>
	                                                    <strong class="air_name">인천</strong>
	                                                    <span class="move_arrow round">출발도착</span>
	                                                    <strong class="air_name">${pkageDTORM.cityDTO.city_name }</strong>
	
	                                                    <span class="air_info">
	                                                        <span class="air_name">
	                                                            <span class="air_img">
	                                                                <img src="${pkage_detailDTO.pkage_flightScheDTOList[0].air_ScheduleDTORM.airlineDTO.air_picture }" data-src="">
	                                                            </span>
	                                                            	${pkage_detailDTO.pkage_flightScheDTOList[0].air_ScheduleDTORM.airlineDTO.air_name }
	                                                        </span>
	                                                    </span>
	                                                </p>
	                                            </div>
	                                        </td>
	                                    </tr>
                                    </c:if>
                                    <tr>
                                        <th>이용호텔</th><%-- 호텔예정  --%>
                                        <td><em>${pkage_detailDTO.pkage_hotelDTO != 'null' ? '호텔예정' : ''}</em></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div><!-- tbl -->

                        <!-- 예약자 정보 -->
                        <div class="text_wrap mid">
                            <strong class="tit">예약자 정보</strong>
                        </div>

                        <!-- 예약자 정보 테이블 -->
                        <div class="tbl">
                            <table class="type2">
                                <colgroup>
                                    <col style="width: 17%;">
                                    <col> 
                                    <col style="width: 17%;">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr><%-- 로그인 한 사람의 정보 --%>
                                        <th>이름</th>
                                        <td>
                                            <input type="text" id="" class="" name="" value="${memberDTO.mem_name }" maxlength="10" minlength="3" readonly="readonly" placeholder="한글성명(ex. 홍길동)">
                                        </td>
                                        <th>생년월일</th>
                                        <td>
                                            <input type="text" id="" class="" name="" value="<fmt:formatDate value="${memberDTO.mem_birthday }" pattern="yyyy-MM-dd"/>" maxlength="10" minlength="3" readonly="readonly" placeholder="법정 생년월일(ex. 1991-12-23)">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>이메일</th>
                                        <td>
                                            <input type="text" id="" class="" name="" value="${memberDTO.mem_email }" maxlength="30" minlength="3" readonly="readonly" placeholder="이메일 주소(ex. Hong@naver.com)">
                                        </td>
                                        <th>휴대폰 번호</th>
                                        <td>
                                            <input type="text" id="" class="" name="" value="${memberDTO.mem_tel }" maxlength="20" minlength="3" readonly="readonly" placeholder="휴대폰 번호(ex. 01012345678)">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div><!-- tbl -->

						
                        <!-- 인원정보 -->
                        <div class="text_wrap mid">
                            <strong class="tit">인원정보</strong>
                        </div>

                        <!-- 인원 정보 부분 -->
                        <div class="tbl">
                            <table class="type2">
                                <colgroup>
                                    <col style="width: 17%;">
                                    <col> 
                                    <col style="width: 17%;">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr><%-- 인원 정보와 가격 부분 --%>
                                        <th>성인</th>
                                        <td class="inpt_counter_adult">${pkgReserve.adultCnt }<span>명</span></td>
                                        <th>가격</th>
                                        <td class="price_adult">${pkage_detailDTO.pkage_dt_Aprice*pkgReserve.adultCnt }<span>원</span></td>
                                    </tr>
                                    <tr>
                                        <th>아동</th>
                                        <td class="inpt_counter_child">${pkgReserve.childCnt }<span>명</span></td>
                                        <th>가격</th>
                                        <td class="price_child">${pkage_detailDTO.pkage_dt_Cprice*pkgReserve.childCnt }<span>원</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div><!-- tbl -->

                        <!-- 여행자 정보 부분 -->
                        <div class="text_wrap mid">
                            <strong class="tit">여행자 정보</strong>
                        </div>
				<form id="reserveForm" name="reserveForm">
					<input type="hidden" name="pkage_dt_id" value="${pkage_detailDTO.pkage_dt_id }"> <!-- 패키지 상세 ID -->
					<input type="hidden" name="mem_id" value="${memberDTO.mem_id }"> <!-- 회원 아이디 -->
					<input type="hidden" name="pkage_rv_Acnt" value="${pkgReserve.adultCnt }"> <!-- 성인 인원 -->
					<input type="hidden" name="pkage_rv_Ccnt" value="${pkgReserve.childCnt }"> <!-- 아동 인원 -->
					<input type="hidden" name="pkage_rv_tprice" value="${priceWithGd }"> <!-- 최종 가격 -->
					<input type="hidden" name="coupon_id" value=""> <!-- 적용한 쿠폰 ID -->
					<input type="hidden" name="mile" value="${mile }"> <!-- 적용할 마일리지 -->
                        <!-- 여행자 정보 부분 table -->
                        <div class="js_tabs type1 v-tabs alone">
                            <div class="panels personChk">
                                <div id="tabConTrvlP" class="panel selected">
                                    <div class="text_wrap type sml">
                                        <strong class="tit">성인 1</strong>
                                    </div>
                                    
                                    <div>
                                        <div class="tbl">
                                            <table class="type2">
                                                <colgroup>
                                                    <col style="width: 17%;"> 
                                                    <col style="width: 33%;"> 
                                                    <col style="width: 17%;"> 
                                                    <col style="width: 33%;">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th>성명(한글)</th>
                                                        <td colspan="3">
                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_name" value="" maxlength="4" minlength="3" placeholder="한글성명(ex. 홍길동)" style="width: 250px;">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>생년월일</th>
                                                        <td>
                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_birth" value="" maxlength="10" minlength="3" placeholder="법정 생년월일(ex. 1991-12-23)" style="width: 250px;">
                                                        </td>
                                                        <th>성별</th>
                                                        <td>
                                                            <div class="genderDiv">
                                                                <%-- <span class="genderDiv_radio">
                                                                    <input type="radio" name="gender_0" id="gender1_0" class="inpt_radio" value="0">
                                                                    <label for="gender1_0">남성</label>
                                                                </span>
                                                                <span class="genderDiv_radio">
                                                                    <input type="radio" name="gender_0" id="gender2_0" class="inpt_radio" value="1">
                                                                    <label for="gender2_0">여성</label>
                                                                </span> --%>
                                                                <select class="select_gender" name="gender">
                                                               		<option value="">성별선택</option>
                                                                	<option value="0">남자</option>
                                                                	<option value="1">여자</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>영문 성</th>
                                                        <td><input type="text" id="" class="input_keyword" name="pkage_pi_lname" value="" maxlength="30" minlength="3" placeholder="여권 상의 영문 성(ex. HONG)" style="width: 250px;"></td>
                                                        <th>영문 이름</th>
                                                        <td>
                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_fname" value="" maxlength="30" minlength="3" placeholder="여권 상의 영문 이름(ex. GILDONG)" style="width: 250px;">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>이메일</th>
                                                        <td>
                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_email" value="" maxlength="30" minlength="3"  placeholder="이메일 주소(ex. Hong@naver.com)" style="width: 250px;">
                                                        </td>
                                                        <th>휴대폰 번호</th>
                                                        <td>
                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_tel" value="" maxlength="20" minlength="3" placeholder="휴대폰 번호(ex. 01012345678)" style="width: 250px;">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
										<%-- 성인 예약자들 --%>          <%-- 성인 1명은 무조건 위쪽에 나타나기 때문에 성인은 1명 뺀 수 만큼 반복 --%>
										<c:forEach begin="1" end="${pkgReserve.adultCnt-1 }" varStatus="status">
	                                        <div class="tbl">
	                                            <div class="text_wrap type sml"> <%-- 성인 2부터 시작해야함 --%>
	                                                <strong class="tit">성인 ${status.count+1 }</strong>
	                                            </div>
	
	                                            <table class="type2">
	                                                <colgroup>
	                                                    <col style="width: 17%;"> 
	                                                    <col style="width: 33%;"> 
	                                                    <col style="width: 17%;"> 
	                                                    <col style="width: 33%;">
	                                                </colgroup>
	                                                <tbody>
	                                                    <tr>
	                                                        <th>성명(한글)</th>
	                                                        <td colspan="3">
	                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_name" value="" maxlength="4" minlength="3" placeholder="한글성명(ex. 홍길동)" style="width: 250px;">
	                                                        </td>
	                                                    </tr>
	                                                    <tr>
	                                                        <th>생년월일</th>
	                                                        <td>
	                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_birth" value="" maxlength="10" minlength="3" placeholder="법정 생년월일(ex. 1991-12-23)" style="width: 250px;">
	                                                        </td>
	                                                        <th>성별</th>
	                                                        <td>
	                                                            <div class="genderDiv">
	                                                                <%-- <span class="genderDiv_radio">
	                                                                    <input type="radio" name="gender_${status.count }" id="gender1_${status.count }" class="inpt_radio" value="0">
	                                                                    <label for="gender1_${status.count }">남성</label>
	                                                                </span>
	                                                                <span class="genderDiv_radio">
	                                                                    <input type="radio" name="gender_${status.count+1 }" id="gender2_${status.count }" class="inpt_radio" value="1">
	                                                                    <label for="gender2_${status.count }">여성</label>
	                                                                </span> --%>
	                                                                <select class="select_gender" name="gender">
	                                                                	<option value="">성별선택</option>
	                                                                	<option value="0">남자</option>
	                                                                	<option value="1">여자</option>
	                                                                </select>
	                                                            </div>
	                                                        </td>
	                                                    </tr>
	                                                    <tr>
	                                                        <th>영문 성</th>
	                                                        <td><input type="text" id="" class="input_keyword" name="pkage_pi_lname" value="" maxlength="30" minlength="3" placeholder="여권 상의 영문 성(ex. HONG)" style="width: 250px;"></td>
	                                                        <th>영문 이름</th>
	                                                        <td>
	                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_fname" value="" maxlength="30" minlength="3" placeholder="여권 상의 영문 이름(ex. GILDONG)" style="width: 250px;">
	                                                        </td>
	                                                    </tr>
	                                                    <tr>
	                                                        <th>이메일</th>
	                                                        <td>
	                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_email" value="" maxlength="30" minlength="3"  placeholder="이메일 주소(ex. Hong@naver.com)" style="width: 250px;">
	                                                        </td>
	                                                        <th>휴대폰 번호</th>
	                                                        <td>
	                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_tel" value="" maxlength="20" minlength="3" placeholder="휴대폰 번호(ex. 01012345678)" style="width: 250px;">
	                                                        </td>
	                                                    </tr>
	                                                </tbody>
	                                            </table>
	                                        </div><!-- tbl -->
                                        </c:forEach>
                                        
                                        <%-- 아동 예약자들 --%> 
										<c:forEach begin="1" end="${pkgReserve.childCnt }" varStatus="status">
	                                        <div class="tbl">
	                                            <div class="text_wrap type sml"> <%-- 아동 2부터 시작해야함 --%>
	                                                <strong class="tit">아동 ${status.count }</strong>
	                                            </div>
	
	                                            <table class="type2">
	                                                <colgroup>
	                                                    <col style="width: 17%;"> 
	                                                    <col style="width: 33%;"> 
	                                                    <col style="width: 17%;"> 
	                                                    <col style="width: 33%;">
	                                                </colgroup>
	                                                <tbody>
	                                                    <tr>
	                                                        <th>성명(한글)</th>
	                                                        <td colspan="3">
	                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_name" value="" maxlength="4" minlength="3" placeholder="한글성명(ex. 홍길동)" style="width: 250px;">
	                                                        </td>
	                                                    </tr>
	                                                    <tr>
	                                                        <th>생년월일</th>
	                                                        <td>
	                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_birth" value="" maxlength="10" minlength="3" placeholder="법정 생년월일(ex. 1991-12-23)" style="width: 250px;">
	                                                        </td>
	                                                        <th>성별</th>
	                                                        <td>
	                                                            <div class="genderDiv">
	                                                                <%-- <span class="genderDiv_radio">
	                                                                    <input type="radio" name="gender_${status.count }" id="Cgender1_${status.count }" class="inpt_radio" value="0">
	                                                                    <label for="gender1_${status.count }">남성</label>
	                                                                </span>
	                                                                <span class="genderDiv_radio">
	                                                                    <input type="radio" name="gender_${status.count }" id="Cgender2_${status.count }" class="inpt_radio" value="1">
	                                                                    <label for="gender2_${status.count }">여성</label>
	                                                                </span> --%>
	                                                                <select class="select_gender" name="gender">
	                                                                	<option value="">성별선택</option>
	                                                                	<option value="0">남자</option>
	                                                                	<option value="1">여자</option>
	                                                                </select>
	                                                            </div>
	                                                        </td>
	                                                    </tr>
	                                                    <tr>
	                                                        <th>영문 성</th>
	                                                        <td><input type="text" id="" class="input_keyword" name="pkage_pi_lname" value="" maxlength="30" minlength="3" placeholder="여권 상의 영문 성(ex. HONG)" style="width: 250px;"></td>
	                                                        <th>영문 이름</th>
	                                                        <td>
	                                                            <input type="text" id="" class="input_keyword" name="pkage_pi_fname" value="" maxlength="30" minlength="3" placeholder="여권 상의 영문 이름(ex. GILDONG)" style="width: 250px;">
	                                                        </td>
	                                                    </tr>
	                                                </tbody>
	                                            </table>
	                                        </div><!-- tbl -->
                                        </c:forEach>
                                    </div>
                                </div><!-- tabConTrvlP -->
                            </div><!-- panels -->
                        </div><!-- js_tabs type1 v-tabs alone, 여행자 정보 부분 table  -->
					</form> <!-- reserve 폼 -->
					
                        <!-- 예약 시 유의사항 -->
                        <div class="notice_wrap bg">
                            <strong class="tit line">예약 시 유의사항</strong>
                            <ul class="list_bul disc">
                                <li>
					                                    여행 관련 변경사항 발생 시 안내 드리고자 만 19세 이상의 모든 여행자는 휴대폰번호를
					                                    필수로 입력하셔야 합니다.
                                </li> 
                                <li>
					                                    휴대폰이 없으실 경우 연락 가능한 보호자의 휴대폰번호를 입력해 주시기 바랍니다.<br>(단,
					                                    동일 예약번호 내 동일한 이메일 및 휴대폰번호 입력 불가)
                                </li>   
                                <li>
                                 	여행자 정보 영문이름/법정생년월일은 여권과 동일하게 입력해 주십시오.
                                </li> 
                                <li>
                                                                                 여행자 정보는 예약/결제 후 예약내역에서 모두 입력해 주셔야 합니다
                                </li> 
                                <li>
                                                                                 현지합류 인원추가 시 추가 된 인원의 인원 정보를 등록해주셔야 합니다.
                                </li> 
                                <li>
                                    1인 객실 사용시 추가요금 발생
                                </li> 
                            </ul>
                        </div><!-- notice_wrap bg , 예약 시 유의사항 -->
                        
                        <!-- 다음 단계 버튼 -->
                        <div class="btn_wrap">
                            <button id="nextBtn" class="btn big pink">다음단계</button>
                        </div>
                    </div><!-- inr -->

                    <!-- 오른쪽 부분 -->
                    <div class="inr right" style="right: auto; left: 0px;">
                        <div class="text_wrap mid">
                            <strong class="tit">결제상세내역</strong>
                        </div>

                        <div class="js_acc multi filter_wrap">
                            <div class="pay_area">
                                <div class="info_area total">
                                    <div class="info"><%-- 성인 / 아동 인원 수 및 가격 --%>
                                        <strong class="tit">최종결제금액</strong>
                                        <span>성인 ${pkgReserve.adultCnt }</span>
                                        <span class="divider_dot">아동 ${pkgReserve.childCnt }</span>
                                    </div>
                                    <%-- 처음엔 회원 등급을 뺀 가격 ( 쿠폰 적용 X 인 가격 ) --%>
                                    <strong class="price" data-realPrice="${priceWithGd }"><fmt:formatNumber value="${priceWithGd }" pattern="#,###"/><span>원</span></strong>
                                    <div class="mileage_save">
                                    	<p>OhTravel 마일리지 
                                    		<em class="mileage">
                                    			<fmt:formatNumber value="${mile }" pattern="#,###"/>
                                    		</em> 
                                   		적립예정</p>
                                    </div>
                                </div>

                                <div class="info_area">
                                	<p class="mem_grade">회원등급에 따른 할인가격 : <fmt:formatNumber value="${pkgReserve.totalPay*memberDTO.membership_discount/100 }" pattern="#,###"/><span>원</span></p>
                                	<p class="mem_coupon">쿠폰 적용에 따른 할인가격 : <span class="cp_discount"></span><span>원</span></p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="coupon_list">
                        	<div class="cp_name">쿠폰</div> 
                        	<select id="cp_list" name="cp_list"> <!--  onchange="changeSelectCp()" -->
                        		<option value="">${memberDTO.couponList[0] == null ? '쿠폰 없음' : '쿠폰 적용' }</option>
                        		<c:forEach var="coupon" items="${memberDTO.couponList }">
                        			<option value="${coupon.coupon_discount }" data-cpId="${coupon.coupon_id }">${coupon.coupon_name }</option>
                        		</c:forEach>
                        	</select>
                        </div>
                    </div><!-- inr right -->
                </div><!-- ly_wrap pay_info -->
            </div><!-- fontCtrl -->
        </div><!-- pkRv_contents -->
    </div><!-- pkRv_container -->

    <script>
        $(function() {
            // 유효성 검사 통과 체크용
            let validCheck = true;

            // input 태그의 값에 이벤트 걸기
            $('.input_keyword').on({
                focus: function() {
                        // input 태그의 value 값
                    let InputValue = $(this).val();

                    // input 태그의 name 값
                    let InputName = $(this).attr('name');
                    // 해당 name 값의 길이
                    let strlength = InputName.length;
                    // 해당 input 태그의 끝부분부터 _ index 위치 
                    let underline = InputName.lastIndexOf('_',strlength);
                    // _ 다음 부터의 단어
                    let what = InputName.substring(underline+1, strlength);

                    // focus 했을 때 빈 값이면 에러 태그 추가
                    if(what == 'name') {
                        if(InputValue == '') {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">2~5자 한글성명만 입력해주세요</p>');
                            }
                        }    
                    } else if(what == 'birth') {
                        if(InputValue == '') {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">생년월일 형식에 맞게 입력해 주세요.(ex. 1999-12-31)</p>');
                            }
                        }
                    } else if(what == 'lname') {
                        if(InputValue == '') {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">여권상의 영문 성을 입력해 주세요.</p>');
                            }
                        }
                    } else if(what == 'fname') {
                        if(InputValue == '') {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">여권상의 영문 이름을 입력해 주세요.</p>');
                            }
                        }
                    } 
                }, // focus: function()
                    
                keyup: function(e) {
                    // 입력했을 때의 input 태그의 value 값
                    let InputValue = $(this).val();

                    // input 태그의 name 값
                    let InputName = $(this).attr('name');
                    // 해당 name 값의 길이
                    let strlength = InputName.length;
                    // 해당 input 태그의 끝부분부터 _ index 위치 
                    let underline = InputName.lastIndexOf('_',strlength);
                    // _ 다음 부터의 단어
                    let what = InputName.substring(underline+1, strlength);

                    console.log(what);

                    // <p class="error_message">여권상의 영문 이름을 입력해 주세요.</p>
                    if(what == 'name') {    // 이름
                        if(!isCorrect(InputValue)) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">2~5자 한글성명만 입력해주세요</p>');
                            }
                            validCheck = false;
                        } else {
                            $(this).siblings().remove();
                            validCheck = true;
                        }
                    }else if(what == 'birth') { // 생년월일
                        if(!isBirthday(InputValue)) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">생년월일 형식에 맞게 입력해 주세요.(ex. 1999-12-31)</p>');
                            }
                            validCheck = false;
                        } else {
                            $(this).siblings().remove();
                            validCheck = true;
                        }
                    }else if(what == 'lname') { // 영문 성
                        // 소문자일 때는 대문자로, 영문자가 아닐 때는 그 문자만 지워야함. ㅅㅂ
                        let strKey = e.key+"";
                        let strCode = e.keyCode

                        // 입력한 key 의 값이 영문자가 아니면 에러 태그 추가
                        if(!(strCode >= 65 && strCode <= 90)) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">여권상의 영문 성을 입력해 주세요.</p>');
                            }
                        }

                        let str = InputValue+"";

                        // 배열로 변환
                        let strArr = [...str];
                        
                        // 유효성 검사 마친 문자열 값 전달
                        $(this).val(replaceEG(strArr));
                    
                        // 최종적으로 적힌 값에 대한 유효성 검사
                        if(!isCorrectEg($(this).val())) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">여권상의 영문 성을 입력해 주세요.</p>');
                            }
                            validCheck = false;
                        } else {
                            $(this).siblings().remove();
                            validCheck = true;
                        }
                    }else if(what == 'fname') { // 영문 이름
                        // 소문자일 때는 대문자로, 영문자가 아닐 때는 그 문자만 지워야함. ㅅㅂ
                        let strKey = e.key+"";
                        let strCode = e.keyCode

                        // 입력한 key 의 값이 영문자가 아니면 에러 태그 추가
                        if(!(strCode >= 65 && strCode <= 90)) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">여권상의 영문 이름을 입력해 주세요.</p>');
                            }
                        }

                        let str = InputValue+"";

                        // 배열로 변환
                        let strArr = [...str];
                        
                        // 유효성 검사 마친 문자열 값 전달
                        $(this).val(replaceEG(strArr));
                    
                        // 최종적으로 적힌 값에 대한 유효성 검사
                        if(!isCorrectEg($(this).val())) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">여권상의 영문 이름을 입력해 주세요.</p>');
                            }
                            validCheck = false;
                        } else {
                            $(this).siblings().remove();
                            validCheck = true;
                        }

                    }else if(what == 'email') { // 이메일
                        if(!isEmail(InputValue)) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">이메일 형식에 맞게 입력해 주세요.(ex. Empty@naver.com)</p>');
                            }
                            validCheck = false;
                        } else {
                            $(this).siblings().remove();
                            validCheck = true;
                        }
                    }else if(what == 'tel') {   // 휴대폰 번호
                        let strKey = e.key+"";
                        let strCode = e.keyCode;

                        if(!(strCode >= 48 && strCode <= 57)) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">휴대폰 번호 형식에 맞게 입력해 주세요.(ex. 01012345678)</p>');
                            }
                        }

                        let str = InputValue+"";

                        let strArr = [...str];

                        $(this).val(replaceNum(strArr));

                        // 최종적으로 적힌 값에 대한 유효성 검사
                        if(!isPhoneNumber($(this).val())) {
                            if($(this).siblings().length == 0) {
                                $(this).after('<p class="error_message">휴대폰 번호 형식에 맞게 입력해 주세요.(ex. 01012345678)</p>');
                            }
                            validCheck = false;
                        } else {
                            $(this).siblings().remove();
                            validCheck = true;
                        }
                    }
                } // keyup: function(e)
            }); // $('.input_keyword').on()

            // 성별 select란 선택 시 만약 error 메세지 있으면 없애는 부분
            $('.select_gender').on('change', function() {
            	if($(this).val() != '') {
                	$(this).parents('.genderDiv').siblings().remove();
            	}
            })
            
            /* 처음 회원 등급이 적용된 가격 */
            let lastPrice = Number('${priceWithGd }');
            
            /* 쿠폰 select 박스 선택 시 */
            $('#cp_list').on('change', function() {
            	console.log($(this).val());
            	/* 쿠폰 할인 가격 표시 쪽에 쿠폰에 따른 할인 가격 넣어주기 */
            	$('.cp_discount').text('');
            	let selectCpPrice = Number($(this).val())
            	$('.cp_discount').text(selectCpPrice.toLocaleString('ko-KR'));
            	
            	$('.price').text('');
            	
            	// 진짜 들고갈 가격 넣어주기
            	let realPrice = lastPrice - selectCpPrice;
            	// , 콤마 붙인 가격
            	let realPriceToLocale = realPrice.toLocaleString('ko-KR');
            	$('.price').html(realPriceToLocale+'<span>원</span>');

            	// hidden 태그에 쿠폰 적용 시의 값 및 넣은 쿠폰의 id 넣어주기
            	$('.price').attr('data-realPrice', realPrice);
            	$('input[name="pkage_rv_tprice"]').val(realPrice);
            	$('input[name="coupon_id"]').val($(this).find('option:selected').attr("data-cpid"));
            })

            // 다음 단계 버튼 클릭 시
            $('#nextBtn').on('click', function() {
                // 유효성 검사를 통과하면 계속 true 인 상태임.
                let lastCheck = true;
            
                // input 태그들 검사
                // index : 인덱스, item : 각각의 객체
                $('.input_keyword').each(function(index, item) {
                    if($(item).val() == '') {
                        $(item).focus();
                        lastCheck = false;
                        return false;
                    }else if($(item).siblings().length != 0) {
                        $(item).focus();
                        lastCheck = false;
                        return false;
                    }
                });

                if(!lastCheck) return false;

                // 성별 input 태그들 검사
                let totalGenIpCnt = 0;
                let genIpCnt = 0;

                // 성별 input 태그를 품고 있는 div
                $('.genderDiv').each(function(index, item) {
                    // 각 div 에서 성별 select을 찾아 다시 반복
                    $(item).find('.select_gender').each(function(index, item2){
                        // 성별이 selected된 것이 있으면 0 또는 1(남자 또는 여자)면 genIpCnt 증가
                        if($(item2).find('option:selected').val() == "0" || $(item2).find('option:selected').val() == "1") {
                            genIpCnt++;
                        	console.log(genIpCnt);
                        }
                    });

                    // 체크된 것이 하나도 없으면 에러 메세지 추가 있으면 에러메세지 삭제
                    if(genIpCnt != 1) {
                        if($(item).siblings().length == 0) {
                            /* $(item).after('<p class="error_message">성별을 선택해주세요.</p>');  */
                            alert("성별을 선택해주세요.");
                        } 
                        $(item).find('.select_gender').focus();
                        lastCheck = false;
                        genIpCnt=0; // 다른 div 쪽 검사하기 위한 초기화
                        return false;
                    } else {
                        $(item).siblings().remove();
                    }
                    genIpCnt=0; // 다른 div 쪽 검사하기 위한 초기화
                });

                console.log(lastCheck+"?");
                
                if(lastCheck) {
                	// 진짜 들고갈 가격 넣어주기 (쿠폰 까지 적용 된 가격 / 쿠폰이 적용 되지 않으면 서버에서 들고온 가격)
                    alert($('.price').attr('data-realPrice'));
                }
            });
        }); // $(function() {});

    </script>
</body>
</html>