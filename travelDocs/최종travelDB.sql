-- 1차수정
/*
패키지 관련 테이블 수정했습니다. 
1. comment 추가 및, 패키지 상세 테이블 성인 가격(pkage_dt_Aprice int) 추가,
2. 패키지 이미지, 관광지 이미지 각 테이블의 칼럼 순서 (auto_increment 걸린 칼럼을 첫번째로 변경)
3. 여행 일정 테이블과 여행일정_관광지 테이블의 pkage_dt_id 에 걸린 auto_increment 제거
4. 여행일정_관광지 테이블의 여행 순서 컬럼(pkage_s_d_order int) 추가
*/

-- 2차 수정
/*
1. hotel pk auto_increment 삭제, varchar type으로 변경
2. 찜 테이블의 참조 아이디 unique값으로 변경
3. room 테이블의 room_date 컬럼 삭제
4. room 테이블의 room_name type byte수 변경
5. room 테이블의 컬럼 오타 수정

*/

-- 3차 수정
/*
항공 관련 테이블 수정했습니다. 
1. 공항테이블을 없애고 출발공항, 도착공항 테이블로 추가
2. Seat 테이블의 seat_id(auto increment)를 없애고 seat_position(varchar20)으로 변경
3. 비행기 테이블의 인원 컬럼을 없애고 등급별 좌석 컬럼수로 수정
4. 일정테이블에 가격컬럼 Schedule_price 컬럼 추가
*/

-- 4차 수정
/*
티켓, 입장권 이미지 테이블 INSET문 수정했습니다.  (일단은 테스트용이라 데이터 조금만..)
1. [ticket_detail] 티켓코드 숫자 5개로.. (패키지,숙박 따라서)
2. [ticket_img]    티켓 대표 , 상세 이미지 경로 상세 추가
*/

-- 5차 수정
/*
package_detail 테이블 수정했습니다.
1. pkage_dt_startDay (date)  컬럼 추가 
2. pkage_dt_startDay (date)  컬럼 추가

두 컬럼 모두 국내 비행일정이 없는 여행일 경우 출발 날짜, 도착 날짜를 알기 위해 추가 합니다.
*/


-- 6차 수정

/*
1. hotel 테이블 checkin / checkout 컬럼 추가
2. hotel 테이블의 pk컬럼 hotel_id type 다시 int로 수정 ㅠ.ㅜ)/
3. Review 테이블의 rv_real_id type int로 변경
4. hotel_image, room_image : 각 테이블 path 관련 컬럼 1개로 통일 (h_img_path, r_img_path)
*/

-- 7차 수정

/*
1. package_flightSche 테이블 컬럼 명 변경
	pkage_gubun   -->  pkage_flight_gubun
*/


-- 8차 수정

/*

1. room_id --> auto_increment로 변경
2. 11/28 mem_role 컬럼 삭제 --> 11/30 다시 복구
3. hotel_id, pakage_id, ticket_id --> VARCHAR(30) type 변경 (연관 fk관련도 모두 변경완료)
4. 리뷰와 찜 테이블의 구분 컬럼(rv_sort, basket_sort) 삭제
5, 리뷰 테이블 rv_real_id 부분 int -> varchar(30) 변경
6. basket 테이블 basket_ref_id 컬럼 int -> varchar(30 변경)
*/

-- 9차 수정

/*
1. package_detail 테이블 
pkage_dt_startDay, pkage_dt_endDay -> date 에서 datetime 으로 변경
*/

-- 10차 수정

/*
1. air_reservation_pi 테이블 새로 생성후 연결 -> 탑승 인원 정보를 얻기 위해서 
2. reservation 테이블 불필요한 컬럼 삭제 
3. reservation 테이블에 schedule_id를  FK로 설정
*/

-- 11차 수정
/*
1. hotel, package, ticket_detail 테이블의 _score컬럼 삭제
2. ticket_rep_img_path, ticket_detail_img_path type VARCHAR(200)으로 변경
*/

-- 12차 수정
/*
1. hotel_rv_num -> room_cnt로 컬럼명 변경
2. 수용가능 인원 room_per을 room_detail 테이블에서 room테이블로 이동시킴
3. room_detail 에 room_date컬럼 추가
4. hotel_reservation 테이블에서 예약시작일, 종료일 컬럼 삭제 
5. 마지막줄 commit;추가

*/


-- 13차 수정
/* 
1. reservation 테이블 왕복일정을 가져오기위해서 mapping테이블인 Air_FlightSche 테이블 생성
2. reservation 테이블의 schedule_id 컬럼 삭제
*/


-- 14차 수정
/*
1. 이것저것 흩어진 추가구문을 합쳐두었습니다. (1215 최근 검색어 recent_search 테이블/DROP구문까지 추가완료)
2. 티켓 테이블쪽 컬럼명 오류나있던 부분 수정
3. 아래쪽에 있던 기본 INSERT문 삭제 (통합 INSERT문으로 옮겼습니다)
4. foreign key 부분에 전부 on delete cascade 설정 추가
*/


-- 15차 수정
/*
1. hotel_reservation_detail 테이블 추가
2. hotel_reservation_table에서 room_detail_id 컬럼 제거
3. basket_ref_id : unique 속성 제거 (221219)

*/

/* 초기화용 DROP 구문 */

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS payment;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS air_schedule;
DROP TABLE IF EXISTS airline;
DROP TABLE IF EXISTS airplane;
DROP TABLE IF EXISTS start_airport;
DROP TABLE IF EXISTS end_airport;
DROP TABLE IF EXISTS reservation;
DROP TABLE IF EXISTS air_reservation_pi;
DROP TABLE IF EXISTS seat;
DROP TABLE IF EXISTS reservation_seat;
DROP TABLE IF EXISTS package;
DROP TABLE IF EXISTS package_detail;
DROP TABLE IF EXISTS package_image;
DROP TABLE IF EXISTS package_schedule;
DROP TABLE IF EXISTS packageschedule_detail;
DROP TABLE IF EXISTS package_reservation;
DROP TABLE IF EXISTS package_reservation_pi;
DROP TABLE IF EXISTS package_flightsche;
DROP TABLE IF EXISTS package_hotel;
DROP TABLE IF EXISTS attraction;
DROP TABLE IF EXISTS attraction_image;
DROP TABLE IF EXISTS hotel;
DROP TABLE IF EXISTS hotel_option;
DROP TABLE IF EXISTS hotel_reservation;
DROP TABLE IF EXISTS hotel_image;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS room_detail;
DROP TABLE IF EXISTS room_image;
DROP TABLE IF EXISTS ticket_img;
DROP TABLE IF EXISTS ticket_reservation;
DROP TABLE IF EXISTS ticket_detail;
DROP TABLE IF EXISTS basket;
DROP TABLE IF EXISTS search;
DROP TABLE IF EXISTS chat;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS coupon;
DROP TABLE IF EXISTS mem_coupon;
DROP TABLE IF EXISTS membership;
DROP TABLE IF EXISTS mem_membership;
DROP TABLE IF EXISTS notice;
DROP TABLE IF EXISTS Air_FlightSche;
DROP TABLE IF EXISTS recent_search;
DROP TABLE IF EXISTS hotel_reservation_detail;

SET FOREIGN_KEY_CHECKS = 1;

------------------------------------------------------------------------

/* 우선 생성되어야 하는 테이블 */

# 국가 테이블
CREATE TABLE `country` (
	`country_id`	int	NOT NULL	primary key COMMENT '국가ID:  아님',
	`country_name`	varchar(30)	NULL	COMMENT '국가이름'
);

# 도시 테이블
CREATE TABLE `city` (
	`city_id`	int	NOT NULL primary key COMMENT '도시ID',
	`country_id`	int	NOT NULL	COMMENT '국가ID',
	`city_name`	varchar(30)	NULL	COMMENT '도시이름'
);
alter table city add foreign key(country_id) references country(country_id) ON DELETE CASCADE; 

# 멤버 테이블
CREATE TABLE `member` (
	`mem_id`	VARCHAR(30)	NOT NULL primary key, 
	`mem_name`	VARCHAR(20)	NOT NULL,
	`mem_password`	VARCHAR(100)	NOT NULL,
	`mem_email`	VARCHAR(50)	NULL,
	`mem_tel`	VARCHAR(12)	NULL,
	`mem_birthday`	DATE	NULL,
	`mem_create`	DATE	NULL,
    `mem_role`	VARCHAR(12)	NULL
);

------------------------------------------------------------------------

/* 입장권 관련 */

# 입장권 상세
CREATE TABLE ticket_detail(
	ticket_id 		VARCHAR(30)		NOT NULL	primary key COMMENT '티켓 코드',
	city_id   		INT		NOT NULL	COMMENT '도시ID',
	ticket_name	VARCHAR(50)	NOT NULL	COMMENT '입장권명',
	ticket_sales_cnt	INT		COMMENT '누적 판매 개수',
	ticket_location	VARCHAR(100)	NOT NULL	COMMENT '위치',
	ticket_due_date	DATE		COMMENT '사용기한일',
	ticket_adult_price	INT	NOT NULL	COMMENT '성인 가격',
	ticket_child_price	INT	  			COMMENT '아동 가격'
);
alter table ticket_detail add foreign key(city_id) references city(city_id) ON DELETE CASCADE;

# 입장권 이미지
CREATE TABLE `ticket_img` (
	`ticket_img_id`	INT	NOT NULL	auto_increment COMMENT 'ticket_img_id',
	`ticket_id` VARCHAR(30)	NOT NULL	COMMENT '티켓 코드',
	`ticket_rep_img_path`	VARCHAR(200)	NOT NULL	COMMENT '대표 이미지 경로',
	`ticket_detail_img_path`	VARCHAR(200)	NOT NULL	COMMENT '상세 이미지 경로',
    primary key(ticket_img_id, ticket_id)
);
alter table ticket_img add foreign key(ticket_id) references ticket_detail(ticket_id) ON DELETE CASCADE;

# 입장권 예매결제
CREATE TABLE `ticket_reservation` (
	`ticket_order_id`	INT(15)	NOT NULL	auto_increment COMMENT '티켓 주문번호',
	`ticket_id` VARCHAR(30)	NOT NULL	COMMENT '티켓 코드',
    `mem_id`	VARCHAR(30)	NOT NULL	COMMENT '회원아이디',
	`ticket_name`	VARCHAR(50)	NULL	COMMENT '입장권명',
	`ticket_puchase_date`	DATETIME	NOT NULL	COMMENT '주문일자',
	`ticket_admission_date`	DATE	NOT NULL	COMMENT '사용일',
	`ticket_adult_per`	INT(2)	NOT NULL	COMMENT '성인 인원',
	`ticket_child_per`	INT(2)	NULL	COMMENT '아동 인원',
	`ticket_total_price`	INT(6)	NOT NULL	COMMENT '총 금액',
	primary key(ticket_order_id, ticket_id)
);
alter table ticket_reservation add foreign key(ticket_id) references ticket_detail(ticket_id) ON DELETE CASCADE;
alter table ticket_reservation add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;

------------------------------------------------------------------------

/* 숙박 관련 */

# 숙박업체
CREATE TABLE `hotel` (
	`hotel_id` VARCHAR(30)	NOT NULL	primary key  COMMENT 'seq 아님',
	`city_id`	int	NOT NULL	COMMENT '도시ID',
	`hotel_kor`	VARCHAR(50)	NOT NULL,
	`hotel_eng`	VARCHAR(50)	NULL,
	`hotel_loc`	VARCHAR(200)	NOT NULL,
	`hotel_type`	VARCHAR(20)	NOT NULL,
	`hotel_grade`	INT	NULL,
	`hotel_tel`	VARCHAR(30)	NULL,
	`room_cnt`	INT	NULL,
    `checkin` TIME NULL,
    `checkout` TIME NULL
);
alter table hotel add foreign key(city_id) references city(city_id) ON DELETE CASCADE;
# 숙박업체옵션
CREATE TABLE `hotel_option` (
	`option_id`	INT	NOT NULL primary key auto_increment ,
	`hotel_id` VARCHAR(30)	NOT NULL,
	`hotel_option`	VARCHAR(30)	NULL,
	`option_gubun`	VARCHAR(10)	NULL,
	`hotel_exist`	VARCHAR(5)	NULL
);
alter table hotel_option add foreign key(hotel_id) references hotel(hotel_id) ON DELETE CASCADE;

# 객실정보
CREATE TABLE `room` (
	`room_id`	INT	NOT NULL primary key auto_increment COMMENT 'seq아님',
	`hotel_id` VARCHAR(30)	NOT NULL,
	`room_type`	VARCHAR(20)	NULL,
    `room_per`	INT	NULL,
	`room_name`	VARCHAR(500)	NULL
);
alter table room add foreign key(hotel_id) references hotel(hotel_id) ON DELETE CASCADE;

# 객실정보상세
CREATE TABLE `room_detail` (
	`room_detail_id`	INT	NOT NULL primary key auto_increment,
	`room_id`	INT	NOT NULL,
    `room_date` DATE NULL,
	`room_price`	INT	NOT NULL	COMMENT '성수기/주말에 따라 가격 변동 고려',
	`room_rev`	VARCHAR(20)	NULL	COMMENT 'Y/N'
);
alter table room_detail add foreign key(room_id) references room(room_id) ON DELETE CASCADE;

# 숙박예약결제
CREATE TABLE `hotel_reservation` (
	`h_rev_id`	INT	NOT NULL	primary key auto_increment ,
	`mem_id`	VARCHAR(30)	NOT NULL,
	`rev_stat`	VARCHAR(20)	NULL,
	`rev_per`	INT	NULL,
	`rev_date`	DATE	NULL,
	`rev_tot_price`	INT	NULL
);
alter table hotel_reservation add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;


# 숙박예약결제 상세
CREATE TABLE `hotel_reservation_detail` (
	`h_rev_detail_id`	INT	NOT NULL	primary key auto_increment ,
    `h_rev_id`			INT NOT NULL,
    `room_detail_id`	INT NOT NULL
    );

alter table hotel_reservation_detail add foreign key(room_detail_id) references room_detail(room_detail_id) ON DELETE CASCADE;
alter table hotel_reservation_detail add foreign key(h_rev_id) references hotel_reservation(h_rev_id) ON DELETE CASCADE;

# 숙박업체 대표사진
CREATE TABLE `hotel_image` (
	`h_img_id`	INT	NOT NULL auto_increment,
	`hotel_id` VARCHAR(30)	NOT NULL,
	`h_img_path`	VARCHAR(300)	NULL,
    primary key(h_img_id, hotel_id)
);
alter table hotel_image add foreign key(hotel_id) references hotel(hotel_id) ON DELETE CASCADE;

# 객실 사진
CREATE TABLE `room_image` (
	`r_img_id`	INT	NOT NULL auto_increment,
	`room_id`	INT	NOT NULL,
	`r_img_path`	VARCHAR(300)	NULL,
    primary key(r_img_id, room_id)
);
alter table room_image add foreign key(room_id) references room(room_id) ON DELETE CASCADE;

------------------------------------------------------------------------

/* 항공 관련 */

# 항공
CREATE TABLE `Start_Airport` (
	`Start_Airport_name`	VARCHAR(50)	NOT NULL primary key ,
	`country_id`	int	NOT NULL,
	`city_id`	int	NOT NULL
);

CREATE TABLE `End_Airport` (
	`End_Airport_name`	VARCHAR(50)	NOT NULL primary key ,
	`country_id`	int	NOT NULL,
	`city_id`	int	NOT NULL
);


alter table Start_Airport add foreign key(country_id) references country(country_id) ON DELETE CASCADE;
alter table Start_Airport add foreign key(city_id) references city(city_id) ON DELETE CASCADE;
alter table End_Airport add foreign key(country_id) references country(country_id) ON DELETE CASCADE;
alter table End_Airport add foreign key(city_id) references city(city_id) ON DELETE CASCADE;

# 항공사
CREATE TABLE `Airline` (
	`Air_num`	INT	NOT NULL primary key,
	`Air_code`	INT	NULL,
	`Air_name`	varchar(200)	NULL,
	`Air_picture`	VARCHAR(1000)	NULL
);

# 비행기
CREATE TABLE `Airplane` (
	`Airplane_name`	VARCHAR(30) NOT NULL primary key,
	`general_seat`	INT	NULL,
	`business_seat`	INT	NULL,
	`first_seat`		INT	NULL
);

# 좌석
CREATE TABLE `Seat` (
	`Seat_position`	VARCHAR(20)	NOT NULL primary key,
	`Seat_grade`	INT	NULL,
	`Seat_name`	VARCHAR(20)	NULL,
	`Plus_Seat_price`	INT	NULL
);

# 예약좌석
CREATE TABLE `Reservation_Seat` (
	`Reservation_id`	INT	NOT NULL  auto_increment ,
	`Airplane_name`	VARCHAR(30)	NOT NULL,
	`Seat_position`	VARCHAR(20)	NOT NULL,
	`Seated_status`	INT	NULL,
    primary key(Reservation_id, Airplane_name, Seat_position)
);
alter table Reservation_Seat add foreign key(airplane_name) references airplane(airplane_name) ON DELETE CASCADE;
alter table Reservation_Seat add foreign key(Seat_position) references seat(Seat_position) ON DELETE CASCADE;

# 일정
CREATE TABLE `Air_Schedule` (
	`Schedule_id`	INT	NOT NULL  primary key auto_increment,
	`Air_num`		INT	NOT NULL,
    `Airplane_name`		VARCHAR(30)	NOT NULL,
	`Start_Airport_name`	VARCHAR(50)	NOT NULL,
	`End_Airport_name`	VARCHAR(50)	NOT NULL,
	`Start_time`	DATETIME	NULL,
	`End_time`	DATETIME	NULL,
	`Schedule_price`		INT	NULL,
	`general_res_count`	INT	NULL	DEFAULT 0,
	`business_res_count`	INT	NULL	DEFAULT 0,
	`first_res_count`	INT	NULL	DEFAULT 0
);

alter table Air_Schedule add foreign key(air_num) references airline(air_num) ON DELETE CASCADE;
alter table Air_Schedule add foreign key(airplane_name) references airplane(airplane_name) ON DELETE CASCADE;
alter table Air_Schedule add foreign key(start_airport_name) references start_airport(start_airport_name) ON DELETE CASCADE;
alter table Air_Schedule add foreign key(end_airport_name) references end_airport(end_airport_name) ON DELETE CASCADE;

# 항공예약결제
CREATE TABLE `Reservation` (
	`Reservation_id`	INT	NOT NULL  primary key auto_increment ,
	`mem_id`	VARCHAR(30)	NOT NULL,
	`Seat_position`	VARCHAR(20)	NOT NULL,
	`Reservation_date`	DATE	NULL,
	`Reservation_price`	INT	NULL
);
alter table Reservation add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;
alter table Reservation add foreign key(seat_position) references seat(seat_position) ON DELETE CASCADE;

# 비행일정(두개이상 schedule_id 를 가져오기위해서)
CREATE TABLE `Air_FlightSche` (
	`Schedule_id`	INT	NOT NULL  auto_increment ,
	`Reservation_id`	INT	NOT NULL,
	`air_gubun`	int 	Null,
	primary key(Schedule_id, Reservation_id)
	
);

alter table Air_FlightSche add foreign key(Schedule_id) references Air_Schedule(Schedule_id) ON DELETE CASCADE;
alter table Air_FlightSche add foreign key(Reservation_id) references Reservation(Reservation_id) ON DELETE CASCADE;

CREATE TABLE `air_reservation_pi` (
	`air_pi_id`		int	NOT NULL primary key auto_increment	COMMENT '인원정보ID',
	`reservation_id`	int   	NOT NULL COMMENT '예매번호', 
	`air_pi_name`	varchar(15)	NULL	COMMENT '한글성명',
	`air_pi_birth`	Date	NULL	COMMENT '생년월일',
	`air_pi_gen`	int	NULL	COMMENT '0:남자,1:여자',
	`air_pi_lname`	varchar(30)	NULL	COMMENT '영문성',
	`air_pi_fname`	varchar(30)	NULL	COMMENT '영문이름',
	`air_pi_tel`		int	NULL	COMMENT '휴대폰번호',
	`air_pi_email`	varchar(100)	NULL	COMMENT '이메일',
	`air_passport`	varchar(30)	NULL
);

alter table air_reservation_pi add foreign key(reservation_id) references Reservation(reservation_id) ON DELETE CASCADE;




------------------------------------------------------------------------

/* 패키지 관련 */

-- 관광지
create table attraction (
	attr_id int COMMENT '관광지ID',
    city_id int COMMENT '도시ID',
    attr_name varchar(100) COMMENT '관광지이름',
    attr_ename varchar(100) COMMENT '관광지영어이름',
    attr_info varchar(1000) COMMENT '관광지정보',
    primary key(attr_id)
) ;

alter table attraction add foreign key(city_id) references city(city_id) ON DELETE CASCADE;

-- 패키지
create table package (
	pkage_id varchar(30) COMMENT '패키지ID',
    city_id int COMMENT '도시ID',
    pkage_name varchar(1000) COMMENT '패키지이름',
    pkage_info varchar(1000) COMMENT '패키지정보',
    pkage_gubun int COMMENT '0:출발 1:도착',
    pkage_soldCnt int COMMENT '판매개수',
    primary key(pkage_id)
) ;

alter table package add foreign key(city_id) references city(city_id) ON DELETE CASCADE;

-- 패키지 상세
create table package_detail (
	pkage_dt_id int auto_increment COMMENT '패키지상세ID',
    pkage_id varchar(30) COMMENT '패키지ID',
    pkage_dt_name varchar(1000) COMMENT '패키지상세이름',
    pkage_dt_thema varchar(100) COMMENT '테마',
    pkage_dt_Aprice int COMMENT '성인가격',
    pkage_dt_Cprice int COMMENT '아동가격',
    pkage_dt_cnt int COMMENT '패키지인원',
    pkage_dt_Mcnt int COMMENT '패키지최소인원',
    pkage_dt_Rcnt int COMMENT '패키지예약인원',
    pkage_dt_Gname varchar(15) COMMENT '가이드이름',
    pkage_dt_meet varchar(100) COMMENT '사전미팅장소',
    pkage_dt_meetDate datetime COMMENT '사전미팅일시',
    pkage_dt_startDay datetime COMMENT '일정시작날짜',
    pkage_dt_endDay datetime COMMENT '일정종료날짜',
    primary key(pkage_dt_id)
) ;

alter table package_detail add foreign key(pkage_id) references package(pkage_id) ON DELETE CASCADE;

-- 여행일정
create table package_schedule (
	pkage_dt_id int COMMENT '패키지상세ID',
    pkage_sche_day int COMMENT '여행일차',
    pkage_sche_trans varchar(50) COMMENT '이동수단',
    pkage_sche_b varchar(50) COMMENT '조식',
    pkage_sche_l varchar(50) COMMENT '중식',
    pkage_sche_d varchar(50) COMMENT '석식',
    primary key(pkage_dt_id, pkage_sche_day)
) ;

alter table package_schedule add foreign key(pkage_dt_id) references package_detail(pkage_dt_id) ON DELETE CASCADE;

-- 여행일정 관광지
create table packageSchedule_detail (
	pkage_dt_id int COMMENT '패키지상세ID',
    pkage_sche_day int COMMENT '여행일차',
    attr_id int COMMENT '관광지ID',
    pkage_s_d_order int COMMENT '순서',
    primary key(pkage_dt_id, pkage_sche_day, attr_id)
);

alter table packageSchedule_detail add foreign key(pkage_dt_id, pkage_sche_day) references package_schedule(pkage_dt_id, pkage_sche_day) ON DELETE CASCADE;
alter table packageSchedule_detail add foreign key(attr_id) references attraction(attr_id) ON DELETE CASCADE;

# 관광지 이미지
CREATE TABLE `attraction_image` (
	`attr_Img_code`	int	auto_increment	COMMENT '이미지ID',
	`attr_id`	int	NOT NULL	COMMENT '관광지ID',
	`attr_Img_path`	varchar(2000)	NULL	COMMENT '이미지경로',
    primary key(attr_Img_code, attr_id)
);
alter table attraction_image add foreign key(attr_id) references attraction(attr_id) ON DELETE CASCADE;

# 패키지 이미지
CREATE TABLE `package_image` (
	`pkage_Img_id`	int auto_increment	COMMENT '이미지ID',
	`pkage_id` varchar(30)	NOT NULL	COMMENT '패키지ID',
	`pkage_Img_path`	varchar(2000)	NULL	COMMENT '이미지경로',
    primary key(pkage_Img_id, pkage_id)
);
alter table package_image add foreign key(pkage_id) references package(pkage_id) ON DELETE CASCADE;

# 패키지 숙박
CREATE TABLE `package_hotel` (
	`pkage_dt_id`	int	NOT NULL	COMMENT '패키지상세ID',
	`hotel_id` VARCHAR(30)	NOT NULL,
    primary key(pkage_dt_id, hotel_id)
);
alter table package_hotel add foreign key(pkage_dt_id) references package_detail(pkage_dt_id) ON DELETE CASCADE;
alter table package_hotel add foreign key(hotel_id) references hotel(hotel_id) ON DELETE CASCADE;

# 패키지 비행 일정
CREATE TABLE `package_flightSche` (
	`pkage_dt_id`	int	NOT NULL	COMMENT '패키지상세ID',
	`Schedule_id`	INT	NOT NULL,
	`pkage_flight_gubun`	int	NULL	COMMENT '0:출발,1:도착',
    primary key(pkage_dt_id, Schedule_id)
);
alter table package_flightSche add foreign key(pkage_dt_id) references package_detail(pkage_dt_id) ON DELETE CASCADE;
alter table package_flightSche add foreign key(Schedule_id) references air_schedule(Schedule_id) ON DELETE CASCADE;

# 패키지 예약
CREATE TABLE `package_reservation` (
	`pkage_rv_id`	int	NOT NULL	primary key	auto_increment COMMENT '패키지예약ID',
	`pkage_dt_id`	int	NOT NULL	COMMENT '패키지상세ID',
	`mem_id`	VARCHAR(30)	NOT NULL	COMMENT '아이디',
	`pkage_rv_Acnt`	int	NULL	COMMENT '성인인원',
	`pkage_rv_Ccnt`	int	NULL	COMMENT '아동인원',
	`pkage_rv_tprice`	int	NULL	COMMENT '총 가격',
	`pkage_rv_date`	DateTime	NULL	COMMENT '예약일자',
	`pkage_rv_status`	int	NULL	DEFAULT 0	COMMENT '예약상태(0:예약전,1:예약완료)'
);
alter table package_reservation add foreign key(pkage_dt_id) references package_detail(pkage_dt_id) ON DELETE CASCADE;
alter table package_reservation add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;

# 패키지 예약 인원 정보
CREATE TABLE `package_reservation_pi` (
	`pkage_pi_id`	int	NOT NULL	primary key auto_increment COMMENT '인원정보ID',
	`pkage_rv_id`	int	NOT NULL	COMMENT '패키지예약ID',
	`pkage_pi_name`	varchar(15)	NULL	COMMENT '한글성명',
	`pkage_pi_birth`	Date	NULL	COMMENT '생년월일',
	`pkage_pi_gen`	int	NULL	COMMENT '0:남자,1:여자',
	`pkage_pi_lname`	varchar(30)	NULL	COMMENT '영문성',
	`pkage_pi_fname`	varchar(30)	NULL	COMMENT '영문이름',
	`pkage_pi_tel`	int	NULL	COMMENT '휴대폰번호',
	`pkage_pi_email`	varchar(100)	NULL	COMMENT '이메일'
);
alter table package_reservation_pi add foreign key(pkage_rv_id) references package_reservation(pkage_rv_id) ON DELETE CASCADE;


------------------------------------------------------------------------

/* 리뷰, 검색, 찜, 채팅 관련 */

# 리뷰
CREATE TABLE `review` (
	`rv_id`	INT	NOT NULL  primary key auto_increment,
	`mem_id`	VARCHAR(30)	NOT NULL,
	`rv_rating`	DECIMAL(7,2)	NULL,
	`rv_contents`	VARCHAR(500)	NOT NULL,
	`rv_date`	DATE	NOT NULL,
	`rv_real_id`	varchar(30)		NULL	COMMENT '이 자리에 각 상품 고유 ID값이 들어옴'
);
alter table review add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;

# 찜 테이블
CREATE TABLE `basket` (
	`basket_id`	INT	NOT NULL  auto_increment,
	`mem_id`	VARCHAR(30)	NOT NULL,
	`basket_ref_id`	varchar(30)	NOT NULL COMMENT '숙박, 패키지, 입장권의 ID',
    primary key (basket_id, mem_id)
);
alter table basket add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;

# 인기검색어
CREATE TABLE `Search` (
	`search_word`	VARCHAR(500)	NOT NULL primary key,
	`search_count`	INT	NOT NULL,
	`search_time`	DATETIME	NOT NULL
);

# 채팅
CREATE TABLE `chat` (
	`mem_id`	VARCHAR(30)	NOT NULL primary key,
	`message`	VARCHAR(200)	NULL,
	`message_time`	DATETIME	NULL
);
alter table chat add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;


------------------------------------------------------------------------

/* 관리자 관련 */

# 공지사항
CREATE TABLE `Notice` (
	`notice_id`	INT	NOT NULL primary key auto_increment ,
	`notice_title`	VARCHAR(50)	NOT NULL,
	`notice_content`	VARCHAR(999)	NOT NULL,
	`notice_writer`	VARCHAR(30)	NOT NULL,
	`notice_write_date`	DATETIME	NOT NULL	DEFAULT current_timestamp,
	`notice_count`	INT	NOT NULL	DEFAULT 0
);

# 쿠폰
CREATE TABLE `coupon` (
	`coupon_id`	INT	NOT NULL	primary key auto_increment	COMMENT '쿠폰 순번',
	`coupon_name`	VARCHAR(50)	NOT NULL	COMMENT '쿠폰이름',
	`coupon_discount`	INT	NOT NULL	COMMENT '할인율',
	`coupon_date`	DATETIME	NOT NULL	DEFAULT current_timestamp	COMMENT '생성일',
	`coupon_quantity`	INT	NOT NULL	COMMENT '발급수량'
);

# 회원쿠폰정보
CREATE TABLE `mem_coupon` (
	`mem_id`	VARCHAR(30)	NOT NULL,
	`coupon_id`	INT	NOT NULL	 	COMMENT '쿠폰 순번',
	`coupon_down`	DATETIME	NOT NULL	DEFAULT current_timestamp	COMMENT '쿠폰다운',
	`coupon_use`	INT	NOT NULL	DEFAULT 0	COMMENT '쿠폰사용여부 사용시1',
	`coupon_limit_date`	DATETIME	NULL	COMMENT '쿠폰 유효기간',
    primary key(mem_id, coupon_id)
);
alter table mem_coupon add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;
alter table mem_coupon add foreign key(coupon_id) references coupon(coupon_id) ON DELETE CASCADE;

# 등급
CREATE TABLE `membership` (
	`membership_id`	INT	NOT NULL  primary key	auto_increment COMMENT '회원등급코드',
	`membership_name`	VARCHAR(30)	NOT NULL	COMMENT '회원등급이름',
	`membership_mile`	INT	NULL	COMMENT '기준마일리지',
	`membership_discount`	INT	NOT NULL
);

# 회원등급
CREATE TABLE `mem_membership` (
	`mem_id`	VARCHAR(30)	NOT NULL,
	`membership_id`	INT	NOT NULL	COMMENT '회원등급코드',
	`mem_mile`	INT	NOT NULL	DEFAULT 0	COMMENT '회원소유마일리지',
    primary key(mem_id, membership_id)
);
alter table mem_membership add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;
alter table mem_membership add foreign key(membership_id) references membership(membership_id) ON DELETE CASCADE;


------------------------------------------------------------------------

# 결제
CREATE TABLE `payment` (
	`payment_id`	INT	NOT NULL  auto_increment 	COMMENT '결제순번',
	`mem_id`	VARCHAR(30)	NOT NULL,
	`Reservation_id`	INT	NULL,
	`h_rev_id`	INT	NULL,
	`pkage_rv_id`	int	NULL	COMMENT '패키지예약ID',
	`ticket_order_id`	int	NULL,
	`ticket_id` VARCHAR(30)	NULL,
	`payment_method`	VARCHAR(50)	NOT NULL	COMMENT '결제종류(카드,가상계좌등)',
    primary key(payment_id, mem_id)
);
alter table payment add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;
alter table payment add foreign key(Reservation_id) references Reservation(Reservation_id) ON DELETE CASCADE;
alter table payment add foreign key(h_rev_id) references hotel_reservation(h_rev_id) ON DELETE CASCADE;
alter table payment add foreign key(pkage_rv_id) references package_reservation(pkage_rv_id) ON DELETE CASCADE;
alter table payment add foreign key(ticket_order_id) references ticket_reservation(ticket_order_id) ON DELETE CASCADE;
alter table payment add foreign key(ticket_id) references ticket_detail(ticket_id) ON DELETE CASCADE;

-- 221208 추가 변경
ALTER TABLE `traveldb`.`payment` 
CHANGE COLUMN `payment_method` `payment_method` VARCHAR(50) NULL COMMENT '결제종류(카드,가상계좌등)' ;

-- 221215 추가 테이블, INSERT
# 최근 검색어
CREATE TABLE recent_search (
   search_word varchar(500) not null,
    mem_id   VARCHAR(30) not null,
    search_time datetime not null,
    primary key(search_word, mem_id)
);
alter table recent_search add foreign key(mem_id) references member(mem_id) ON DELETE CASCADE;