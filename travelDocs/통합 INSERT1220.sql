/* INSERT문 전체 

INSERT 순서 :
국가, 도시코드 - 회원 - 멤버십 등급 - 회원 멤버십 - 쿠폰 - 최근 검색어 - 항공 - 호텔  - 패키지 - 입장권 - 리뷰  

*/

/*삭제 테스트용 계정 delete1 비밀번호 1234 (이 계정으로 등록된 리뷰2개 존재)*/


/*-----------------------------------------------우선 등록 데이터 구분선-------------------------------------------------------*/

/* 국가, 도시코드 */
INSERT INTO COUNTRY VALUES(100, '한국');
INSERT INTO COUNTRY VALUES(200, '일본');
INSERT INTO COUNTRY VALUES(300, '중국');
INSERT INTO COUNTRY VALUES(400, '태국');

INSERT INTO CITY VALUES(110, 100, '인천');
INSERT INTO CITY VALUES(120, 100, '여수');
INSERT INTO CITY VALUES(130, 100, '부산');
INSERT INTO CITY VALUES(140, 100, '제주도');
INSERT INTO CITY VALUES(210, 200, '후쿠오카');
INSERT INTO CITY VALUES(220, 200, '오사카');
INSERT INTO CITY VALUES(310, 300, '베이징');
INSERT INTO CITY VALUES(320, 300, '상하이');
INSERT INTO CITY VALUES(410, 400, '방콕');
INSERT INTO CITY VALUES(420, 400, '파타야');

-- 회원 INSERT문
# 회원 
insert into member values('admin', '관리자', '1234', 'a@gmail.com', 01011111111, '1990-01-01', sysdate(), 'ROLE_ADMIN');
insert into member values('test1', '테스트', '1234', 'aaaa111@naver.com', '01011112222', '1998-01-01', sysdate(), 'ROLE_USER');
insert into member values('test2', '테스트2', '1234', 'aaaa222@naver.com', '01022223333', '2000-01-01', sysdate(), 'ROLE_USER');
insert into member values('delete1', '삭제용', '1234', 'aba222@naver.com', '01042223333', '1995-01-01', sysdate(), 'ROLE_USER');

-- 221205 멤버십 등급 테이블 추가 INSERT 반영함
insert into membership values(1, '브론즈', 5000, 1);
insert into membership values(2, '실버', 20000, 2);
insert into membership values(3, '골드', 50000, 3);
insert into membership values(4, '플레티넘', 100000, 4);
insert into membership values(5, '언랭', 1, 0);

# 회원 멤버십
insert into mem_membership values ('test1', 2, 20000);
insert into mem_membership values ('test2', 1, 5000);
insert into mem_membership values('admin',4,1000000);
insert into mem_membership values('delete1',5,1);

-- 쿠폰 INSERT문
insert into coupon values(null, '5000원 할인쿠폰', 5000, sysdate(), 1);
insert into coupon values(null, '7000원 할인쿠폰', 7000, sysdate(), 100);
insert into coupon values(null, '10000원 할인쿠폰', 10000, sysdate(), 100);
insert into coupon values(null, '15000원 할인쿠폰', 15000, sysdate(), 100);
insert into coupon values(null, '20000원 할인쿠폰', 20000, sysdate(), 100);

insert into notice values(null, '[공지]회원가입','회원가입 방법 안내 합니다','admin', sysdate(),0);
insert into notice values(null, '[공지]상품예약','상품예약 방법 안내 합니다','admin', sysdate(),0);
insert into notice values(null, '[공지]회원탈퇴','회원탈퇴 방법 안내 합니다','admin', sysdate(),0);



-- 221215 추가 테이블, INSERT
# 최근 검색어 INSERT
insert into recent_search values('어바인', 'test1', sysdate());
insert into recent_search values('샌 프란시스코', 'test1', sysdate());
update recent_search set search_time = sysdate() where search_word = '어바인' AND mem_id = 'test1';


/*--------------------------------------------------항공구분선-------------------------------------------------------*/

-- 비행기 insert문

-- 한국 항공
INSERT INTO Airplane VALUES("KOR001",50,30,20); -- 대한항공비행기 앞글자 KOR
INSERT INTO Airplane VALUES("KOR002",50,30,20);
INSERT INTO Airplane VALUES("KOR003",50,30,20); 
INSERT INTO Airplane VALUES("KOR004",50,30,20); 
INSERT INTO Airplane VALUES("KOR005",50,30,20);
INSERT INTO Airplane VALUES("KOR006",50,30,20); 
INSERT INTO Airplane VALUES("KOR007",50,30,20);
INSERT INTO Airplane VALUES("KOR008",50,30,20); 
INSERT INTO Airplane VALUES("KOR009",50,30,20); 
INSERT INTO Airplane VALUES("KOR010",50,30,20);
INSERT INTO Airplane VALUES("KOR011",50,30,20); 
INSERT INTO Airplane VALUES("KOR012",50,30,20);
INSERT INTO Airplane VALUES("KOR013",50,30,20); 
INSERT INTO Airplane VALUES("KOR014",50,30,20); 
INSERT INTO Airplane VALUES("KOR015",50,30,20);  
INSERT INTO Airplane VALUES("KOR016",50,30,20); 
INSERT INTO Airplane VALUES("KOR017",50,30,20);
INSERT INTO Airplane VALUES("KOR018",50,30,20); 
INSERT INTO Airplane VALUES("KOR019",50,30,20); 
INSERT INTO Airplane VALUES("KOR020",50,30,20);
INSERT INTO Airplane VALUES("KOR021",50,30,20);
INSERT INTO Airplane VALUES("KOR022",50,30,20);
INSERT INTO Airplane VALUES("KOR023",50,30,20); 
INSERT INTO Airplane VALUES("KOR024",50,30,20); 
INSERT INTO Airplane VALUES("KOR025",50,30,20);  
INSERT INTO Airplane VALUES("KOR026",50,30,20); 
INSERT INTO Airplane VALUES("KOR027",50,30,20);
INSERT INTO Airplane VALUES("KOR028",50,30,20); 
INSERT INTO Airplane VALUES("KOR029",50,30,20); 
INSERT INTO Airplane VALUES("KOR030",50,30,20);
INSERT INTO Airplane VALUES("KOR031",50,30,20);
INSERT INTO Airplane VALUES("KOR032",50,30,20);
INSERT INTO Airplane VALUES("KOR033",50,30,20); 
INSERT INTO Airplane VALUES("KOR034",50,30,20); 
INSERT INTO Airplane VALUES("KOR035",50,30,20);
INSERT INTO Airplane VALUES("KOR036",50,30,20); 
INSERT INTO Airplane VALUES("KOR037",50,30,20);
INSERT INTO Airplane VALUES("KOR038",50,30,20); 
INSERT INTO Airplane VALUES("KOR039",50,30,20); 
INSERT INTO Airplane VALUES("KOR040",50,30,20);

  

INSERT INTO Airplane VALUES("ASI001",50,30,20); -- 아시아나 비행기 앞글자 ASI
INSERT INTO Airplane VALUES("ASI002",50,30,20); 
INSERT INTO Airplane VALUES("ASI003",50,30,20); 
INSERT INTO Airplane VALUES("ASI004",50,30,20); 
INSERT INTO Airplane VALUES("ASI005",50,30,20);
INSERT INTO Airplane VALUES("ASI006",50,30,20); 
INSERT INTO Airplane VALUES("ASI007",50,30,20);
INSERT INTO Airplane VALUES("ASI008",50,30,20); 
INSERT INTO Airplane VALUES("ASI009",50,30,20); 
INSERT INTO Airplane VALUES("ASI010",50,30,20);
INSERT INTO Airplane VALUES("ASI011",50,30,20); 
INSERT INTO Airplane VALUES("ASI012",50,30,20);
INSERT INTO Airplane VALUES("ASI013",50,30,20); 
INSERT INTO Airplane VALUES("ASI014",50,30,20); 
INSERT INTO Airplane VALUES("ASI015",50,30,20);  
INSERT INTO Airplane VALUES("ASI016",50,30,20); 
INSERT INTO Airplane VALUES("ASI017",50,30,20);
INSERT INTO Airplane VALUES("ASI018",50,30,20); 
INSERT INTO Airplane VALUES("ASI019",50,30,20); 
INSERT INTO Airplane VALUES("ASI020",50,30,20);
INSERT INTO Airplane VALUES("ASI021",50,30,20);
INSERT INTO Airplane VALUES("ASI022",50,30,20);
INSERT INTO Airplane VALUES("ASI023",50,30,20); 
INSERT INTO Airplane VALUES("ASI024",50,30,20); 
INSERT INTO Airplane VALUES("ASI025",50,30,20);  
INSERT INTO Airplane VALUES("ASI026",50,30,20); 
INSERT INTO Airplane VALUES("ASI027",50,30,20);
INSERT INTO Airplane VALUES("ASI028",50,30,20); 
INSERT INTO Airplane VALUES("ASI029",50,30,20); 
INSERT INTO Airplane VALUES("ASI030",50,30,20);
INSERT INTO Airplane VALUES("ASI031",50,30,20);
INSERT INTO Airplane VALUES("ASI032",50,30,20);
INSERT INTO Airplane VALUES("ASI033",50,30,20); 
INSERT INTO Airplane VALUES("ASI034",50,30,20); 
INSERT INTO Airplane VALUES("ASI035",50,30,20);  
INSERT INTO Airplane VALUES("ASI036",50,30,20); 
INSERT INTO Airplane VALUES("ASI037",50,30,20);
INSERT INTO Airplane VALUES("ASI038",50,30,20); 
INSERT INTO Airplane VALUES("ASI039",50,30,20); 
INSERT INTO Airplane VALUES("ASI040",50,30,20);


INSERT INTO Airplane VALUES("JIN001",80,20,0); -- 진에어 비행기 앞글자 JIN
INSERT INTO Airplane VALUES("JIN002",80,20,0); 
INSERT INTO Airplane VALUES("JIN003",80,20,0); 
INSERT INTO Airplane VALUES("JIN004",80,20,0);
INSERT INTO Airplane VALUES("JIN005",80,20,0);
INSERT INTO Airplane VALUES("JIN006",80,20,0); 
INSERT INTO Airplane VALUES("JIN007",80,20,0);
INSERT INTO Airplane VALUES("JIN008",80,20,0); 
INSERT INTO Airplane VALUES("JIN009",80,20,0); 
INSERT INTO Airplane VALUES("JIN010",80,20,0);
INSERT INTO Airplane VALUES("JIN011",80,20,0); 
INSERT INTO Airplane VALUES("JIN012",80,20,0);
INSERT INTO Airplane VALUES("JIN013",80,20,0); 
INSERT INTO Airplane VALUES("JIN014",80,20,0); 
INSERT INTO Airplane VALUES("JIN015",80,20,0);  
INSERT INTO Airplane VALUES("JIN016",80,20,0); 
INSERT INTO Airplane VALUES("JIN017",80,20,0);
INSERT INTO Airplane VALUES("JIN018",80,20,0); 
INSERT INTO Airplane VALUES("JIN019",80,20,0); 
INSERT INTO Airplane VALUES("JIN020",80,20,0);
INSERT INTO Airplane VALUES("JIN021",80,20,0);
INSERT INTO Airplane VALUES("JIN022",80,20,0);
INSERT INTO Airplane VALUES("JIN023",80,20,0); 
INSERT INTO Airplane VALUES("JIN024",80,20,0); 
INSERT INTO Airplane VALUES("JIN025",80,20,0);  
INSERT INTO Airplane VALUES("JIN026",80,20,0); 
INSERT INTO Airplane VALUES("JIN027",80,20,0);
INSERT INTO Airplane VALUES("JIN028",80,20,0); 
INSERT INTO Airplane VALUES("JIN029",80,20,0); 
INSERT INTO Airplane VALUES("JIN030",80,20,0);


INSERT INTO Airplane VALUES("JEJ001",80,20,0); -- 제주항공 비행기 앞글자 JEJ
INSERT INTO Airplane VALUES("JEJ002",80,20,0);
INSERT INTO Airplane VALUES("JEJ003",80,20,0);
INSERT INTO Airplane VALUES("JEJ004",80,20,0); 
INSERT INTO Airplane VALUES("JEJ005",80,20,0);
INSERT INTO Airplane VALUES("JEJ006",80,20,0); 
INSERT INTO Airplane VALUES("JEJ007",80,20,0);
INSERT INTO Airplane VALUES("JEJ008",80,20,0); 
INSERT INTO Airplane VALUES("JEJ009",80,20,0); 
INSERT INTO Airplane VALUES("JEJ010",80,20,0);
INSERT INTO Airplane VALUES("JEJ011",80,20,0); 
INSERT INTO Airplane VALUES("JEJ012",80,20,0);
INSERT INTO Airplane VALUES("JEJ013",80,20,0); 
INSERT INTO Airplane VALUES("JEJ014",80,20,0); 
INSERT INTO Airplane VALUES("JEJ015",80,20,0);  
INSERT INTO Airplane VALUES("JEJ016",80,20,0); 
INSERT INTO Airplane VALUES("JEJ017",80,20,0);
INSERT INTO Airplane VALUES("JEJ018",80,20,0); 
INSERT INTO Airplane VALUES("JEJ019",80,20,0); 
INSERT INTO Airplane VALUES("JEJ020",80,20,0);
INSERT INTO Airplane VALUES("JEJ021",80,20,0);
INSERT INTO Airplane VALUES("JEJ022",80,20,0);
INSERT INTO Airplane VALUES("JEJ023",80,20,0); 
INSERT INTO Airplane VALUES("JEJ024",80,20,0); 
INSERT INTO Airplane VALUES("JEJ025",80,20,0);  
INSERT INTO Airplane VALUES("JEJ026",80,20,0); 
INSERT INTO Airplane VALUES("JEJ027",80,20,0);
INSERT INTO Airplane VALUES("JEJ028",80,20,0); 
INSERT INTO Airplane VALUES("JEJ029",80,20,0); 
INSERT INTO Airplane VALUES("JEJ030",80,20,0);


-- 일본 항공
INSERT INTO Airplane VALUES("JAL001",50,30,20); -- 일본항공비행기 앞글자 JAL
INSERT INTO Airplane VALUES("JAL002",50,30,20);
INSERT INTO Airplane VALUES("JAL003",50,30,20); 
INSERT INTO Airplane VALUES("JAL004",50,30,20); 
INSERT INTO Airplane VALUES("JAL005",50,30,20);
INSERT INTO Airplane VALUES("JAL006",50,30,20); 
INSERT INTO Airplane VALUES("JAL007",50,30,20);
INSERT INTO Airplane VALUES("JAL008",50,30,20); 
INSERT INTO Airplane VALUES("JAL009",50,30,20); 
INSERT INTO Airplane VALUES("JAL010",50,30,20);
INSERT INTO Airplane VALUES("JAL011",50,30,20); 
INSERT INTO Airplane VALUES("JAL012",50,30,20);
INSERT INTO Airplane VALUES("JAL013",50,30,20); 
INSERT INTO Airplane VALUES("JAL014",50,30,20); 
INSERT INTO Airplane VALUES("JAL015",50,30,20);  
INSERT INTO Airplane VALUES("JAL016",50,30,20); 
INSERT INTO Airplane VALUES("JAL017",50,30,20);
INSERT INTO Airplane VALUES("JAL018",50,30,20); 
INSERT INTO Airplane VALUES("JAL019",50,30,20); 
INSERT INTO Airplane VALUES("JAL020",50,30,20);
INSERT INTO Airplane VALUES("JAL021",50,30,20); 
INSERT INTO Airplane VALUES("JAL022",50,30,20);
INSERT INTO Airplane VALUES("JAL023",50,30,20); 
INSERT INTO Airplane VALUES("JAL024",50,30,20); 
INSERT INTO Airplane VALUES("JAL025",50,30,20);  
INSERT INTO Airplane VALUES("JAL026",50,30,20); 
INSERT INTO Airplane VALUES("JAL027",50,30,20);
INSERT INTO Airplane VALUES("JAL028",50,30,20); 
INSERT INTO Airplane VALUES("JAL029",50,30,20); 
INSERT INTO Airplane VALUES("JAL030",50,30,20);


INSERT INTO Airplane VALUES("ANA001",80,20,0); -- 전일본공수비행기 앞글자 ANA
INSERT INTO Airplane VALUES("ANA002",80,20,0);
INSERT INTO Airplane VALUES("ANA003",80,20,0); 
INSERT INTO Airplane VALUES("ANA004",80,20,0); 
INSERT INTO Airplane VALUES("ANA005",80,20,0);
INSERT INTO Airplane VALUES("ANA006",80,20,0); 
INSERT INTO Airplane VALUES("ANA007",80,20,0);
INSERT INTO Airplane VALUES("ANA008",80,20,0); 
INSERT INTO Airplane VALUES("ANA009",80,20,0); 
INSERT INTO Airplane VALUES("ANA010",80,20,0);
INSERT INTO Airplane VALUES("ANA011",80,20,0); 
INSERT INTO Airplane VALUES("ANA012",80,20,0);
INSERT INTO Airplane VALUES("ANA013",80,20,0); 
INSERT INTO Airplane VALUES("ANA014",80,20,0); 
INSERT INTO Airplane VALUES("ANA015",80,20,0);  
INSERT INTO Airplane VALUES("ANA016",80,20,0); 
INSERT INTO Airplane VALUES("ANA017",80,20,0);
INSERT INTO Airplane VALUES("ANA018",80,20,0); 
INSERT INTO Airplane VALUES("ANA019",80,20,0); 
INSERT INTO Airplane VALUES("ANA020",80,20,0);
INSERT INTO Airplane VALUES("ANA021",80,20,0);
INSERT INTO Airplane VALUES("ANA022",80,20,0);
INSERT INTO Airplane VALUES("ANA023",80,20,0); 
INSERT INTO Airplane VALUES("ANA024",80,20,0); 
INSERT INTO Airplane VALUES("ANA025",80,20,0);  
INSERT INTO Airplane VALUES("ANA026",80,20,0); 
INSERT INTO Airplane VALUES("ANA027",80,20,0);
INSERT INTO Airplane VALUES("ANA028",80,20,0); 
INSERT INTO Airplane VALUES("ANA029",80,20,0); 
INSERT INTO Airplane VALUES("ANA030",80,20,0);


-- 중국 항공
INSERT INTO Airplane VALUES("CHE001",80,20,0); -- 동방항공비행기 앞글자 CHE
INSERT INTO Airplane VALUES("CHE002",80,20,0);
INSERT INTO Airplane VALUES("CHE003",80,20,0); 
INSERT INTO Airplane VALUES("CHE004",80,20,0); 
INSERT INTO Airplane VALUES("CHE005",80,20,0);
INSERT INTO Airplane VALUES("CHE006",80,20,0); 
INSERT INTO Airplane VALUES("CHE007",80,20,0);
INSERT INTO Airplane VALUES("CHE008",80,20,0); 
INSERT INTO Airplane VALUES("CHE009",80,20,0); 
INSERT INTO Airplane VALUES("CHE010",80,20,0);
INSERT INTO Airplane VALUES("CHE011",80,20,0); 
INSERT INTO Airplane VALUES("CHE012",80,20,0);
INSERT INTO Airplane VALUES("CHE013",80,20,0); 
INSERT INTO Airplane VALUES("CHE014",80,20,0); 
INSERT INTO Airplane VALUES("CHE015",80,20,0);  
INSERT INTO Airplane VALUES("CHE016",80,20,0); 
INSERT INTO Airplane VALUES("CHE017",80,20,0);
INSERT INTO Airplane VALUES("CHE018",80,20,0); 
INSERT INTO Airplane VALUES("CHE019",80,20,0); 
INSERT INTO Airplane VALUES("CHE020",80,20,0);
INSERT INTO Airplane VALUES("CHE021",80,20,0);
INSERT INTO Airplane VALUES("CHE022",80,20,0);
INSERT INTO Airplane VALUES("CHE023",80,20,0); 
INSERT INTO Airplane VALUES("CHE024",80,20,0); 
INSERT INTO Airplane VALUES("CHE025",80,20,0);  
INSERT INTO Airplane VALUES("CHE026",80,20,0); 
INSERT INTO Airplane VALUES("CHE027",80,20,0);
INSERT INTO Airplane VALUES("CHE028",80,20,0); 
INSERT INTO Airplane VALUES("CHE029",80,20,0); 
INSERT INTO Airplane VALUES("CHE030",80,20,0);


INSERT INTO Airplane VALUES("CHI001",80,20,0); -- 에어차이나항공비행기 앞글자 CHI
INSERT INTO Airplane VALUES("CHI002",80,20,0);
INSERT INTO Airplane VALUES("CHI003",80,20,0); 
INSERT INTO Airplane VALUES("CHI004",80,20,0); 
INSERT INTO Airplane VALUES("CHI005",80,20,0);
INSERT INTO Airplane VALUES("CHI006",80,20,0); 
INSERT INTO Airplane VALUES("CHI007",80,20,0);
INSERT INTO Airplane VALUES("CHI008",80,20,0); 
INSERT INTO Airplane VALUES("CHI009",80,20,0); 
INSERT INTO Airplane VALUES("CHI010",80,20,0);
INSERT INTO Airplane VALUES("CHI011",80,20,0); 
INSERT INTO Airplane VALUES("CHI012",80,20,0);
INSERT INTO Airplane VALUES("CHI013",80,20,0); 
INSERT INTO Airplane VALUES("CHI014",80,20,0); 
INSERT INTO Airplane VALUES("CHI015",80,20,0);  
INSERT INTO Airplane VALUES("CHI016",80,20,0); 
INSERT INTO Airplane VALUES("CHI017",80,20,0);
INSERT INTO Airplane VALUES("CHI018",80,20,0); 
INSERT INTO Airplane VALUES("CHI019",80,20,0); 
INSERT INTO Airplane VALUES("CHI020",80,20,0);
INSERT INTO Airplane VALUES("CHI021",80,20,0); 
INSERT INTO Airplane VALUES("CHI022",80,20,0);
INSERT INTO Airplane VALUES("CHI023",80,20,0); 
INSERT INTO Airplane VALUES("CHI024",80,20,0); 
INSERT INTO Airplane VALUES("CHI025",80,20,0);  
INSERT INTO Airplane VALUES("CHI026",80,20,0); 
INSERT INTO Airplane VALUES("CHI027",80,20,0);
INSERT INTO Airplane VALUES("CHI028",80,20,0); 
INSERT INTO Airplane VALUES("CHI029",80,20,0); 
INSERT INTO Airplane VALUES("CHI030",80,20,0);


-- 태국 항공
INSERT INTO Airplane VALUES("THA001",50,30,20); -- 타이항공 앞글자 THA
INSERT INTO Airplane VALUES("THA002",50,30,20);
INSERT INTO Airplane VALUES("THA003",50,30,20); 
INSERT INTO Airplane VALUES("THA004",50,30,20); 
INSERT INTO Airplane VALUES("THA005",50,30,20);
INSERT INTO Airplane VALUES("THA006",50,30,20); 
INSERT INTO Airplane VALUES("THA007",50,30,20);
INSERT INTO Airplane VALUES("THA008",50,30,20); 
INSERT INTO Airplane VALUES("THA009",50,30,20); 
INSERT INTO Airplane VALUES("THA010",50,30,20);
INSERT INTO Airplane VALUES("THA011",50,30,20); 
INSERT INTO Airplane VALUES("THA012",50,30,20);
INSERT INTO Airplane VALUES("THA013",50,30,20); 
INSERT INTO Airplane VALUES("THA014",50,30,20); 
INSERT INTO Airplane VALUES("THA015",50,30,20);  
INSERT INTO Airplane VALUES("THA016",50,30,20); 
INSERT INTO Airplane VALUES("THA017",50,30,20);
INSERT INTO Airplane VALUES("THA018",50,30,20); 
INSERT INTO Airplane VALUES("THA019",50,30,20); 
INSERT INTO Airplane VALUES("THA020",50,30,20);
INSERT INTO Airplane VALUES("THA021",50,30,20); 
INSERT INTO Airplane VALUES("THA022",50,30,20);
INSERT INTO Airplane VALUES("THA023",50,30,20); 
INSERT INTO Airplane VALUES("THA024",50,30,20); 
INSERT INTO Airplane VALUES("THA025",50,30,20);  
INSERT INTO Airplane VALUES("THA026",50,30,20); 
INSERT INTO Airplane VALUES("THA027",50,30,20);
INSERT INTO Airplane VALUES("THA028",50,30,20); 
INSERT INTO Airplane VALUES("THA029",50,30,20); 
INSERT INTO Airplane VALUES("THA030",50,30,20);


INSERT INTO Airplane VALUES("AAS001",80,20,0); -- 에어아시아항공비행기 앞글자 AAS
INSERT INTO Airplane VALUES("AAS002",80,20,0);
INSERT INTO Airplane VALUES("AAS003",80,20,0); 
INSERT INTO Airplane VALUES("AAS004",80,20,0); 
INSERT INTO Airplane VALUES("AAS005",80,20,0);
INSERT INTO Airplane VALUES("AAS006",80,20,0); 
INSERT INTO Airplane VALUES("AAS007",80,20,0);
INSERT INTO Airplane VALUES("AAS008",80,20,0); 
INSERT INTO Airplane VALUES("AAS009",80,20,0); 
INSERT INTO Airplane VALUES("AAS010",80,20,0);
INSERT INTO Airplane VALUES("AAS011",80,20,0); 
INSERT INTO Airplane VALUES("AAS012",80,20,0);
INSERT INTO Airplane VALUES("AAS013",80,20,0); 
INSERT INTO Airplane VALUES("AAS014",80,20,0); 
INSERT INTO Airplane VALUES("AAS015",80,20,0);  
INSERT INTO Airplane VALUES("AAS016",80,20,0); 
INSERT INTO Airplane VALUES("AAS017",80,20,0);
INSERT INTO Airplane VALUES("AAS018",80,20,0); 
INSERT INTO Airplane VALUES("AAS019",80,20,0); 
INSERT INTO Airplane VALUES("AAS020",80,20,0);
INSERT INTO Airplane VALUES("AAS021",80,20,0);
INSERT INTO Airplane VALUES("AAS022",80,20,0);
INSERT INTO Airplane VALUES("AAS023",80,20,0); 
INSERT INTO Airplane VALUES("AAS024",80,20,0); 
INSERT INTO Airplane VALUES("AAS025",80,20,0);  
INSERT INTO Airplane VALUES("AAS026",80,20,0); 
INSERT INTO Airplane VALUES("AAS027",80,20,0);
INSERT INTO Airplane VALUES("AAS028",80,20,0); 
INSERT INTO Airplane VALUES("AAS029",80,20,0); 
INSERT INTO Airplane VALUES("AAS030",80,20,0);
 

-- 출발공항 INSERT문

-- 한국공항
INSERT INTO Start_Airport VALUES("인천공항",100,110);
INSERT INTO Start_Airport VALUES("여수공항",100,120); 
INSERT INTO Start_Airport VALUES("부산공항",100,130);
INSERT INTO Start_Airport VALUES("제주공항",100,140); 

-- 일본공항
INSERT INTO Start_Airport VALUES("후쿠오카공항",200,210); 
INSERT INTO Start_Airport VALUES("오사카공항",200,220);

-- 중국공항
INSERT INTO Start_Airport VALUES("베이징공항",300,310);
INSERT INTO Start_Airport VALUES("상하이공항",300,320);

-- 태국공항
INSERT INTO Start_Airport VALUES("방콕공항",400,410);
INSERT INTO Start_Airport VALUES("파타야공항",400,420);

-- 도착공항 INSERT문

-- 한국공항
INSERT INTO End_Airport VALUES("인천공항",100,110);
INSERT INTO End_Airport VALUES("여수공항",100,120); 
INSERT INTO End_Airport VALUES("부산공항",100,130);
INSERT INTO End_Airport VALUES("제주공항",100,140); 

-- 일본공항
INSERT INTO End_Airport VALUES("후쿠오카공항",200,210); 
INSERT INTO End_Airport VALUES("오사카공항",200,220);

-- 중국공항
INSERT INTO End_Airport VALUES("베이징공항",300,310);
INSERT INTO End_Airport VALUES("상하이공항",300,320);

-- 태국공항
INSERT INTO End_Airport VALUES("방콕공항",400,410);
INSERT INTO End_Airport VALUES("파타야공항",400,420);


-- 항공사 INSERT문

INSERT INTO Airline VALUES(100,110,"대한항공","/airport/img/airline/korean_air.png");
INSERT INTO Airline VALUES(200,210,"아시아나","/airport/img/airline/asiana_air.jpg");
INSERT INTO Airline VALUES(300,310,"진에어","/airport/img/airline/jin_air.png");
INSERT INTO Airline VALUES(400,410,"제주항공","/airport/img/airline/jeju_air.jpg");
INSERT INTO Airline VALUES(500,510,"일본항공","/airport/img/airline/jal_air.jpg");
INSERT INTO Airline VALUES(600,610,"전일본공수항공","/airport/img/airline/ana_air.png");
INSERT INTO Airline VALUES(700,710,"동방항공","/airport/img/airline/che_air.png");
INSERT INTO Airline VALUES(800,810,"에어차이나","/airport/img/airline/chi_air.jpg");
INSERT INTO Airline VALUES(900,910,"타이항공","/airport/img/airline/tha_air.png");
INSERT INTO Airline VALUES(1000,1010,"에어아시아","/airport/img/airline/aas_air.png");

-- 일정 INSERT문

-- 제주가는비행기(12월20일)
-- 대한항공

INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR001","인천공항","제주공항","2022-12-20 08:30","2022-12-20 09:30",110000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR002","인천공항","제주공항","2022-12-20 08:50","2022-12-20 09:50",130000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR003","인천공항","제주공항","2022-12-20 10:00","2022-12-20 11:00",120000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR004","인천공항","제주공항","2022-12-20 10:30","2022-12-20 11:30",99000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR005","인천공항","제주공항","2022-12-20 10:50","2022-12-20 11:50",120000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI001","인천공항","제주공항","2022-12-20 14:00","2022-12-20 15:00",98000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI002","인천공항","제주공항","2022-12-20 14:50","2022-12-20 15:50",110000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI003","인천공항","제주공항","2022-12-20 15:00","2022-12-20 16:00",125000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI004","인천공항","제주공항","2022-12-20 15:30","2022-12-20 16:30",134000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI005","인천공항","제주공항","2022-12-20 15:50","2022-12-20 16:50",100000);

-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN001","인천공항","제주공항","2022-12-20 09:00","2022-12-20 10:00",78000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN002","인천공항","제주공항","2022-12-20 14:50","2022-12-20 15:50",65000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN003","인천공항","제주공항","2022-12-20 15:00","2022-12-20 16:00",85000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN004","인천공항","제주공항","2022-12-20 15:30","2022-12-20 16:30",77000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN005","인천공항","제주공항","2022-12-20 15:50","2022-12-20 16:50",63000);

-- 제주항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ001","인천공항","제주공항","2022-12-20 17:00","2022-12-20 18:05",64000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ002","인천공항","제주공항","2022-12-20 17:20","2022-12-20 18:20",58000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ003","인천공항","제주공항","2022-12-20 18:00","2022-12-20 19:10",75000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ004","인천공항","제주공항","2022-12-20 19:30","2022-12-20 20:30",82000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ005","인천공항","제주공항","2022-12-20 19:50","2022-12-20 20:50",55000);

-- 제주가는비행기(12월21일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR006","인천공항","제주공항","2022-12-21 08:30","2022-12-21 09:30",110000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR007","인천공항","제주공항","2022-12-21 08:50","2022-12-21 09:50",130000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR008","인천공항","제주공항","2022-12-21 10:00","2022-12-21 11:00",120000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR009","인천공항","제주공항","2022-12-21 10:30","2022-12-21 11:30",99000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR010","인천공항","제주공항","2022-12-21 10:50","2022-12-21 11:50",120000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI006","인천공항","제주공항","2022-12-21 14:00","2022-12-21 15:00",98000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI007","인천공항","제주공항","2022-12-21 14:50","2022-12-21 15:50",110000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI008","인천공항","제주공항","2022-12-21 15:00","2022-12-21 16:00",125000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI009","인천공항","제주공항","2022-12-21 15:30","2022-12-21 16:30",134000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI010","인천공항","제주공항","2022-12-21 15:50","2022-12-21 16:50",100000);

-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN006","인천공항","제주공항","2022-12-21 09:00","2022-12-21 10:00",78000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN007","인천공항","제주공항","2022-12-21 14:50","2022-12-21 15:50",66000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN008","인천공항","제주공항","2022-12-21 15:00","2022-12-21 16:00",75000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN009","인천공항","제주공항","2022-12-21 15:30","2022-12-21 16:30",77000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN010","인천공항","제주공항","2022-12-21 15:50","2022-12-21 16:50",83000);

-- 제주항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ006","인천공항","제주공항","2022-12-21 17:00","2022-12-21 18:05",64000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ007","인천공항","제주공항","2022-12-21 17:20","2022-12-21 18:20",49000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ008","인천공항","제주공항","2022-12-21 18:00","2022-12-21 19:10",75000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ009","인천공항","제주공항","2022-12-21 19:30","2022-12-21 20:30",78000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ010","인천공항","제주공항","2022-12-21 19:50","2022-12-21 20:50",55000);

-- 제주가는비행기(12월22일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR011","인천공항","제주공항","2022-12-22 08:30","2022-12-22 09:30",132000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR012","인천공항","제주공항","2022-12-22 08:50","2022-12-22 09:50",120000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR013","인천공항","제주공항","2022-12-22 10:00","2022-12-22 11:00",11000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR014","인천공항","제주공항","2022-12-22 10:30","2022-12-22 11:30",99500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","인천공항","제주공항","2022-12-22 10:50","2022-12-22 11:50",113000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI011","인천공항","제주공항","2022-12-22 14:00","2022-12-22 15:00",98000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI012","인천공항","제주공항","2022-12-22 14:50","2022-12-22 15:50",106600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI013","인천공항","제주공항","2022-12-22 15:00","2022-12-22 16:00",123000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI014","인천공항","제주공항","2022-12-22 15:30","2022-12-22 16:30",134000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI015","인천공항","제주공항","2022-12-22 15:50","2022-12-22 16:50",102400);

-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN011","인천공항","제주공항","2022-12-22 09:00","2022-12-22 10:00",78000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN012","인천공항","제주공항","2022-12-22 14:50","2022-12-22 15:50",65400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN013","인천공항","제주공항","2022-12-22 15:00","2022-12-22 16:00",85300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN014","인천공항","제주공항","2022-12-22 15:30","2022-12-22 16:30",77200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN015","인천공항","제주공항","2022-12-22 15:50","2022-12-22 16:50",63000);

-- 제주항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ011","인천공항","제주공항","2022-12-22 17:00","2022-12-22 18:05",64000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ012","인천공항","제주공항","2022-12-22 17:20","2022-12-22 18:20",58000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ013","인천공항","제주공항","2022-12-22 18:00","2022-12-22 19:10",75000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ014","인천공항","제주공항","2022-12-22 19:30","2022-12-22 20:30",82000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ015","인천공항","제주공항","2022-12-22 19:50","2022-12-22 20:50",55000);


-- 제주가는비행기(12월23일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","인천공항","제주공항","2022-12-23 08:30","2022-12-23 09:30",132000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","인천공항","제주공항","2022-12-23 08:50","2022-12-23 09:50",120000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","인천공항","제주공항","2022-12-23 10:00","2022-12-23 11:00",11000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","인천공항","제주공항","2022-12-23 10:30","2022-12-23 11:30",99500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","인천공항","제주공항","2022-12-23 10:50","2022-12-23 11:50",113000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI016","인천공항","제주공항","2022-12-23 14:00","2022-12-23 15:00",98000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI017","인천공항","제주공항","2022-12-23 14:50","2022-12-23 15:50",106600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","인천공항","제주공항","2022-12-23 15:00","2022-12-23 16:00",123000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI019","인천공항","제주공항","2022-12-23 15:30","2022-12-23 16:30",134000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","인천공항","제주공항","2022-12-23 15:50","2022-12-23 16:50",102400);

-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN016","인천공항","제주공항","2022-12-23 09:00","2022-12-23 10:00",78000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN017","인천공항","제주공항","2022-12-23 14:50","2022-12-23 15:50",65400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN018","인천공항","제주공항","2022-12-23 15:00","2022-12-23 16:00",85300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN019","인천공항","제주공항","2022-12-23 15:30","2022-12-23 16:30",77200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN020","인천공항","제주공항","2022-12-23 15:50","2022-12-23 16:50",63000);

-- 제주항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ016","인천공항","제주공항","2022-12-23 17:00","2022-12-23 18:05",64000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ017","인천공항","제주공항","2022-12-23 17:20","2022-12-23 18:20",58000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ018","인천공항","제주공항","2022-12-23 18:00","2022-12-23 19:10",75000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ019","인천공항","제주공항","2022-12-23 19:30","2022-12-23 20:30",82000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ020","인천공항","제주공항","2022-12-23 19:50","2022-12-23 20:50",55000);


-- 제주가는비행기(12월24일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","인천공항","제주공항","2022-12-24 08:30","2022-12-24 09:30",132000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR022","인천공항","제주공항","2022-12-24 08:50","2022-12-24 09:50",120000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR023","인천공항","제주공항","2022-12-24 10:00","2022-12-24 11:00",11000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR024","인천공항","제주공항","2022-12-24 10:30","2022-12-24 11:30",99500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","인천공항","제주공항","2022-12-24 10:50","2022-12-24 11:50",113000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","인천공항","제주공항","2022-12-24 14:00","2022-12-24 15:00",98000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI022","인천공항","제주공항","2022-12-24 14:50","2022-12-24 15:50",106600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI023","인천공항","제주공항","2022-12-24 15:00","2022-12-24 16:00",123000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI024","인천공항","제주공항","2022-12-24 15:30","2022-12-24 16:30",134000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI025","인천공항","제주공항","2022-12-24 15:50","2022-12-24 16:50",102400);

-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN021","인천공항","제주공항","2022-12-24 9:00","2022-12-24 10:00",78000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN022","인천공항","제주공항","2022-12-24 14:50","2022-12-24 15:50",65400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN023","인천공항","제주공항","2022-12-24 15:00","2022-12-24 16:00",85300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN024","인천공항","제주공항","2022-12-24 15:30","2022-12-24 16:30",77200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN025","인천공항","제주공항","2022-12-24 15:50","2022-12-24 16:50",63000);

-- 제주항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ021","인천공항","제주공항","2022-12-24 16:00","2022-12-24 17:05",64000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ022","인천공항","제주공항","2022-12-24 17:20","2022-12-24 18:20",58000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ023","인천공항","제주공항","2022-12-24 18:40","2022-12-24 19:40",75000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ024","인천공항","제주공항","2022-12-24 19:30","2022-12-24 20:30",82000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ025","인천공항","제주공항","2022-12-24 19:50","2022-12-24 20:50",55000);

-- 제주가는비행기(12월25일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR026","인천공항","제주공항","2022-12-25 08:30","2022-12-25 09:30",142000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR027","인천공항","제주공항","2022-12-25 08:50","2022-12-25 09:50",134000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR028","인천공항","제주공항","2022-12-25 10:00","2022-12-25 11:00",129000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR029","인천공항","제주공항","2022-12-25 10:30","2022-12-25 11:30",160500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR030","인천공항","제주공항","2022-12-25 10:50","2022-12-25 11:50",132800);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI026","인천공항","제주공항","2022-12-25 14:00","2022-12-25 15:00",138000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI027","인천공항","제주공항","2022-12-25 14:50","2022-12-25 15:50",146600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI028","인천공항","제주공항","2022-12-25 15:00","2022-12-25 16:00",153000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI029","인천공항","제주공항","2022-12-25 15:30","2022-12-25 16:30",144000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI030","인천공항","제주공항","2022-12-25 15:50","2022-12-25 16:50",112400);

-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN026","인천공항","제주공항","2022-12-25 9:00","2022-12-25 10:00",128000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN027","인천공항","제주공항","2022-12-25 14:50","2022-12-25 15:50",99400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN028","인천공항","제주공항","2022-12-25 15:00","2022-12-25 16:00",114600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN029","인천공항","제주공항","2022-12-25 15:30","2022-12-25 16:30",120200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN030","인천공항","제주공항","2022-12-25 15:50","2022-12-25 16:50",103000);

-- 제주항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ026","인천공항","제주공항","2022-12-25 17:00","2022-12-25 18:05",104000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ027","인천공항","제주공항","2022-12-25 17:20","2022-12-25 18:20",118000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ028","인천공항","제주공항","2022-12-25 18:00","2022-12-25 19:10",85000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ029","인천공항","제주공항","2022-12-25 19:30","2022-12-25 20:30",92000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ030","인천공항","제주공항","2022-12-25 19:50","2022-12-25 20:50",85000);

-- 제주가는비행기(12월26일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR001","인천공항","제주공항","2022-12-26 08:30","2022-12-26 09:30",117000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR002","인천공항","제주공항","2022-12-26 08:50","2022-12-26 09:50",120000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR003","인천공항","제주공항","2022-12-26 10:00","2022-12-26 11:00",105000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR004","인천공항","제주공항","2022-12-26 10:30","2022-12-26 11:30",115000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR005","인천공항","제주공항","2022-12-26 10:50","2022-12-26 11:50",123000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI001","인천공항","제주공항","2022-12-26 14:00","2022-12-26 15:00",128000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI002","인천공항","제주공항","2022-12-26 14:50","2022-12-26 15:50",130600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI003","인천공항","제주공항","2022-12-26 15:00","2022-12-26 16:00",133000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI004","인천공항","제주공항","2022-12-26 15:30","2022-12-26 16:30",144000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI005","인천공항","제주공항","2022-12-26 15:50","2022-12-26 16:50",142400);

-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN001","인천공항","제주공항","2022-12-26 9:00","2022-12-26 10:00",78000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN002","인천공항","제주공항","2022-12-26 14:50","2022-12-26 15:50",65400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN003","인천공항","제주공항","2022-12-26 15:00","2022-12-26 16:00",85300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN004","인천공항","제주공항","2022-12-26 15:30","2022-12-26 16:30",77200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN005","인천공항","제주공항","2022-12-26 15:50","2022-12-26 16:50",63000);

-- 제주항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ001","인천공항","제주공항","2022-12-26 17:00","2022-12-26 18:05",64000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ002","인천공항","제주공항","2022-12-26 17:20","2022-12-26 18:20",58000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ003","인천공항","제주공항","2022-12-26 18:00","2022-12-26 19:10",75000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ004","인천공항","제주공항","2022-12-26 19:30","2022-12-26 20:30",82000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ005","인천공항","제주공항","2022-12-26 19:50","2022-12-26 20:50",55000);

-- 제주가는비행기(12월27일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR006","인천공항","제주공항","2022-12-27 08:30","2022-12-27 09:30",102000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR007","인천공항","제주공항","2022-12-27 08:50","2022-12-27 09:50",110000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR008","인천공항","제주공항","2022-12-27 10:00","2022-12-27 11:00",99000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR009","인천공항","제주공항","2022-12-27 10:30","2022-12-27 11:30",109500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR010","인천공항","제주공항","2022-12-27 10:50","2022-12-27 11:50",97000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI006","인천공항","제주공항","2022-12-27 14:00","2022-12-27 15:00",103000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI007","인천공항","제주공항","2022-12-27 14:50","2022-12-27 15:50",114600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI008","인천공항","제주공항","2022-12-27 15:00","2022-12-27 16:00",93000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI009","인천공항","제주공항","2022-12-27 15:30","2022-12-27 16:30",114000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI010","인천공항","제주공항","2022-12-27 15:50","2022-12-27 16:50",102400);

-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN006","인천공항","제주공항","2022-12-27 9:00","2022-12-27 10:00",58000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN007","인천공항","제주공항","2022-12-27 14:50","2022-12-27 15:50",65400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN008","인천공항","제주공항","2022-12-27 15:00","2022-12-27 16:00",55300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN009","인천공항","제주공항","2022-12-27 15:30","2022-12-27 16:30",77200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (300,"JIN010","인천공항","제주공항","2022-12-27 15:50","2022-12-27 16:50",63000);

-- 제주항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ006","인천공항","제주공항","2022-12-27 17:00","2022-12-27 18:05",64000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ007","인천공항","제주공항","2022-12-27 17:20","2022-12-27 18:20",58000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ008","인천공항","제주공항","2022-12-27 18:00","2022-12-27 19:10",75000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ009","인천공항","제주공항","2022-12-27 19:30","2022-12-27 20:30",82000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (400,"JEJ010","인천공항","제주공항","2022-12-27 19:50","2022-12-27 20:50",55000);

-- 일본가는비행기(12월20일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR030","인천공항","오사카공항","2022-12-20 08:30","2022-12-20 9:50",209000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR029","인천공항","오사카공항","2022-12-20 08:50","2022-12-20 09:50",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR028","인천공항","오사카공항","2022-12-20 10:00","2022-12-20 11:00",190000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR027","인천공항","오사카공항","2022-12-20 10:30","2022-12-20 11:30",201500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR026","인천공항","오사카공항","2022-12-20 10:50","2022-12-20 11:50",228000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI030","인천공항","후쿠오카공항","2022-12-20 14:00","2022-12-20 15:00",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI029","인천공항","후쿠오카공항","2022-12-20 14:50","2022-12-20 15:50",194600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI028","인천공항","후쿠오카공항","2022-12-20 15:00","2022-12-20 16:00",203000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI027","인천공항","후쿠오카공항","2022-12-20 15:30","2022-12-20 16:30",194000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI026","인천공항","후쿠오카공항","2022-12-20 15:50","2022-12-20 16:50",192500);

-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL030","인천공항","후쿠오카공항","2022-12-20 10:00","2022-12-20 11:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL029","인천공항","후쿠오카공항","2022-12-20 14:50","2022-12-20 16:20",184600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL028","인천공항","후쿠오카공항","2022-12-20 15:00","2022-12-20 16:35",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL027","인천공항","후쿠오카공항","2022-12-20 15:30","2022-12-20 17:00",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL026","인천공항","후쿠오카공항","2022-12-20 15:50","2022-12-20 17:30",192500);

-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA030","인천공항","오사카공항","2022-12-20 10:00","2022-12-20 11:30",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA029","인천공항","오사카공항","2022-12-20 14:50","2022-12-20 16:40",174600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA028","인천공항","오사카공항","2022-12-20 15:00","2022-12-20 16:45",173000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA027","인천공항","오사카공항","2022-12-20 15:30","2022-12-20 16:50",164000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA026","인천공항","오사카공항","2022-12-20 15:50","2022-12-20 17:40",174200);

-- 일본가는비행기(12월21일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","인천공항","오사카공항","2022-12-21 08:30","2022-12-21 09:30",209000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR024","인천공항","오사카공항","2022-12-21 08:50","2022-12-21 09:50",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR023","인천공항","오사카공항","2022-12-21 10:00","2022-12-21 11:00",190000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR022","인천공항","오사카공항","2022-12-21 10:30","2022-12-21 11:30",201500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","인천공항","오사카공항","2022-12-21 10:50","2022-12-21 11:50",228000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI025","인천공항","후쿠오카공항","2022-12-21 14:00","2022-12-21 15:00",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI024","인천공항","후쿠오카공항","2022-12-21 14:50","2022-12-21 15:50",194600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI023","인천공항","후쿠오카공항","2022-12-21 15:00","2022-12-21 16:00",203000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI022","인천공항","후쿠오카공항","2022-12-21 15:30","2022-12-21 16:30",194000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","인천공항","후쿠오카공항","2022-12-21 15:50","2022-12-21 16:50",192500);

-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL025","인천공항","후쿠오카공항","2022-12-21 10:00","2022-12-21 11:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL024","인천공항","후쿠오카공항","2022-12-21 14:50","2022-12-21 16:20",184600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL023","인천공항","후쿠오카공항","2022-12-21 15:00","2022-12-21 16:35",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL022","인천공항","후쿠오카공항","2022-12-21 15:30","2022-12-21 17:00",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL021","인천공항","후쿠오카공항","2022-12-21 15:50","2022-12-21 17:30",192500);

-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA025","인천공항","오사카공항","2022-12-21 10:00","2022-12-21 11:30",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA024","인천공항","오사카공항","2022-12-21 14:50","2022-12-21 16:40",174600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA023","인천공항","오사카공항","2022-12-21 15:00","2022-12-21 16:45",173000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA022","인천공항","오사카공항","2022-12-21 15:30","2022-12-21 16:50",164000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA021","인천공항","오사카공항","2022-12-21 15:50","2022-12-21 17:40",165500);

-- 일본가는비행기(12월22일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","인천공항","오사카공항","2022-12-22 08:30","2022-12-22 09:30",209000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","인천공항","오사카공항","2022-12-22 08:50","2022-12-22 09:50",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","인천공항","오사카공항","2022-12-22 10:00","2022-12-22 11:00",190000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","인천공항","오사카공항","2022-12-22 10:30","2022-12-22 11:30",201500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","인천공항","오사카공항","2022-12-22 10:50","2022-12-22 11:50",228000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","인천공항","후쿠오카공항","2022-12-22 14:00","2022-12-22 15:00",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI019","인천공항","후쿠오카공항","2022-12-22 14:50","2022-12-22 15:50",194600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","인천공항","후쿠오카공항","2022-12-22 15:00","2022-12-22 16:00",203000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI017","인천공항","후쿠오카공항","2022-12-22 15:30","2022-12-22 16:30",194000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI016","인천공항","후쿠오카공항","2022-12-22 15:50","2022-12-22 16:50",192500);

-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL020","인천공항","후쿠오카공항","2022-12-22 09:00","2022-12-22 10:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL019","인천공항","후쿠오카공항","2022-12-22 14:50","2022-12-22 16:20",184600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL018","인천공항","후쿠오카공항","2022-12-22 15:00","2022-12-22 16:35",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL017","인천공항","후쿠오카공항","2022-12-22 15:30","2022-12-22 17:00",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL016","인천공항","후쿠오카공항","2022-12-22 15:50","2022-12-22 17:30",192500);

-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA020","인천공항","오사카공항","2022-12-22 09:00","2022-12-22 10:30",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA019","인천공항","오사카공항","2022-12-22 14:50","2022-12-22 16:40",174600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA018","인천공항","오사카공항","2022-12-22 15:00","2022-12-22 16:45",173000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA017","인천공항","오사카공항","2022-12-22 15:30","2022-12-22 16:50",164000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA016","인천공항","오사카공항","2022-12-22 15:50","2022-12-22 17:40",169100);

-- 일본가는비행기(12월23일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","인천공항","오사카공항","2022-12-23 08:30","2022-12-23 09:30",209000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR014","인천공항","오사카공항","2022-12-23 08:50","2022-12-23 09:50",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR013","인천공항","오사카공항","2022-12-23 10:00","2022-12-23 11:00",190000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR012","인천공항","오사카공항","2022-12-23 10:30","2022-12-23 11:30",201500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR011","인천공항","오사카공항","2022-12-23 10:50","2022-12-23 11:50",228000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI015","인천공항","후쿠오카공항","2022-12-23 14:00","2022-12-23 15:00",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI014","인천공항","후쿠오카공항","2022-12-23 14:50","2022-12-23 15:50",194600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI013","인천공항","후쿠오카공항","2022-12-23 15:00","2022-12-23 16:00",203000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI012","인천공항","후쿠오카공항","2022-12-23 15:30","2022-12-23 16:30",194000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI011","인천공항","후쿠오카공항","2022-12-23 15:50","2022-12-23 16:50",192500);

-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL015","인천공항","후쿠오카공항","2022-12-23 09:00","2022-12-23 10:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL014","인천공항","후쿠오카공항","2022-12-23 14:50","2022-12-23 16:20",184600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL013","인천공항","후쿠오카공항","2022-12-23 15:00","2022-12-23 16:35",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL012","인천공항","후쿠오카공항","2022-12-23 15:30","2022-12-23 17:00",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL011","인천공항","후쿠오카공항","2022-12-23 15:50","2022-12-23 17:30",192500);

-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA015","인천공항","오사카공항","2022-12-23 10:00","2022-12-23 11:30",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA014","인천공항","오사카공항","2022-12-23 14:50","2022-12-23 16:40",174600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA013","인천공항","오사카공항","2022-12-23 15:00","2022-12-23 16:45",173000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA012","인천공항","오사카공항","2022-12-23 15:30","2022-12-23 16:50",164000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA011","인천공항","오사카공항","2022-12-23 15:50","2022-12-23 17:40",165000);

-- 일본가는비행기(12월24일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR010","인천공항","오사카공항","2022-12-24 08:30","2022-12-24 09:30",209000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR009","인천공항","오사카공항","2022-12-24 08:50","2022-12-24 09:50",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR008","인천공항","오사카공항","2022-12-24 10:00","2022-12-24 11:00",190000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR007","인천공항","오사카공항","2022-12-24 10:30","2022-12-24 11:30",201500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR006","인천공항","오사카공항","2022-12-24 10:50","2022-12-24 11:50",228000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI010","인천공항","후쿠오카공항","2022-12-24 14:00","2022-12-24 15:00",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI009","인천공항","후쿠오카공항","2022-12-24 14:50","2022-12-24 15:50",194600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI008","인천공항","후쿠오카공항","2022-12-24 15:00","2022-12-24 16:00",203000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI007","인천공항","후쿠오카공항","2022-12-24 15:30","2022-12-24 16:30",194000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI006","인천공항","후쿠오카공항","2022-12-24 15:50","2022-12-24 16:50",192500);

-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL010","인천공항","후쿠오카공항","2022-12-24 14:00","2022-12-24 15:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL009","인천공항","후쿠오카공항","2022-12-24 14:50","2022-12-24 16:20",184600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL008","인천공항","후쿠오카공항","2022-12-24 15:00","2022-12-24 16:35",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL007","인천공항","후쿠오카공항","2022-12-24 15:30","2022-12-24 17:00",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL006","인천공항","후쿠오카공항","2022-12-24 15:50","2022-12-24 17:30",192500);

-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA010","인천공항","오사카공항","2022-12-24 14:00","2022-12-24 15:50",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA009","인천공항","오사카공항","2022-12-24 14:50","2022-12-24 16:40",174600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA008","인천공항","오사카공항","2022-12-24 15:00","2022-12-24 16:45",173000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA007","인천공항","오사카공항","2022-12-24 15:30","2022-12-24 16:50",164000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA006","인천공항","오사카공항","2022-12-24 15:50","2022-12-24 17:40",165300);

-- 일본가는비행기(12월25일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR005","인천공항","오사카공항","2022-12-25 08:30","2022-12-25 09:30",209000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR004","인천공항","오사카공항","2022-12-25 08:50","2022-12-25 09:50",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR003","인천공항","오사카공항","2022-12-25 10:00","2022-12-25 11:00",190000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR002","인천공항","오사카공항","2022-12-25 10:30","2022-12-25 11:30",201500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR001","인천공항","오사카공항","2022-12-25 10:50","2022-12-25 11:50",228000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI005","인천공항","후쿠오카공항","2022-12-25 14:00","2022-12-25 15:00",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI004","인천공항","후쿠오카공항","2022-12-25 14:50","2022-12-25 15:50",194600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI003","인천공항","후쿠오카공항","2022-12-25 15:00","2022-12-25 16:00",203000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI002","인천공항","후쿠오카공항","2022-12-25 15:30","2022-12-25 16:30",194000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI001","인천공항","후쿠오카공항","2022-12-25 15:50","2022-12-21 16:50",192500);

-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL005","인천공항","후쿠오카공항","2022-12-25 14:00","2022-12-25 15:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL004","인천공항","후쿠오카공항","2022-12-25 14:50","2022-12-25 16:20",184600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL003","인천공항","후쿠오카공항","2022-12-25 15:00","2022-12-25 16:35",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL002","인천공항","후쿠오카공항","2022-12-25 15:30","2022-12-25 17:00",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL001","인천공항","후쿠오카공항","2022-12-25 15:50","2022-12-25 17:30",192500);

-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA005","인천공항","오사카공항","2022-12-25 14:00","2022-12-25 15:50",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA004","인천공항","오사카공항","2022-12-25 14:50","2022-12-25 16:40",174600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA003","인천공항","오사카공항","2022-12-25 15:00","2022-12-25 16:45",173000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA002","인천공항","오사카공항","2022-12-25 15:30","2022-12-25 16:50",164000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA001","인천공항","오사카공항","2022-12-25 15:50","2022-12-25 17:40",154000);

-- 일본가는비행기(12월26일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR030","인천공항","오사카공항","2022-12-26 08:30","2022-12-26 09:30",209000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR029","인천공항","오사카공항","2022-12-26 08:50","2022-12-26 09:50",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR028","인천공항","오사카공항","2022-12-26 10:00","2022-12-26 11:00",190000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR027","인천공항","오사카공항","2022-12-26 10:30","2022-12-26 11:30",201500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR026","인천공항","오사카공항","2022-12-26 10:50","2022-12-26 11:50",228000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI030","인천공항","후쿠오카공항","2022-12-26 14:00","2022-12-26 15:00",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI029","인천공항","후쿠오카공항","2022-12-26 14:50","2022-12-26 15:50",194600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI028","인천공항","후쿠오카공항","2022-12-26 15:00","2022-12-26 16:00",203000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI027","인천공항","후쿠오카공항","2022-12-26 15:30","2022-12-26 16:30",194000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI026","인천공항","후쿠오카공항","2022-12-26 15:50","2022-12-26 16:50",192500);

-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL030","인천공항","후쿠오카공항","2022-12-26 14:00","2022-12-26 15:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL029","인천공항","후쿠오카공항","2022-12-26 14:50","2022-12-26 16:20",184600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL028","인천공항","후쿠오카공항","2022-12-26 15:00","2022-12-26 16:35",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL027","인천공항","후쿠오카공항","2022-12-26 15:30","2022-12-26 17:00",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL026","인천공항","후쿠오카공항","2022-12-26 15:50","2022-12-26 17:30",192500);

-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA030","인천공항","오사카공항","2022-12-26 14:00","2022-12-26 15:50",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA029","인천공항","오사카공항","2022-12-26 14:50","2022-12-26 16:40",174600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA028","인천공항","오사카공항","2022-12-26 15:00","2022-12-26 16:45",173000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA027","인천공항","오사카공항","2022-12-26 15:30","2022-12-26 16:50",164000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA026","인천공항","오사카공항","2022-12-26 15:50","2022-12-26 17:40",166000);

-- 일본가는비행기(12월27일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","인천공항","오사카공항","2022-12-27 08:30","2022-12-27 09:30",209000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR024","인천공항","오사카공항","2022-12-27 08:50","2022-12-27 09:50",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR023","인천공항","오사카공항","2022-12-27 10:00","2022-12-27 11:00",190000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR022","인천공항","오사카공항","2022-12-27 10:30","2022-12-27 11:30",201500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","인천공항","오사카공항","2022-12-27 10:50","2022-12-27 11:50",228000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI025","인천공항","후쿠오카공항","2022-12-27 14:00","2022-12-27 15:00",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI024","인천공항","후쿠오카공항","2022-12-27 14:50","2022-12-27 15:50",194600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI023","인천공항","후쿠오카공항","2022-12-27 15:00","2022-12-27 16:00",203000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI022","인천공항","후쿠오카공항","2022-12-27 15:30","2022-12-27 16:30",194000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","인천공항","후쿠오카공항","2022-12-27 15:50","2022-12-27 16:50",192500);

-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL025","인천공항","후쿠오카공항","2022-12-27 14:00","2022-12-27 15:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL024","인천공항","후쿠오카공항","2022-12-27 14:50","2022-12-27 16:20",184600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL023","인천공항","후쿠오카공항","2022-12-27 15:00","2022-12-27 16:35",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL022","인천공항","후쿠오카공항","2022-12-27 15:30","2022-12-27 17:00",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL021","인천공항","후쿠오카공항","2022-12-27 15:50","2022-12-27 17:30",192500);

-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA025","인천공항","오사카공항","2022-12-27 14:00","2022-12-27 15:50",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA024","인천공항","오사카공항","2022-12-27 14:50","2022-12-27 16:40",174600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA023","인천공항","오사카공항","2022-12-27 15:00","2022-12-27 16:45",173000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA022","인천공항","오사카공항","2022-12-27 15:30","2022-12-27 16:50",164000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA021","인천공항","오사카공항","2022-12-27 15:50","2022-12-27 17:40",165500);


-- 중국가는비행기(12월20일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","인천공항","베이징공항","2022-12-20 08:30","2022-12-20 9:50",309000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","인천공항","상하이공항","2022-12-20 08:50","2022-12-20 09:50",349000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","인천공항","베이징공항","2022-12-20 10:00","2022-12-20 11:00",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","인천공항","상하이공항","2022-12-20 10:30","2022-12-20 11:30",341500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","인천공항","베이징공항","2022-12-20 10:50","2022-12-20 11:50",378000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI015","인천공항","베이징공항","2022-12-20 14:00","2022-12-20 15:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI016","인천공항","베이징공항","2022-12-20 14:50","2022-12-20 15:50",294600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI017","인천공항","상하이공항","2022-12-20 15:00","2022-12-20 16:00",303000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","인천공항","상하이공항","2022-12-20 15:30","2022-12-20 16:30",344000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI017","인천공항","상하이공항","2022-12-20 15:50","2022-12-20 16:50",312500);

-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE001","인천공항","베이징공항","2022-12-20 09:00","2022-12-20 10:30",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE002","인천공항","베이징공항","2022-12-20 14:50","2022-12-20 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE003","인천공항","베이징공항","2022-12-20 15:00","2022-12-20 16:35",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE004","인천공항","상하이공항","2022-12-20 08:50","2022-12-20 10:20",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE005","인천공항","상하이공항","2022-12-20 15:50","2022-12-20 17:30",242500);

-- 에어차이나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI001","인천공항","상하이공항","2022-12-20 14:00","2022-12-20 15:50",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI002","인천공항","상하이공항","2022-12-20 14:50","2022-12-20 16:40",214600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI003","인천공항","베이징공항","2022-12-20 15:00","2022-12-20 16:45",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI004","인천공항","베이징공항","2022-12-20 15:30","2022-12-20 16:50",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI005","인천공항","베이징공항","2022-12-20 15:50","2022-12-20 17:40",255000);

-- 중국가는비행기(12월21일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","인천공항","베이징공항","2022-12-21 08:30","2022-12-21 9:50",309000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR022","인천공항","상하이공항","2022-12-21 08:50","2022-12-21 09:50",349000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR023","인천공항","베이징공항","2022-12-21 10:00","2022-12-21 11:00",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR024","인천공항","상하이공항","2022-12-21 10:30","2022-12-21 11:30",341500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","인천공항","베이징공항","2022-12-21 10:50","2022-12-21 11:50",378000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","인천공항","베이징공항","2022-12-21 14:00","2022-12-21 15:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI022","인천공항","베이징공항","2022-12-21 14:50","2022-12-21 15:50",294600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI023","인천공항","상하이공항","2022-12-21 15:00","2022-12-21 16:00",303000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI024","인천공항","상하이공항","2022-12-21 15:30","2022-12-21 16:30",344000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI025","인천공항","상하이공항","2022-12-21 15:50","2022-12-21 16:50",312500);

-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE006","인천공항","베이징공항","2022-12-21 09:00","2022-12-21 10:30",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE007","인천공항","베이징공항","2022-12-21 14:50","2022-12-21 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE008","인천공항","베이징공항","2022-12-21 15:00","2022-12-21 16:35",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE009","인천공항","상하이공항","2022-12-21 08:50","2022-12-21 10:20",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE010","인천공항","상하이공항","2022-12-21 15:50","2022-12-21 17:30",242500);

-- 에어차이나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI006","인천공항","상하이공항","2022-12-21 14:00","2022-12-21 15:50",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI007","인천공항","상하이공항","2022-12-21 14:50","2022-12-21 16:40",214600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI008","인천공항","베이징공항","2022-12-21 15:00","2022-12-21 16:45",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI009","인천공항","베이징공항","2022-12-21 15:30","2022-12-21 16:50",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI010","인천공항","베이징공항","2022-12-21 15:50","2022-12-21 17:40",255000);

-- 중국가는비행기(12월22일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR026","인천공항","베이징공항","2022-12-22 08:30","2022-12-22 9:50",309000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR027","인천공항","상하이공항","2022-12-22 08:50","2022-12-22 09:50",349000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR028","인천공항","베이징공항","2022-12-22 10:00","2022-12-22 11:00",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR029","인천공항","상하이공항","2022-12-22 10:30","2022-12-22 11:30",341500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR030","인천공항","베이징공항","2022-12-22 10:50","2022-12-22 11:50",378000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI026","인천공항","베이징공항","2022-12-22 14:00","2022-12-22 15:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI027","인천공항","베이징공항","2022-12-22 14:50","2022-12-22 15:50",294600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI028","인천공항","상하이공항","2022-12-22 15:00","2022-12-22 16:00",303000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI029","인천공항","상하이공항","2022-12-22 15:30","2022-12-22 16:30",344000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI030","인천공항","상하이공항","2022-12-22 15:50","2022-12-22 16:50",312500);

-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE011","인천공항","베이징공항","2022-12-22 09:00","2022-12-22 10:30",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE012","인천공항","베이징공항","2022-12-22 14:50","2022-12-22 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE013","인천공항","베이징공항","2022-12-22 15:00","2022-12-22 16:35",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE014","인천공항","상하이공항","2022-12-22 08:50","2022-12-22 10:20",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE015","인천공항","상하이공항","2022-12-22 15:50","2022-12-22 17:30",242500);

-- 에어차이나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI011","인천공항","상하이공항","2022-12-22 14:00","2022-12-22 15:50",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI012","인천공항","상하이공항","2022-12-22 14:50","2022-12-22 16:40",214600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI013","인천공항","베이징공항","2022-12-22 15:00","2022-12-22 16:45",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI014","인천공항","베이징공항","2022-12-22 15:30","2022-12-22 16:50",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI015","인천공항","베이징공항","2022-12-22 15:50","2022-12-22 17:40",255000);

-- 중국가는비행기(12월23일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR001","인천공항","베이징공항","2022-12-23 08:30","2022-12-23 9:50",309000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR002","인천공항","상하이공항","2022-12-23 08:50","2022-12-23 09:50",349000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR003","인천공항","베이징공항","2022-12-23 10:00","2022-12-23 11:00",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR004","인천공항","상하이공항","2022-12-23 10:30","2022-12-23 11:30",341500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR005","인천공항","베이징공항","2022-12-23 10:50","2022-12-23 11:50",378000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI001","인천공항","베이징공항","2022-12-23 14:00","2022-12-23 15:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI002","인천공항","베이징공항","2022-12-23 14:50","2022-12-23 15:50",294600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI003","인천공항","상하이공항","2022-12-23 15:00","2022-12-23 16:00",303000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI004","인천공항","상하이공항","2022-12-23 15:30","2022-12-23 16:30",344000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI005","인천공항","상하이공항","2022-12-23 15:50","2022-12-23 16:50",312500);

-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE016","인천공항","베이징공항","2022-12-23 09:00","2022-12-23 10:30",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE017","인천공항","베이징공항","2022-12-23 14:50","2022-12-23 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE018","인천공항","베이징공항","2022-12-23 15:00","2022-12-23 16:35",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE019","인천공항","상하이공항","2022-12-23 08:30","2022-12-23 10:00",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE020","인천공항","상하이공항","2022-12-23 15:50","2022-12-23 17:30",242500);

-- 에어차이나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI016","인천공항","상하이공항","2022-12-23 14:00","2022-12-23 15:50",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI017","인천공항","상하이공항","2022-12-23 14:50","2022-12-23 16:40",214600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI018","인천공항","베이징공항","2022-12-23 15:00","2022-12-23 16:45",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI019","인천공항","베이징공항","2022-12-23 15:30","2022-12-23 16:50",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI020","인천공항","베이징공항","2022-12-23 15:50","2022-12-23 17:40",255000);

-- 중국가는비행기(12월24일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR006","인천공항","베이징공항","2022-12-24 08:30","2022-12-24 9:50",309000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR007","인천공항","상하이공항","2022-12-24 08:50","2022-12-24 09:50",349000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR008","인천공항","베이징공항","2022-12-24 10:00","2022-12-24 11:00",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR009","인천공항","상하이공항","2022-12-24 10:30","2022-12-24 11:30",341500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR010","인천공항","베이징공항","2022-12-24 10:50","2022-12-24 11:50",378000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI006","인천공항","베이징공항","2022-12-24 14:00","2022-12-24 15:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI007","인천공항","베이징공항","2022-12-24 14:50","2022-12-24 15:50",294600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI008","인천공항","상하이공항","2022-12-24 15:00","2022-12-24 16:00",303000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI009","인천공항","상하이공항","2022-12-24 15:30","2022-12-24 16:30",344000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI010","인천공항","상하이공항","2022-12-24 15:50","2022-12-24 16:50",312500);

-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE021","인천공항","베이징공항","2022-12-24 14:00","2022-12-24 15:30",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE022","인천공항","베이징공항","2022-12-24 14:50","2022-12-24 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE023","인천공항","베이징공항","2022-12-24 15:00","2022-12-24 16:35",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE024","인천공항","상하이공항","2022-12-24 15:30","2022-12-24 17:00",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE025","인천공항","상하이공항","2022-12-24 15:50","2022-12-24 17:30",242500);

-- 에어차이나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI021","인천공항","상하이공항","2022-12-24 14:00","2022-12-24 15:50",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI022","인천공항","상하이공항","2022-12-24 14:50","2022-12-24 16:40",214600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI023","인천공항","베이징공항","2022-12-24 15:00","2022-12-24 16:45",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI024","인천공항","베이징공항","2022-12-24 15:30","2022-12-24 16:50",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI025","인천공항","베이징공항","2022-12-24 15:50","2022-12-24 17:40",255000);

-- 중국가는비행기(12월25일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR011","인천공항","베이징공항","2022-12-25 08:30","2022-12-25 9:50",309000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR012","인천공항","상하이공항","2022-12-25 08:50","2022-12-25 09:50",349000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR013","인천공항","베이징공항","2022-12-25 10:00","2022-12-25 11:00",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR014","인천공항","상하이공항","2022-12-25 10:30","2022-12-25 11:30",341500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","인천공항","베이징공항","2022-12-25 10:50","2022-12-25 11:50",378000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI011","인천공항","베이징공항","2022-12-25 14:00","2022-12-25 15:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI012","인천공항","베이징공항","2022-12-25 14:50","2022-12-25 15:50",294600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI013","인천공항","상하이공항","2022-12-25 15:00","2022-12-25 16:00",303000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI014","인천공항","상하이공항","2022-12-25 15:30","2022-12-25 16:30",344000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI015","인천공항","상하이공항","2022-12-25 15:50","2022-12-25 16:50",312500);

-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE026","인천공항","베이징공항","2022-12-25 14:00","2022-12-25 15:30",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE027","인천공항","베이징공항","2022-12-25 14:50","2022-12-25 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE028","인천공항","베이징공항","2022-12-25 15:00","2022-12-25 16:35",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE029","인천공항","상하이공항","2022-12-25 15:30","2022-12-25 17:00",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE030","인천공항","상하이공항","2022-12-25 15:50","2022-12-25 17:30",242500);

-- 에어차이나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI026","인천공항","상하이공항","2022-12-25 14:00","2022-12-25 15:50",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI027","인천공항","상하이공항","2022-12-25 14:50","2022-12-25 16:40",214600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI028","인천공항","베이징공항","2022-12-25 15:00","2022-12-25 16:45",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI029","인천공항","베이징공항","2022-12-25 15:30","2022-12-25 16:50",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI030","인천공항","베이징공항","2022-12-25 15:50","2022-12-25 17:40",255000);

-- 중국가는비행기(12월26일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","인천공항","베이징공항","2022-12-26 08:30","2022-12-26 9:50",309000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","인천공항","상하이공항","2022-12-26 08:50","2022-12-26 09:50",349000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","인천공항","베이징공항","2022-12-26 10:00","2022-12-26 11:00",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","인천공항","상하이공항","2022-12-26 10:30","2022-12-26 11:30",341500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","인천공항","베이징공항","2022-12-26 10:50","2022-12-26 11:50",378000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI016","인천공항","베이징공항","2022-12-26 14:00","2022-12-26 15:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI017","인천공항","베이징공항","2022-12-26 14:50","2022-12-26 15:50",294600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","인천공항","상하이공항","2022-12-26 15:00","2022-12-26 16:00",303000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI019","인천공항","상하이공항","2022-12-26 15:30","2022-12-26 16:30",344000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","인천공항","상하이공항","2022-12-26 15:50","2022-12-26 16:50",312500);

-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE001","인천공항","베이징공항","2022-12-26 14:00","2022-12-26 15:30",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE002","인천공항","베이징공항","2022-12-26 14:50","2022-12-26 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE003","인천공항","베이징공항","2022-12-26 15:00","2022-12-26 16:35",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE004","인천공항","상하이공항","2022-12-26 15:30","2022-12-26 17:00",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE005","인천공항","상하이공항","2022-12-26 15:50","2022-12-26 17:30",242500);

-- 에어차이나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI001","인천공항","상하이공항","2022-12-26 14:00","2022-12-26 15:50",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI002","인천공항","상하이공항","2022-12-26 14:50","2022-12-26 16:40",214600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI003","인천공항","베이징공항","2022-12-26 15:00","2022-12-26 16:45",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI004","인천공항","베이징공항","2022-12-26 15:30","2022-12-26 16:50",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI005","인천공항","베이징공항","2022-12-26 15:50","2022-12-26 17:40",255000);

-- 중국가는비행기(12월27일)

-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","인천공항","베이징공항","2022-12-27 08:30","2022-12-27 9:50",309000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR022","인천공항","상하이공항","2022-12-27 08:50","2022-12-27 09:50",349000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR023","인천공항","베이징공항","2022-12-27 10:00","2022-12-27 11:00",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR024","인천공항","상하이공항","2022-12-27 10:30","2022-12-27 11:30",341500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","인천공항","베이징공항","2022-12-27 10:50","2022-12-27 11:50",378000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","인천공항","베이징공항","2022-12-27 14:00","2022-12-27 15:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI022","인천공항","베이징공항","2022-12-27 14:50","2022-12-27 15:50",294600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI023","인천공항","상하이공항","2022-12-27 15:00","2022-12-27 16:00",303000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI024","인천공항","상하이공항","2022-12-27 15:30","2022-12-27 16:30",344000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI025","인천공항","상하이공항","2022-12-27 15:50","2022-12-27 16:50",312500);

-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE006","인천공항","베이징공항","2022-12-27 13:50","2022-12-27 15:20",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE007","인천공항","베이징공항","2022-12-27 14:50","2022-12-27 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE008","인천공항","베이징공항","2022-12-27 15:00","2022-12-27 16:35",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE009","인천공항","상하이공항","2022-12-27 15:30","2022-12-27 17:00",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE010","인천공항","상하이공항","2022-12-27 15:50","2022-12-27 17:30",242500);

-- 에어차이나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI006","인천공항","상하이공항","2022-12-27 14:00","2022-12-27 15:50",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI007","인천공항","상하이공항","2022-12-27 14:50","2022-12-27 16:40",214600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI008","인천공항","베이징공항","2022-12-27 15:00","2022-12-27 16:45",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI009","인천공항","베이징공항","2022-12-27 15:30","2022-12-27 16:50",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI010","인천공항","베이징공항","2022-12-27 15:50","2022-12-27 17:40",255000);


-- 태국가는 비행기

-- 태국가는비행기(12월20일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR031","인천공항","방콕공항","2022-12-20 08:30","2022-12-20 12:40",409000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR032","인천공항","방콕공항","2022-12-20 08:50","2022-12-20 13:00",399000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR033","인천공항","방콕공항","2022-12-20 08:00","2022-12-20 12:15",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR034","인천공항","파타야공항","2022-12-20 08:40","2022-12-20 12:55",301500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR035","인천공항","파타야공항","2022-12-20 10:50","2022-12-20 14:50",328000);


-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI031","인천공항","방콕공항","2022-12-20 14:00","2022-12-20 18:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI032","인천공항","방콕공항","2022-12-20 14:50","2022-12-20 18:50",394600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI033","인천공항","방콕공항","2022-12-20 13:00","2022-12-20 17:05",403000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI034","인천공항","파타야공항","2022-12-20 15:30","2022-12-20 19:40",394000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI035","인천공항","파타야공항","2022-12-20 15:50","2022-12-20 19:55",392500);

-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA001","인천공항","방콕공항","2022-12-20 08:30","2022-12-20 12:30",302000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA002","인천공항","방콕공항","2022-12-20 14:50","2022-12-20 16:20",284600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA003","인천공항","파타야공항","2022-12-20 08:40","2022-12-20 12:40",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA004","인천공항","파타야공항","2022-12-20 15:30","2022-12-20 17:00",324000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA005","인천공항","파타야공항","2022-12-20 15:50","2022-12-20 17:30",292500);

-- 에어아시아
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS001","인천공항","파타야공항","2022-12-21 14:00","2022-12-21 18:05",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS002","인천공항","파타야공항","2022-12-21 14:50","2022-12-21 18:50",244600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS003","인천공항","파타야공항","2022-12-21 15:00","2022-12-21 19:10",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS004","인천공항","방콕공항","2022-12-21 15:30","2022-12-21 19:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS005","인천공항","방콕공항","2022-12-21 15:50","2022-12-21 19:55",223000);

-- 태국가는비행기(12월21일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR036","인천공항","방콕공항","2022-12-21 08:30","2022-12-21 12:40",370000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR037","인천공항","방콕공항","2022-12-21 08:50","2022-12-21 13:00",399000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR038","인천공항","방콕공항","2022-12-21 08:00","2022-12-21 12:15",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR039","인천공항","파타야공항","2022-12-21 08:40","2022-12-21 12:55",301500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR040","인천공항","파타야공항","2022-12-21 10:50","2022-12-21 14:50",328000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI036","인천공항","방콕공항","2022-12-21 14:00","2022-12-21 18:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI037","인천공항","방콕공항","2022-12-21 14:50","2022-12-21 18:50",394600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI038","인천공항","방콕공항","2022-12-21 13:00","2022-12-21 17:05",403000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI039","인천공항","파타야공항","2022-12-21 15:30","2022-12-21 19:40",394000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI040","인천공항","파타야공항","2022-12-21 15:50","2022-12-21 19:55",392500);

-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA006","인천공항","방콕공항","2022-12-21 08:30","2022-12-21 12:30",309400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA007","인천공항","방콕공항","2022-12-21 14:50","2022-12-21 16:20",299600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA008","인천공항","파타야공항","2022-12-21 08:40","2022-12-21 12:40",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA009","인천공항","파타야공항","2022-12-21 15:30","2022-12-21 17:00",324000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA010","인천공항","파타야공항","2022-12-21 15:50","2022-12-21 17:30",342500);

-- 에어아시아
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS006","인천공항","파타야공항","2022-12-21 14:00","2022-12-21 18:05",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS007","인천공항","파타야공항","2022-12-21 14:50","2022-12-21 18:50",244600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS008","인천공항","파타야공항","2022-12-21 15:00","2022-12-21 19:10",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS009","인천공항","방콕공항","2022-12-21 15:30","2022-12-21 19:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS010","인천공항","방콕공항","2022-12-21 15:50","2022-12-21 19:55",223000);

-- 태국가는비행기(12월22일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR001","인천공항","방콕공항","2022-12-22 08:30","2022-12-22 12:40",411000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR002","인천공항","방콕공항","2022-12-22 07:50","2022-12-22 12:00",399000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR003","인천공항","방콕공항","2022-12-22 08:00","2022-12-22 12:15",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR004","인천공항","파타야공항","2022-12-22 09:40","2022-12-22 13:55",301500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR005","인천공항","파타야공항","2022-12-22 10:50","2022-12-22 14:50",328000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI001","인천공항","방콕공항","2022-12-22 14:00","2022-12-22 18:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI002","인천공항","방콕공항","2022-12-22 14:50","2022-12-22 18:50",394600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI003","인천공항","방콕공항","2022-12-22 13:00","2022-12-22 17:05",403000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI004","인천공항","파타야공항","2022-12-22 15:30","2022-12-22 19:40",394000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI005","인천공항","파타야공항","2022-12-22 15:50","2022-12-22 19:55",392500);

-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA011","인천공항","방콕공항","2022-12-22 08:30","2022-12-22 12:30",308000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA012","인천공항","방콕공항","2022-12-22 14:50","2022-12-22 16:20",299600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA013","인천공항","파타야공항","2022-12-22 09:40","2022-12-22 13:40",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA014","인천공항","파타야공항","2022-12-22 15:30","2022-12-22 17:00",324000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA015","인천공항","파타야공항","2022-12-22 15:50","2022-12-22 17:30",342500);

-- 에어아시아
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS011","인천공항","파타야공항","2022-12-22 14:00","2022-12-22 18:05",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS012","인천공항","파타야공항","2022-12-22 14:50","2022-12-22 18:50",244600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS013","인천공항","파타야공항","2022-12-22 15:00","2022-12-22 19:10",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS014","인천공항","방콕공항","2022-12-22 15:30","2022-12-22 19:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS015","인천공항","방콕공항","2022-12-22 15:50","2022-12-22 19:55",223000);

-- 태국가는비행기(12월23일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR006","인천공항","방콕공항","2022-12-23 08:30","2022-12-23 12:40",409000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR007","인천공항","방콕공항","2022-12-23 07:50","2022-12-23 12:00",399000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR008","인천공항","방콕공항","2022-12-23 08:00","2022-12-23 12:15",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR009","인천공항","파타야공항","2022-12-23 09:40","2022-12-23 13:55",301500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR010","인천공항","파타야공항","2022-12-23 10:50","2022-12-23 14:50",328000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI006","인천공항","방콕공항","2022-12-23 14:00","2022-12-23 18:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI007","인천공항","방콕공항","2022-12-23 14:50","2022-12-23 18:50",394600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI008","인천공항","방콕공항","2022-12-23 13:00","2022-12-23 17:05",403000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI009","인천공항","파타야공항","2022-12-23 15:30","2022-12-23 19:40",394000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI010","인천공항","파타야공항","2022-12-23 15:50","2022-12-23 19:55",392500);

-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA016","인천공항","방콕공항","2022-12-23 08:30","2022-12-23 12:30",308000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA017","인천공항","방콕공항","2022-12-23 14:50","2022-12-23 16:20",299600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA018","인천공항","파타야공항","2022-12-23 09:40","2022-12-23 13:40",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA019","인천공항","파타야공항","2022-12-23 15:30","2022-12-23 17:00",324000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA020","인천공항","파타야공항","2022-12-23 15:50","2022-12-23 17:30",342500);

-- 에어아시아
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS016","인천공항","파타야공항","2022-12-23 14:00","2022-12-23 18:05",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS017","인천공항","파타야공항","2022-12-23 14:50","2022-12-23 18:50",244600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS018","인천공항","파타야공항","2022-12-23 15:00","2022-12-23 19:10",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS019","인천공항","방콕공항","2022-12-23 15:30","2022-12-23 19:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS020","인천공항","방콕공항","2022-12-23 15:50","2022-12-23 19:55",223000);

-- 태국가는비행기(12월24일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR011","인천공항","방콕공항","2022-12-24 08:30","2022-12-24 12:40",404000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR012","인천공항","방콕공항","2022-12-24 07:50","2022-12-24 12:00",399000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR013","인천공항","방콕공항","2022-12-24 08:00","2022-12-24 12:15",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR014","인천공항","파타야공항","2022-12-24 09:40","2022-12-24 13:55",301500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","인천공항","파타야공항","2022-12-24 10:50","2022-12-24 14:50",328000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI011","인천공항","방콕공항","2022-12-24 14:00","2022-12-24 18:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI012","인천공항","방콕공항","2022-12-24 14:50","2022-12-24 18:50",394600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI013","인천공항","방콕공항","2022-12-24 13:00","2022-12-24 17:05",403000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI014","인천공항","파타야공항","2022-12-24 15:30","2022-12-24 19:40",394000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI015","인천공항","파타야공항","2022-12-24 15:50","2022-12-24 19:55",392500);

-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA021","인천공항","방콕공항","2022-12-24 14:15","2022-12-24 20:20",308000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA022","인천공항","방콕공항","2022-12-24 14:50","2022-12-24 16:20",299600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA023","인천공항","파타야공항","2022-12-24 15:00","2022-12-24 16:35",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA024","인천공항","파타야공항","2022-12-24 15:30","2022-12-24 17:00",324000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA025","인천공항","파타야공항","2022-12-24 15:50","2022-12-24 17:30",342500);

-- 에어아시아
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS021","인천공항","파타야공항","2022-12-24 14:00","2022-12-24 18:05",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS022","인천공항","파타야공항","2022-12-24 14:50","2022-12-24 18:50",244600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS023","인천공항","파타야공항","2022-12-24 15:00","2022-12-24 19:10",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS024","인천공항","방콕공항","2022-12-24 15:30","2022-12-24 19:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS025","인천공항","방콕공항","2022-12-24 15:50","2022-12-24 19:55",223000);


-- 태국가는비행기(12월25일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","인천공항","방콕공항","2022-12-25 08:30","2022-12-25 12:40",409000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","인천공항","방콕공항","2022-12-25 07:50","2022-12-25 12:00",399000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","인천공항","방콕공항","2022-12-25 08:00","2022-12-25 12:15",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","인천공항","파타야공항","2022-12-25 09:40","2022-12-25 13:55",301500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","인천공항","파타야공항","2022-12-25 10:50","2022-12-25 14:50",328000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI016","인천공항","방콕공항","2022-12-25 14:00","2022-12-25 18:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI017","인천공항","방콕공항","2022-12-25 14:50","2022-12-25 18:50",394600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","인천공항","방콕공항","2022-12-25 13:00","2022-12-25 17:05",403000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI019","인천공항","파타야공항","2022-12-25 15:30","2022-12-25 19:40",394000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","인천공항","파타야공항","2022-12-25 15:50","2022-12-25 19:55",392500);

-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA026","인천공항","방콕공항","2022-12-25 14:15","2022-12-25 20:20",308000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA027","인천공항","방콕공항","2022-12-25 14:50","2022-12-25 16:20",299600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA028","인천공항","파타야공항","2022-12-25 15:00","2022-12-25 16:35",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA029","인천공항","파타야공항","2022-12-25 15:30","2022-12-25 17:00",324000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA030","인천공항","파타야공항","2022-12-25 15:50","2022-12-25 17:30",342500);

-- 에어아시아
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS026","인천공항","파타야공항","2022-12-25 14:00","2022-12-25 18:05",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS027","인천공항","파타야공항","2022-12-25 14:50","2022-12-25 18:50",244600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS028","인천공항","파타야공항","2022-12-25 15:00","2022-12-25 19:10",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS029","인천공항","방콕공항","2022-12-25 15:30","2022-12-25 19:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS030","인천공항","방콕공항","2022-12-25 15:50","2022-12-25 19:55",223000);


-- 태국가는비행기(12월26일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","인천공항","방콕공항","2022-12-26 08:30","2022-12-26 12:40",409000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","인천공항","방콕공항","2022-12-26 07:50","2022-12-26 12:00",399000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","인천공항","방콕공항","2022-12-26 08:00","2022-12-26 12:15",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","인천공항","파타야공항","2022-12-26 09:40","2022-12-26 13:55",301500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","인천공항","파타야공항","2022-12-26 10:50","2022-12-26 14:50",328000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI016","인천공항","방콕공항","2022-12-26 14:00","2022-12-26 18:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI017","인천공항","방콕공항","2022-12-26 14:50","2022-12-26 18:50",394600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","인천공항","방콕공항","2022-12-26 13:00","2022-12-26 17:05",403000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI019","인천공항","파타야공항","2022-12-26 15:30","2022-12-26 19:40",394000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","인천공항","파타야공항","2022-12-26 15:50","2022-12-26 19:55",392500);

-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA001","인천공항","방콕공항","2022-12-26 14:15","2022-12-26 20:20",308000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA002","인천공항","방콕공항","2022-12-26 14:50","2022-12-26 16:20",299600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA003","인천공항","파타야공항","2022-12-26 15:00","2022-12-26 16:35",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA004","인천공항","파타야공항","2022-12-26 15:30","2022-12-26 17:00",324000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA005","인천공항","파타야공항","2022-12-26 15:50","2022-12-26 17:30",342500);

-- 에어아시아
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS001","인천공항","파타야공항","2022-12-26 14:00","2022-12-26 18:05",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS002","인천공항","파타야공항","2022-12-26 14:50","2022-12-26 18:50",244600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS003","인천공항","파타야공항","2022-12-26 15:00","2022-12-26 19:10",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS004","인천공항","방콕공항","2022-12-26 15:30","2022-12-26 19:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS005","인천공항","방콕공항","2022-12-26 15:50","2022-12-26 19:55",223000);


-- 태국가는비행기(12월27일)
-- 대한항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","인천공항","방콕공항","2022-12-27 08:30","2022-12-27 12:40",409000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR022","인천공항","방콕공항","2022-12-27 07:50","2022-12-27 12:00",399000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR023","인천공항","방콕공항","2022-12-27 08:00","2022-12-27 12:15",320000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR024","인천공항","파타야공항","2022-12-27 09:40","2022-12-27 13:55",301500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","인천공항","파타야공항","2022-12-27 10:50","2022-12-27 14:50",328000);

-- 아시아나
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","인천공항","방콕공항","2022-12-27 14:00","2022-12-27 18:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI022","인천공항","방콕공항","2022-12-27 14:50","2022-12-27 18:50",394600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI023","인천공항","방콕공항","2022-12-27 13:00","2022-12-27 17:05",403000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI024","인천공항","파타야공항","2022-12-27 15:30","2022-12-27 19:40",394000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI025","인천공항","파타야공항","2022-12-27 15:50","2022-12-27 19:55",392500);

-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA006","인천공항","방콕공항","2022-12-27 14:15","2022-12-27 20:20",308000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA007","인천공항","방콕공항","2022-12-27 14:50","2022-12-27 16:20",299600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA008","인천공항","파타야공항","2022-12-27 15:00","2022-12-27 16:35",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA009","인천공항","파타야공항","2022-12-27 15:30","2022-12-27 17:00",324000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA010","인천공항","파타야공항","2022-12-27 15:50","2022-12-27 17:30",342500);

-- 에어아시아
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS006","인천공항","파타야공항","2022-12-27 14:00","2022-12-27 18:05",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS007","인천공항","파타야공항","2022-12-27 14:50","2022-12-27 18:50",244600);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS008","인천공항","파타야공항","2022-12-27 15:00","2022-12-27 19:10",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS009","인천공항","방콕공항","2022-12-27 15:30","2022-12-27 19:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"AAS010","인천공항","방콕공항","2022-12-27 15:50","2022-12-27 19:55",223000);


-- 제주에서 한국오는 비행기(12월22일, 패키지와 맞춘 insert 문) schedule_id : 641
-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"JIN001","제주공항","인천공항","2022-12-22 15:30","2022-12-22 16:30",110000);

-- 제주에서 한국오는 비행기(12월23일, 패키지와 맞춘 insert 문) schedule_id : 642
-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"JIN006","제주공항","인천공항","2022-12-23 15:30","2022-12-23 16:30",110000);

-- 제주에서 한국오는 비행기(12월24일, 패키지와 맞춘 insert 문) schedule_id : 643
-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"JIN011","제주공항","인천공항","2022-12-24 15:30","2022-12-24 16:30",110000);

-- 제주에서 한국오는 비행기(12월25일, 패키지와 맞춘 insert 문) schedule_id : 644
-- 진에어
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"JIN016","제주공항","인천공항","2022-12-25 15:30","2022-12-25 16:30",110000);


-- 후쿠오카에서 한국오는 비행기(12월 22일, 패키지와 맞춘 insert문) schedule_id : 645
-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL030","후쿠오카공항","인천공항","2022-12-22 15:00","2022-12-22 16:30",202000);

-- 후쿠오카에서 한국오는 비행기(12월 24일, 패키지와 맞춘 insert문) schedule_id : 646, 647
-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL025","후쿠오카공항","인천공항","2022-12-24 15:00","2022-12-24 16:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL020","후쿠오카공항","인천공항","2022-12-24 15:30","2022-12-24 17:00",202000);

-- 후쿠오카에서 한국오는 비행기(12월 26일, 패키지와 맞춘 insert문) schedule_id : 648
-- 일본항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL015","후쿠오카공항","인천공항","2022-12-26 15:00","2022-12-26 16:30",202000);


-- 오사카에서 한국오는 비행기(12월 22일, 패키지와 맞춘 insert문) schedule_id : 649
-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA030","오사카공항","인천공항","2022-12-22 15:30","2022-12-22 17:00",183000);

-- 오사카에서 한국오는 비행기(12월 24일, 패키지와 맞춘 insert문) schedule_id : 650, 651
-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA025","오사카공항","인천공항","2022-12-24 15:30","2022-12-24 17:00",183000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA020","오사카공항","인천공항","2022-12-24 16:30","2022-12-24 18:00",183000);

-- 오사카에서 한국오는 비행기(12월 26일, 패키지와 맞춘 insert문) schedule_id : 652
-- 전일본공수항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA015","오사카공항","인천공항","2022-12-26 15:30","2022-12-26 17:00",183000);


-- 베이징에서 한국오는 비행기(12월 22일, 패키지와 맞춘 insert문) schedule_id : 653
-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE001","베이징공항","인천공항","2022-12-22 15:00","2022-12-22 16:30",262000);

-- 베이징에서 한국오는 비행기(12월 24일, 패키지와 맞춘 insert문) schedule_id : 654 655
-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE006","베이징공항","인천공항","2022-12-24 15:00","2022-12-24 16:30",262000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE011","베이징공항","인천공항","2022-12-24 15:30","2022-12-24 17:00",262000);

-- 베이징에서 한국오는 비행기(12월 26일, 패키지와 맞춘 insert문) schedule_id : 656
-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE016","베이징공항","인천공항","2022-12-26 15:00","2022-12-26 16:30",262000);


-- 상하이에서 한국오는 비행기(12월 22일, 패키지와 맞춘 insert문) schedule_id : 657
-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE004","상하이공항","인천공항","2022-12-22 15:30","2022-12-22 17:00",264000);

-- 상하이에서 한국오는 비행기(12월 24일, 패키지와 맞춘 insert문) schedule_id : 658 659
-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE009","상하이공항","인천공항","2022-12-24 15:30","2022-12-24 17:00",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE014","상하이공항","인천공항","2022-12-24 16:00","2022-12-24 17:30",264000);

-- 상하이에서 한국오는 비행기(12월 26일, 패키지와 맞춘 insert문) schedule_id : 660
-- 동방항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE019","상하이공항","인천공항","2022-12-26 15:30","2022-12-26 17:00",264000);


-- 방콕에서 한국오는 비행기(12월 22일, 패키지와 맞춘 insert문) schedule_id : 661
-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA001","방콕공항","인천공항","2022-12-22 16:00","2022-12-22 20:00",302000);

-- 방콕에서 한국오는 비행기(12월 24일, 패키지와 맞춘 insert문) schedule_id : 662 663
-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA006","방콕공항","인천공항","2022-12-24 16:00","2022-12-24 20:00",302000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA011","방콕공항","인천공항","2022-12-24 16:30","2022-12-24 20:30",302000);

-- 방콕에서 한국오는 비행기(12월 26일, 패키지와 맞춘 insert문) schedule_id : 664
-- 타이항공
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA016","방콕공항","인천공항","2022-12-26 16:00","2022-12-26 20:00",302000);


-- 파타야에서 한국오는 비행기(12월 22일, 패키지와 맞춘 insert문)	schedule_id : 665
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA003","파타야공항","인천공항","2022-12-22 16:00","2022-12-22 20:00",313000);

-- 파타야에서 한국오는 비행기(12월 24일, 패키지와 맞춘 insert문)	schedule_id : 666 667
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA008","파타야공항","인천공항","2022-12-24 16:00","2022-12-24 20:00",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA013","파타야공항","인천공항","2022-12-24 16:30","2022-12-24 20:30",313000);

-- 파타야에서 한국오는 비행기(12월 26일, 패키지와 맞춘 insert문)	schedule_id : 668
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA018","파타야공항","인천공항","2022-12-26 16:00","2022-12-26 20:00",313000);

-- 후쿠오카에서 인천오는 비행기(12월 20일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL015","후쿠오카공항","인천공항","2022-12-20 11:00","2022-12-20 12:30",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL016","후쿠오카공항","인천공항","2022-12-20 15:00","2022-12-20 16:30",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL017","후쿠오카공항","인천공항","2022-12-20 19:20","2022-12-20 20:50",205500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI001","후쿠오카공항","인천공항","2022-12-20 09:00","2022-12-20 10:30",286000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR001","후쿠오카공항","인천공항","2022-12-20 12:00","2022-12-20 13:30",290000);
-- 후쿠오카에서 인천오는 비행기(12월 21일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","후쿠오카공항","인천공항","2022-12-21 12:00","2022-12-21 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","후쿠오카공항","인천공항","2022-12-21 09:00","2022-12-21 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA016","후쿠오카공항","인천공항","2022-12-21 17:10","2022-12-21 18:40",202300);

-- 후쿠오카에서 인천오는 비행기(12월 22일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","후쿠오카공항","인천공항","2022-12-22 12:00","2022-12-22 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI019","후쿠오카공항","인천공항","2022-12-22 09:00","2022-12-22 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA018","후쿠오카공항","인천공항","2022-12-22 17:10","2022-12-22 18:40",202300);

-- 후쿠오카에서 인천오는 비행기(12월 23일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","후쿠오카공항","인천공항","2022-12-23 12:00","2022-12-23 13:30",158000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","후쿠오카공항","인천공항","2022-12-23 09:00","2022-12-23 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA018","후쿠오카공항","인천공항","2022-12-23 17:10","2022-12-23 18:40",202300);


-- 후쿠오카에서 인천오는 비행기(12월 24일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","후쿠오카공항","인천공항","2022-12-24 12:00","2022-12-24 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","후쿠오카공항","인천공항","2022-12-24 09:00","2022-12-24 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA019","후쿠오카공항","인천공항","2022-12-24 17:10","2022-12-24 18:40",202300);

-- 후쿠오카에서 인천오는 비행기(12월 25일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","후쿠오카공항","인천공항","2022-12-25 12:00","2022-12-25 13:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI022","후쿠오카공항","인천공항","2022-12-25 09:00","2022-12-25 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA020","후쿠오카공항","인천공항","2022-12-25 17:10","2022-12-25 18:40",202300);

-- 후쿠오카에서 인천오는 비행기(12월 26일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","후쿠오카공항","인천공항","2022-12-26 12:00","2022-12-26 13:30",196000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI023","후쿠오카공항","인천공항","2022-12-26 09:00","2022-12-26 10:30",185000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA021","후쿠오카공항","인천공항","2022-12-26 17:10","2022-12-26 18:40",172300);

-- 후쿠오카에서 인천오는 비행기(12월 27일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","후쿠오카공항","인천공항","2022-12-27 12:00","2022-12-27 13:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI024","후쿠오카공항","인천공항","2022-12-27 09:00","2022-12-27 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA022","후쿠오카공항","인천공항","2022-12-27 17:10","2022-12-27 18:40",202300);

-- 오사카에서 인천오는 비행기(12월 20일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL015","오사카공항","인천공항","2022-12-20 11:00","2022-12-20 12:30",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL016","오사카공항","인천공항","2022-12-20 15:00","2022-12-20 16:30",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (500,"JAL017","오사카공항","인천공항","2022-12-20 19:20","2022-12-20 20:50",205500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","오사카공항","인천공항","2022-12-20 09:00","2022-12-20 10:30",266000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","오사카공항","인천공항","2022-12-20 12:00","2022-12-20 13:30",239000);

-- 오사카에서 인천오는 비행기(12월 21일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","오사카공항","인천공항","2022-12-21 12:00","2022-12-21 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","오사카공항","인천공항","2022-12-21 09:00","2022-12-21 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA016","오사카공항","인천공항","2022-12-21 17:10","2022-12-21 18:40",202300);

-- 오사카에서 인천오는 비행기(12월 22일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","오사카공항","인천공항","2022-12-22 12:00","2022-12-22 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI019","오사카공항","인천공항","2022-12-22 09:00","2022-12-22 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA018","오사카공항","인천공항","2022-12-22 17:10","2022-12-22 18:40",202300);

-- 오사카에서 인천오는 비행기(12월 23일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","오사카공항","인천공항","2022-12-23 12:00","2022-12-23 13:30",158000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","오사카공항","인천공항","2022-12-23 09:00","2022-12-23 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA018","오사카공항","인천공항","2022-12-23 17:10","2022-12-23 18:40",202300);


-- 오사카에서 인천오는 비행기(12월 24일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","오사카공항","인천공항","2022-12-24 12:00","2022-12-24 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","오사카공항","인천공항","2022-12-24 09:00","2022-12-24 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA019","오사카공항","인천공항","2022-12-24 17:10","2022-12-24 18:40",202300);

-- 오사카에서 인천오는 비행기(12월 25일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","오사카공항","인천공항","2022-12-25 12:00","2022-12-25 13:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI022","오사카공항","인천공항","2022-12-25 09:00","2022-12-25 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA020","오사카공항","인천공항","2022-12-25 17:10","2022-12-25 18:40",202300);

-- 오사카에서 인천오는 비행기(12월 22일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","오사카공항","인천공항","2022-12-26 12:00","2022-12-26 13:30",196000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI023","오사카공항","인천공항","2022-12-26 09:00","2022-12-26 10:30",185000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA021","오사카공항","인천공항","2022-12-26 17:10","2022-12-26 18:40",172300);

-- 오사카에서 인천오는 비행기(12월 27일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","오사카공항","인천공항","2022-12-27 12:00","2022-12-27 13:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI024","오사카공항","인천공항","2022-12-27 09:00","2022-12-27 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (600,"ANA022","오사카공항","인천공항","2022-12-27 17:10","2022-12-27 18:40",202300);


-- 베이징에서 인천오는 비행기(12월 20일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE021","베이징공항","인천공항","2022-12-20 11:00","2022-12-20 12:30",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE022","베이징공항","인천공항","2022-12-20 15:00","2022-12-20 16:30",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE023","베이징공항","인천공항","2022-12-20 19:20","2022-12-20 20:50",205500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","베이징공항","인천공항","2022-12-21 09:00","2022-12-21 10:30",266000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","베이징공항","인천공항","2022-12-21 12:00","2022-12-21 13:30",239000);

-- 베이징에서 인천오는 비행기(12월 21일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE024","베이징공항","인천공항","2022-12-21 12:00","2022-12-21 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE025","베이징공항","인천공항","2022-12-21 09:00","2022-12-21 10:30",181000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE026","베이징공항","인천공항","2022-12-21 17:10","2022-12-21 18:40",200300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI019","베이징공항","인천공항","2022-12-21 09:00","2022-12-21 10:30",255900);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","베이징공항","인천공항","2022-12-21 12:00","2022-12-21 13:30",271000);

-- 베이징에서 인천오는 비행기(12월 22일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE027","베이징공항","인천공항","2022-12-22 12:00","2022-12-22 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE028","베이징공항","인천공항","2022-12-22 09:00","2022-12-22 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE029","베이징공항","인천공항","2022-12-22 17:10","2022-12-22 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI018","베이징공항","인천공항","2022-12-22 09:00","2022-12-22 10:30",255000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","베이징공항","인천공항","2022-12-22 12:00","2022-12-22 13:30",278000);

-- 베이징에서 인천오는 비행기(12월 23일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI001","베이징공항","인천공항","2022-12-23 12:00","2022-12-23 13:30",158000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI002","베이징공항","인천공항","2022-12-23 09:00","2022-12-23 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI003","베이징공항","인천공항","2022-12-23 17:10","2022-12-23 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI017","베이징공항","인천공항","2022-12-23 09:00","2022-12-23 10:30",262900);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","베이징공항","인천공항","2022-12-23 12:00","2022-12-23 13:30",251800);

-- 베이징에서 인천오는 비행기(12월 24일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI004","베이징공항","인천공항","2022-12-24 12:00","2022-12-24 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI005","베이징공항","인천공항","2022-12-24 09:00","2022-12-24 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI006","베이징공항","인천공항","2022-12-24 17:10","2022-12-24 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI016","베이징공항","인천공항","2022-12-24 09:00","2022-12-24 10:30",263200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","베이징공항","인천공항","2022-12-24 12:00","2022-12-24 13:30",241700);

-- 베이징에서 인천오는 비행기(12월 25일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI007","베이징공항","인천공항","2022-12-25 12:00","2022-12-25 13:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI008","베이징공항","인천공항","2022-12-25 09:00","2022-12-25 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI009","베이징공항","인천공항","2022-12-25 17:10","2022-12-25 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI015","베이징공항","인천공항","2022-12-25 09:00","2022-12-25 10:30",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","베이징공항","인천공항","2022-12-25 12:00","2022-12-25 13:30",272200);

-- 베이징에서 인천오는 비행기(12월 26일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI010","베이징공항","인천공항","2022-12-26 12:00","2022-12-26 13:30",196000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI011","베이징공항","인천공항","2022-12-26 09:00","2022-12-26 10:30",185000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI012","베이징공항","인천공항","2022-12-26 17:10","2022-12-26 18:40",172300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI014","베이징공항","인천공항","2022-12-26 09:00","2022-12-26 10:30",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","베이징공항","인천공항","2022-12-26 12:00","2022-12-26 13:30",272200);

-- 베이징에서 인천오는 비행기(12월 27일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","베이징공항","인천공항","2022-12-27 12:00","2022-12-27 13:30",242000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI002","베이징공항","인천공항","2022-12-27 09:00","2022-12-27 10:30",224000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI013","베이징공항","인천공항","2022-12-27 17:10","2022-12-27 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI013","베이징공항","인천공항","2022-12-27 09:00","2022-12-27 10:30",264000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR014","베이징공항","인천공항","2022-12-27 12:00","2022-12-27 13:30",272200);

-- 상하이에서 인천오는 비행기(12월 20일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","상하이공항","인천공항","2022-12-20 11:00","2022-12-20 12:30",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE022","상하이공항","인천공항","2022-12-20 15:00","2022-12-20 16:30",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","상하이공항","인천공항","2022-12-20 19:20","2022-12-20 20:50",205500);

-- 상하이에서 인천오는 비행기(12월 21일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE024","상하이공항","인천공항","2022-12-21 12:00","2022-12-21 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE025","상하이공항","인천공항","2022-12-21 09:00","2022-12-21 10:30",181000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE026","상하이공항","인천공항","2022-12-21 17:10","2022-12-21 18:40",200300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI009","상하이공항","인천공항","2022-12-21 09:00","2022-12-21 10:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR010","상하이공항","인천공항","2022-12-21 12:00","2022-12-21 13:30",252200);

-- 상하이에서 인천오는 비행기(12월 22일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE027","상하이공항","인천공항","2022-12-22 12:00","2022-12-22 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE028","상하이공항","인천공항","2022-12-22 09:00","2022-12-22 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE029","상하이공항","인천공항","2022-12-22 17:10","2022-12-22 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI010","상하이공항","인천공항","2022-12-22 09:00","2022-12-22 10:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR011","상하이공항","인천공항","2022-12-22 12:00","2022-12-22 13:30",252200);

-- 상하이에서 인천오는 비행기(12월 23일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI001","상하이공항","인천공항","2022-12-23 12:00","2022-12-23 13:30",158000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI002","상하이공항","인천공항","2022-12-23 09:00","2022-12-23 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI003","상하이공항","인천공항","2022-12-23 17:10","2022-12-23 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI030","상하이공항","인천공항","2022-12-23 09:00","2022-12-23 10:30",254000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR030","상하이공항","인천공항","2022-12-23 12:00","2022-12-23 13:30",252200);

-- 상하이에서 인천오는 비행기(12월 24일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI004","상하이공항","인천공항","2022-12-24 12:00","2022-12-24 13:30",206000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI005","상하이공항","인천공항","2022-12-24 09:00","2022-12-24 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI006","상하이공항","인천공항","2022-12-24 17:10","2022-12-24 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI005","상하이공항","인천공항","2022-12-24 09:00","2022-12-24 10:30",253400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR006","상하이공항","인천공항","2022-12-24 12:00","2022-12-24 13:30",245600);


-- 상하이에서 인천오는 비행기(12월 25일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI007","상하이공항","인천공항","2022-12-25 12:00","2022-12-25 13:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI008","상하이공항","인천공항","2022-12-25 09:00","2022-12-25 10:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI009","상하이공항","인천공항","2022-12-25 17:10","2022-12-25 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI004","상하이공항","인천공항","2022-12-25 09:00","2022-12-25 10:30",223400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR005","상하이공항","인천공항","2022-12-25 12:00","2022-12-25 13:30",215600);

-- 상하이에서 인천오는 비행기(12월 22일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI010","상하이공항","인천공항","2022-12-26 12:00","2022-12-26 13:30",196000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI011","상하이공항","인천공항","2022-12-26 11:00","2022-12-26 12:30",185000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI012","상하이공항","인천공항","2022-12-26 14:10","2022-12-26 15:40",172300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI003","상하이공항","인천공항","2022-12-26 09:00","2022-12-26 10:30",223400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR011","상하이공항","인천공항","2022-12-26 12:00","2022-12-26 13:30",215600);

-- 상하이에서 인천오는 비행기(12월 27일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","상하이공항","인천공항","2022-12-27 12:00","2022-12-27 13:30",242000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI002","상하이공항","인천공항","2022-12-27 09:00","2022-12-27 10:30",224000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI013","상하이공항","인천공항","2022-12-27 17:10","2022-12-27 18:40",202300);


-- 방콕에서 인천오는 비행기(12월 20일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","방콕공항","인천공항","2022-12-20 10:00","2022-12-20 14:40",233000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA022","방콕공항","인천공항","2022-12-20 15:00","2022-12-20 19:30",253000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","방콕공항","인천공항","2022-12-20 19:20","2022-12-20 23:50",220500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA022","파타야공항","인천공항","2022-12-20 15:00","2022-12-20 19:30",273000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","파타야공항","인천공항","2022-12-20 19:20","2022-12-20 23:50",229500);

-- 방콕에서 인천오는 비행기(12월 21일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA023","방콕공항","인천공항","2022-12-21 12:00","2022-12-21 16:30",263000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA024","방콕공항","인천공항","2022-12-21 09:00","2022-12-21 13:30",261000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA025","방콕공항","인천공항","2022-12-21 17:10","2022-12-21 21:40",250300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA026","파타야공항","인천공항","2022-12-21 15:00","2022-12-21 19:30",313000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI021","파타야공항","인천공항","2022-12-21 19:20","2022-12-21 23:50",255500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR027","파타야공항","인천공항","2022-12-21 18:20","2022-12-21 22:50",304200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR028","방콕공항","인천공항","2022-12-21 12:10","2022-12-21 16:40",293100);

-- 방콕에서 인천오는 비행기(12월 22일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"ASI021","방콕공항","인천공항","2022-12-22 12:00","2022-12-22 16:30",236000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"ASI022","방콕공항","인천공항","2022-12-22 09:00","2022-12-22 13:30",244000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (1000,"ASI023","방콕공항","인천공항","2022-12-22 17:10","2022-12-22 21:40",231300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR022","파타야공항","인천공항","2022-12-22 15:00","2022-12-22 19:30",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","파타야공항","인천공항","2022-12-22 19:20","2022-12-22 23:50",245500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR025","파타야공항","인천공항","2022-12-22 16:50","2022-12-22 18:40",286400);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR026","방콕공항","인천공항","2022-12-22 15:15","2022-12-22 19:50",273100);

-- 방콕에서 인천오는 비행기(12월 23일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI001","방콕공항","인천공항","2022-12-23 11:00","2022-12-23 15:30",238000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI002","방콕공항","인천공항","2022-12-23 08:00","2022-12-23 12:30",244000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI003","방콕공항","인천공항","2022-12-23 07:30","2022-12-23 11:40",192300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE022","파타야공항","인천공항","2022-12-23 15:00","2022-12-23 19:30",213000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","파타야공항","인천공항","2022-12-23 18:20","2022-12-23 22:50",225500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR023","파타야공항","인천공항","2022-12-23 19:20","2022-12-23 23:55",286300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR024","방콕공항","인천공항","2022-12-23 14:30","2022-12-23 19:00",272400);


-- 방콕에서 인천오는 비행기(12월 24일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI004","방콕공항","인천공항","2022-12-24 12:00","2022-12-24 16:30",236000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI005","방콕공항","인천공항","2022-12-24 09:00","2022-12-24 13:30",199000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI006","방콕공항","인천공항","2022-12-24 17:10","2022-12-24 21:40",214200);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE022","파타야공항","인천공항","2022-12-24 15:00","2022-12-24 19:30",243000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI020","파타야공항","인천공항","2022-12-24 19:20","2022-12-24 23:50",205000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR021","파타야공항","인천공항","2022-12-24 19:20","2022-12-24 23:50",283300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR022","방콕공항","인천공항","2022-12-24 18:20","2022-12-24 22:50",279000);

-- 방콕에서 인천오는 비행기(12월 25일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA014","방콕공항","인천공항","2022-12-25 12:00","2022-12-25 16:30",202000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA015","방콕공항","인천공항","2022-12-25 09:00","2022-12-25 13:30",184000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA016","파타야공항","인천공항","2022-12-25 17:10","2022-12-25 21:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE019","파타야공항","인천공항","2022-12-25 15:00","2022-12-25 19:30",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI009","파타야공항","인천공항","2022-12-25 19:20","2022-12-25 23:50",205500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR019","파타야공항","인천공항","2022-12-25 19:20","2022-12-25 23:50",284000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR020","방콕공항","인천공항","2022-12-25 18:20","2022-12-25 22:50",263000);
-- 방콕에서 인천오는 비행기(12월 26일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI015","방콕공항","인천공항","2022-12-26 12:00","2022-12-26 16:30",196000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI016","방콕공항","인천공항","2022-12-26 11:00","2022-12-26 13:30",185000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (900,"THA017","파타야공항","인천공항","2022-12-26 14:10","2022-12-26 21:40",172300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE028","파타야공항","인천공항","2022-12-26 15:00","2022-12-26 19:30",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI007","파타야공항","인천공항","2022-12-26 19:20","2022-12-26 23:50",205500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR017","파타야공항","인천공항","2022-12-26 19:20","2022-12-26 23:50",285500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR018","방콕공항","인천공항","2022-12-26 18:20","2022-12-26 22:50",265000);
-- 방콕에서 인천오는 비행기(12월 27일)
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR014","파타야공항","인천공항","2022-12-27 12:00","2022-12-27 13:30",242000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI002","방콕공항","인천공항","2022-12-27 09:00","2022-12-27 10:30",224000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (800,"CHI013","방콕공항","인천공항","2022-12-27 17:10","2022-12-27 18:40",202300);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (700,"CHE022","파타야공항","인천공항","2022-12-27 15:00","2022-12-27 16:30",193000);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (200,"ASI010","파타야공항","인천공항","2022-12-27 19:20","2022-12-27 20:50",205500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR015","파타야공항","인천공항","2022-12-27 19:20","2022-12-27 20:50",295500);
INSERT INTO Air_schedule(Air_num,Airplane_name,Start_Airport_name,End_Airport_name,Start_time,End_time,Schedule_price) VALUES (100,"KOR016","방콕공항","인천공항","2022-12-27 19:20","2022-12-27 20:50",295500);



-- 좌석 INSERT문
INSERT INTO Seat (Seat_position,Seat_grade,Seat_name,Plus_Seat_price) VALUES ("A",0,"일등석",3);
INSERT INTO Seat (Seat_position,Seat_grade,Seat_name,Plus_Seat_price) VALUES ("B",1,"비즈니스석",2);
INSERT INTO Seat (Seat_position,Seat_grade,Seat_name,Plus_Seat_price) VALUES ("C",2,"일반석",1);


/*--------------------------------------------------호텔구분선-------------------------------------------------------*/


# HOTEL, HOTEL_OPTION, ROOM, ROOM_DETAIL

/* 3차 수정 : room_id 를 auto_increment로 변경-> 그에 해당하는 id값 모두 변경함*/
/* 4차 수정 : hotel_id값 변경 완료 ( 'ht' + 도시코드 3자리 + 001.. 002.. ) */
/* 5차 수정 : hotel_score 컬럼 삭제 -> 해당 값도 모두 삭제함 */
/* 6차 수정 : room테이블에 room_per추가하고 값 이동 , detail 테이블에 date값 추가, insert 데이터도 그에 맞춰 수정 */
/* 7차 수정 : 사진 insert문 추가 */

/* 국내 */

### 제주 1

INSERT INTO HOTEL VALUES('ht140001', 140, '서귀포 JS 호텔', 'SEOGWIPO JS HOTEL(EX. VALUE HOTEL SEOGWIPO JS)', '김정문화로 51 서귀포시', 'hotel', 3.5, '064-802-3000', 219, '14:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140001', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(1, 'ht140001', '스탠다드룸', '스탠다드 (더블 또는 트윈)', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(2, 'ht140001', '스탠다드룸', '스탠다드 트윈', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(3, 'ht140001', '디럭스룸', '디럭스 트윈룸, 부분 바다 전망', 6);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(4, 'ht140001', '디럭스룸', '디럭스 트윈', 6);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-20','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-20','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-20','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-21','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-21','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-21','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-22','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-22','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-22','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-23','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-23','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-23','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-23','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-23','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-24','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-24','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-24','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-24','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-24','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-25','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-25','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-25','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-25','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 62700, '2022-12-25','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-26','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-26','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-26','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-26','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-26','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-27','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-27','Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(1, 51150, '2022-12-27','Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 70418, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(2, 53789, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 80473, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(3, 61149, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 75551, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(4, 61371, '2022-12-27', 'Y');

### 제주 2

INSERT INTO HOTEL VALUES('ht140002', 140, '베스트 웨스턴 제주 호텔', 'BEST WESTERN JEJU', '도령로 27 제주시', 'hotel', 4, '82-64-797-6000', 363, '15:00:00', '11:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '흡연가능', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht140002', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(5, 'ht140002', '트래디셔널룸', '트래디셔널룸, 금연 (2 Japanese futons)', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(6, 'ht140002', '스탠다드룸', '[룸온리] 스탠다드 온돌', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(7, 'ht140002', '디럭스룸', '[룸온리] 디럭스 패밀리 트윈', 6);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(8, 'ht140002', '디럭스룸', '[룸온리] 디럭스 트윈', 6);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(5, 62443, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(5, 62443, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(5, 62443, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(5, 62443, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(5, 62443, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(5, 62443, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(5, 62443, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(5, 62443, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(6, 65000, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(6, 65000, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(6, 65000, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(6, 65000, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(6, 65000, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(6, 65000, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(6, 65000, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(6, 65000, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(7, 105000, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(7, 105000, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(7, 105000, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(7, 105000, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(7, 105000, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(7, 105000, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(7, 105000, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(7, 105000, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(8, 75000, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(8, 75000, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(8, 75000, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(8, 75000, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(8, 75000, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(8, 75000, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(8, 75000, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(8, 75000, '2022-12-27', 'Y');

----------------------------------------------------------------------------------------------------------

### 인천 1
INSERT INTO HOTEL VALUES('ht110001', 110, '데이즈 호텔 앤 스위트 인천 에어포트', 'DAYS HOTEL AND SUITE INCHEON AIRPORT HOTEL', '신도시남로142번길 6 중구 인천광역시', 'hotel', 3, '032-722-3000', 349, '15:00:00', '11:00:00' );

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '흡연가능', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110001', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(9, 'ht110001', '슈페리어룸', '슈페리어 더블룸', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(10, 'ht110001', '디럭스룸', '디럭스 트윈룸', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(11, 'ht110001', '패밀리룸', '패밀리 스위트룸', 6);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 147557, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(9, 92991, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 172128, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(10, 104625, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 270504, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-27', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(11, 162754, '2022-12-27', 'Y');



### 인천 2

INSERT INTO HOTEL VALUES('ht110002', 110, '오라카이 송도파크 호텔', 'DAYS HOTEL AND SUITE INCHEON AIRPORT HOTEL', '연수구 테크노파크로 151 인천광역시', 'hotel', 4, '032-210-7000', 275, '15:00:00', '11:00:00' );

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '흡연가능', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht110002', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(12, 'ht110002', '스탠다드룸', '룸 (샤워실, 장애인 친화형)', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(13, 'ht110002', '디럭스룸', '디럭스 트윈룸', 6);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(14, 'ht110002', '주니어스위트룸', '주니어스위트룸', 6);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(12, 148545, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(12, 148545, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(12, 148545, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(12, 148545, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(12, 148545, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(12, 148545, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(12, 148545, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(12, 148545, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(13, 118363, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(13, 118363, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(13, 118363, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(13, 118363, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(13, 118363, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(13, 118363, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(13, 118363, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(13, 118363, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(14, 194466, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(14, 194466, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(14, 194466, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(14, 194466, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(14, 194466, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(14, 194466, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(14, 194466, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(14, 194466, '2022-12-27', 'Y');

----------------------------------------------------------------------------------------------------------

### 여수 1
INSERT INTO HOTEL VALUES('ht120001', 120, '히든 베이 호텔', 'HIDDEN BAY HOTEL', '신월로 496-25 여수시', 'hotel', 4, '82-61-680-3000', 131, '15:00:00', '11:00:00' );

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '흡연가능', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '발코니/테라스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120001', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(15,'ht120001', '스탠다드룸', '스탠다드 레지던스 더블룸, 바다전망', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(16,'ht120001', '슈페리어룸', '디럭스 온돌 (침대), 바다 전망', 5);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(15, 160924, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(15, 160924, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(15, 160924, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(15, 160924, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(15, 160924, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(15, 160924, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(15, 160924, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(15, 160924, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(16, 160924, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(16, 160924, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(16, 160924, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(16, 160924, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(16, 160924, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(16, 160924, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(16, 160924, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(16, 160924, '2022-12-27', 'Y');


### 여수 2

INSERT INTO HOTEL VALUES('ht120002', 120, '베니키아 호텔 여수', 'BENIKEA HOTEL YEOSU', '시청서6길 19 여수시', 'hotel', 3, '061-662-0001', 50, '14:00:00', '12:00:00' );

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '흡연가능', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '발코니/테라스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht120002', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(17, 'ht120002', '스탠다드룸', '스탠다드룸, 시내 전망', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(18, 'ht120002', '슈페리어룸', '슈페리어 트윈룸, 바다 전망', 5);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(19, 'ht120002', '디럭스룸', '디럭스룸, 테라스, 바다 전망', 5);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(20, 'ht120002', '스위트룸', '스위트, 바다 전망 (Twin)', 6);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(21, 'ht120002', '스위트룸', '패밀리 스위트, 바다 전망', 6);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(17, 83880, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(17, 83880, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(17, 83880, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(17, 83880, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(17, 83880, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(17, 83880, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(17, 83880, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(17, 83880, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(18, 89919, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(18, 89919, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(18, 89919, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(18, 89919, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(18, 89919, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(18, 89919, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(18, 89919, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(18, 89919, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(19, 120180, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(19, 120180, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(19, 120180, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(19, 120180, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(19, 120180, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(19, 120180, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(19, 120180, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(19, 120180, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(20, 131435, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(20, 131435, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(20, 131435, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(20, 131435, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(20, 131435, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(20, 131435, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(20, 131435, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(20, 131435, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(21, 172074, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(21, 172074, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(21, 172074, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(21, 172074, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(21, 172074, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(21, 172074, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(21, 172074, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(21, 172074, '2022-12-27', 'Y');


----------------------------------------------------------------------------------------------------------

### 부산 1

INSERT INTO HOTEL VALUES('ht130001', 130, '라마다 앙코르 해운대', 'RAMADA ENCORE HAEUNDAE', '해운대구 구남로 9 부산광역시', 'hotel', 4, '81-51-610-3000', 402, '15:00:00', '11:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '흡연가능', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '발코니/테라스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130001', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(22, 'ht130001', '디럭스룸', '디럭스 트윈', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(23, 'ht130001', '슈페리어룸', '슈피리어 더블룸', 5);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(22, 90000,'2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(22, 90000,'2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(22, 90000,'2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(22, 90000,'2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(22, 90000,'2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(22, 90000,'2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(22, 90000,'2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(22, 90000,'2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(23, 100651, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(23, 100651, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(23, 100651, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(23, 100651, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(23, 100651, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(23, 100651, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(23, 100651, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(23, 100651, '2022-12-27', 'Y');




### 부산 2

INSERT INTO HOTEL VALUES('ht130002', 130, '미디호텔부산', 'MIDI HOTEL BUSAN', '영도구 태종로 45 부산광역시', 'hotel', 3, '81-51-610-3000', 402, '15:00:00', '11:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '흡연가능', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '발코니/테라스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht130002', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(24, 'ht130002', '스탠다드룸', '스탠다드 트리플룸 싱글침대 3개, 욕조', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(25, 'ht130002', '디럭스룸', '디럭스 더블룸, 항구 전망', 5);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(24, 85423, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(24, 85423, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(24, 85423, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(24, 85423, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(24, 85423, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(24, 85423, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(24, 85423, '2022-12-26', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(25, 95030, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(25, 95030, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(25, 95030, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(25, 95030, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(25, 95030, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(25, 95030, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(25, 95030, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(25, 95030, '2022-12-27', 'Y');




----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

/* 해외 */

### 오사카 1
INSERT INTO HOTEL VALUES('ht220001', 220, '인터컨티넨탈 오사카, IHG 호텔', 'InterContinental Osaka, IHG Hotel', '3 Chome-60 Ofukacho, Kita Ward, Osaka', 'hotel', 5, '81-6-6374-5700', 272, '15:00:00', '11:00:00' );

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '레스토랑', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220001', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(26, 'ht220001', '프리미엄룸', 'Premium Room, 1 King Bed, City view', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(27, 'ht220001', '프리미엄룸', '1 King Premium City View', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(28, 'ht220001', '배드룸', 'Room, 1 Bedroom, City view (Residence)', 6);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(29, 'ht220001', '배드룸', '1 King 2 Single 2 Bedroom Residence', 6);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(26, 678257, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(26, 678257, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(26, 678257, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(26, 678257, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(26, 678257, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(26, 678257, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(26, 678257, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(26, 678257, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(27, 691795, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(27, 691795, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(27, 691795, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(27, 691795, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(27, 691795, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(27, 691795, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(27, 691795, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(27, 691795, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(28, 901018, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(28, 901018, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(28, 901018, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(28, 901018, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(28, 901018, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(28, 901018, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(28, 901018, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(28, 901018, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(29, 1540394, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(29, 1540394, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(29, 1540394, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(29, 1540394, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(29, 1540394, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(29, 1540394, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(29, 1540394, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(29, 1540394, '2022-12-27', 'Y');

### 오사카2
INSERT INTO HOTEL VALUES('ht220002', 220, '이비스 스타일스 오사카 남바', 'Ibis Styles Osaka Namba', '2-13 Soemon-cho Chuo-ku, Osaka', 'hotel', 3, '81-6-6211-3555', 343, '14:00:00', '11:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht220002', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(30, 'ht220002', '스탠다드룸', 'Standard Plus Room with 1 Queen bed', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(31, 'ht220002', '스탠다드룸', 'Standard Room, 1 Queen Bed, Accessible (Plus)', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(32, 'ht220002', '슈페리어룸', 'Superior Room 2 Single Beds + 1 Sofa Bed', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(33, 'ht220002', '슈페리어룸', 'Superior Room 2 Single Beds + 1 Sofa Bed With Guest Lounge Access', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(30, 163699, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(30, 163699, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(30, 163699, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(30, 163699, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(30, 163699, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(30, 163699, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(30, 163699, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(30, 163699, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(31, 184907, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(31, 184907, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(31, 184907, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(31, 184907, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(31, 184907, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(31, 184907, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(31, 184907, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(31, 184907, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(32, 255722, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(32, 255722, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(32, 255722, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(32, 255722, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(32, 255722, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(32, 255722, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(32, 255722, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(32, 255722, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(33, 301179, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(33, 301179, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(33, 301179, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(33, 301179, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(33, 301179, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(33, 301179, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(33, 301179, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(33, 301179, '2022-12-27', 'Y');


### 후쿠오카1
INSERT INTO HOTEL VALUES('ht210001', 210, '호텔 니코 후쿠오카', 'Hotel Nikko Fukuoka', '2 Chome-18-25 Hakata Ekimae, Hakata Ward, Fukuoka', 'hotel', 4, '81-92-482-1111', 360, '14:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '흡연가능', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210001', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(34, 'ht210001', '스위트룸', 'Luxury Suite, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(35, 'ht210001', '스위트룸', 'Garden Suite, Non Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(34, 1209939, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(34, 1209939, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(34, 1209939, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(34, 1209939, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(34, 1209939, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(34, 1209939, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(34, 1209939, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(34, 1209939, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(35, 1290585, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(35, 1290585, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(35, 1290585, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(35, 1290585, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(35, 1290585, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(35, 1290585, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(35, 1290585, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(35, 1290585, '2022-12-27', 'Y');



### 후쿠오카2
INSERT INTO HOTEL VALUES('ht210002', 210, '더 비 하카타', 'The B Hakata', '1 Chome-3-9 Hakataekiminami, Hakata Ward, Fukuoka', 'hotel', 3, '81-92-415-3333', 175, '15:00:00', '11:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht210002', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(36, 'ht210002', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(37, 'ht210002', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(36, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(36, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(36, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(36, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(36, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(36, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(36, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(36, 78593, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(37, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(37, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(37, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(37, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(37, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(37, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(37, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(37, 108581, '2022-12-27', 'Y');


-------------------------------------------------------------------------------------------------

### 베이징1

INSERT INTO HOTEL VALUES('ht310001', 310, '파크 플라자 베이징 왕푸징', 'PARK PLAZA BEIJING WANGFUJING', '97 Jinbao St Dongcheng Distrt Beijing 100005', 'hotel', 4, '86-10-8522-1999', 216, '14:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310001', '안전금고', '편의', 'N');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(38, 'ht310001', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(39, 'ht310001', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(38, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(38, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(38, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(38, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(38, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(38, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(38, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(38, 78593, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(39, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(39, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(39, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(39, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(39, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(39, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(39, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(39, 108581, '2022-12-27', 'Y');


### 베이징2

INSERT INTO HOTEL VALUES('ht310002', 310, '베이징 더블 해피니스 호텔', 'BEIJING DOUBLE HAPPINESS COURTYARD HOTEL', '37 Dongsi Sitiao Dongcheng District', 'hotel', 3, '86-10-6400-7762', 31, '12:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht310002', '안전금고', '편의', 'Y');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(40, 'ht310002', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(41, 'ht310002', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(40, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(40, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(40, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(40, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(40, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(40, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(40, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(40, 78593, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(41, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(41, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(41, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(41, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(41, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(41, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(41, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(41, 108581, '2022-12-27', 'Y');


### 상하이1

INSERT INTO HOTEL VALUES('ht320001', 320, '센트럴 호텔 상하이', 'CENTRAL HOTEL SHANGHAI', 'No 555 Jiujiang Road', 'hotel', 4, '86-21-5396-5000', 312, '14:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320001', '안전금고', '편의', 'Y');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(42, 'ht320001', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(43, 'ht320001', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(42, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(42, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(42, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(42, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(42, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(42, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(42, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(42, 78593, '2022-12-27', 'Y');


INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(43, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(43, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(43, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(43, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(43, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(43, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(43, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(43, 108581, '2022-12-27', 'Y');

### 상하이2 

INSERT INTO HOTEL VALUES('ht320002', 320, '캄파닐레 상하이 분드 호텔', 'CAMPANILE SHANGHAI BUND HOTEL', 'No.33 Fujian S Rd, Huangpu Qu', 'hotel', 3, '86-21-5396-5000', 312, '12:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht320002', '안전금고', '편의', 'Y');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(44, 'ht320002', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(45, 'ht320002', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(44, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(44, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(44, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(44, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(44, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(44, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(44, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(44, 78593, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(45, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(45, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(45, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(45, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(45, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(45, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(45, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(45, 108581, '2022-12-27', 'Y');


----------------------------------------------------------------------------------------------------------

## 방콕1

INSERT INTO HOTEL VALUES('ht410001', 410, '람부뜨리 빌리지 인 & 플라자', 'RAMBUTTRI VILLAGE INN AND PLAZA', '95 Soi Ram Buttri Chakkra Phong Road, Phra Nakorn', 'hotel', 3, '66-2-282-9162', 200, '14:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410001', '안전금고', '편의', 'Y');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(46, 'ht410001', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(47, 'ht410001', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(46, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(46, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(46, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(46, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(46, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(46, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(46, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(46, 78593, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(47, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(47, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(47, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(47, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(47, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(47, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(47, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(47, 108581, '2022-12-27', 'Y');

## 방콕2
INSERT INTO HOTEL VALUES('ht410002', 410, '머큐어 방콕 수쿰윗 11', 'MERCURE BANGKOK SUKHUMVIT 11', '18 Sukhumvit Soi 11 Bangkok 10110 Thailand', 'hotel', 4, '66-2-120-8888', 232, '14:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht410002', '안전금고', '편의', 'Y');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(48, 'ht410002', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(49, 'ht410002', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(48, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(48, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(48, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(48, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(48, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(48, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(48, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(48, 78593, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(49, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(49, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(49, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(49, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(49, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(49, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(49, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(49, 108581, '2022-12-27', 'Y');

## 파타야1

INSERT INTO HOTEL VALUES('ht420001', 420, 'LK 프레지던트', 'LK PRESIDENT', '340/123 Moo 9, Pattaya 3rd Road Nongprue Banglamung,Pattaya, Chonburi, Thailand 20150', 'hotel', 3, '66-38-720999', 190, '14:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420001', '안전금고', '편의', 'Y');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(50, 'ht420001', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(51, 'ht420001', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(50, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(50, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(50, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(50, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(50, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(50, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(50, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(50, 78593, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(51, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(51, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(51, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(51, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(51, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(51, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(51, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(51, 108581, '2022-12-27', 'Y');




## 파타야2

INSERT INTO HOTEL VALUES('ht420002', 420, '아바니 파타야 리조트', 'AVANI PATTAYA RESORT', '218/2-4 Moo 10, Beach Road, Pattaya 20260 Thailand', 'resort', 5, '66-38-412-120', 300, '14:00:00', '12:00:00');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', 'wifi', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '흡연가능', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '레스토랑', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '주차', '부대', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '쇼핑시설', '부대', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '전기차 충전소', '부대', 'N');

INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '욕실용품', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '커피 메이커', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '룸서비스', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '장애인 편의시설', '편의', 'Y');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '발코니/테라스', '편의', 'N');
INSERT INTO hotel_option (hotel_id, hotel_option, option_gubun, hotel_exist) VALUES('ht420002', '안전금고', '편의', 'Y');

INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(52, 'ht420002', '스탠다드룸', 'Standard Double Room, Non Smoking, Non Smoking', 4);
INSERT INTO room (room_id, hotel_id, room_type, room_name, room_per) VALUES(53, 'ht420002', '디럭스룸', 'Deluxe Twin Non-Smoking', 4);

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(52, 78593, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(52, 78593, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(52, 78593, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(52, 78593, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(52, 78593, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(52, 78593, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(52, 78593, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(52, 78593, '2022-12-27', 'Y');

INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(53, 108581, '2022-12-20', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(53, 108581, '2022-12-21', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(53, 108581, '2022-12-22', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(53, 108581, '2022-12-23', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(53, 108581, '2022-12-24', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(53, 108581, '2022-12-25', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(53, 108581, '2022-12-26', 'Y');
INSERT INTO room_detail (room_id, room_price, room_date, room_rev) VALUES(53, 108581, '2022-12-27', 'Y');


## hotel_image

INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht110001', '/img/hotel/hotelthumb/ht110001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht110002', '/img/hotel/hotelthumb/ht110002.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht120001', '/img/hotel/hotelthumb/ht120001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht120002', '/img/hotel/hotelthumb/ht120002.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht130001', '/img/hotel/hotelthumb/ht130001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht130002', '/img/hotel/hotelthumb/ht130002.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht140001', '/img/hotel/hotelthumb/ht140001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht140002', '/img/hotel/hotelthumb/ht140002.jpg');

INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht210001', '/img/hotel/hotelthumb/ht210001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht210002', '/img/hotel/hotelthumb/ht210002.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht220001', '/img/hotel/hotelthumb/ht220001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht220002', '/img/hotel/hotelthumb/ht220002.jpg');

INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht310001', '/img/hotel/hotelthumb/ht310001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht310002', '/img/hotel/hotelthumb/ht310002.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht320001', '/img/hotel/hotelthumb/ht320001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht320002', '/img/hotel/hotelthumb/ht320002.jpg');

INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht410001', '/img/hotel/hotelthumb/ht410001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht410002', '/img/hotel/hotelthumb/ht410002.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht420001', '/img/hotel/hotelthumb/ht420001.jpg');
INSERT INTO hotel_image(hotel_id, h_img_path) VALUES('ht420002', '/img/hotel/hotelthumb/ht420002.jpg');

## room_image

INSERT INTO room_image(room_id, r_img_path) VALUES(1, '/img/hotel/room/ht140001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(2, '/img/hotel/room/ht140001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(3, '/img/hotel/room/ht140001_3.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(4, '/img/hotel/room/ht140001_4.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(5, '/img/hotel/room/ht140002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(6, '/img/hotel/room/ht140002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(7, '/img/hotel/room/ht140002_3.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(8, '/img/hotel/room/ht140002_4.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(9, '/img/hotel/room/ht110001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(10, '/img/hotel/room/ht110001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(11, '/img/hotel/room/ht110001_3.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(12, '/img/hotel/room/ht110002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(13, '/img/hotel/room/ht110002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(14, '/img/hotel/room/ht110002_3.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(15, '/img/hotel/room/ht120001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(16, '/img/hotel/room/ht120001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(17, '/img/hotel/room/ht120002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(18, '/img/hotel/room/ht120002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(19, '/img/hotel/room/ht120002_3.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(20, '/img/hotel/room/ht120002_4.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(21, '/img/hotel/room/ht120002_5.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(22, '/img/hotel/room/ht130001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(23, '/img/hotel/room/ht130001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(24, '/img/hotel/room/ht130002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(25, '/img/hotel/room/ht130002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(26, '/img/hotel/room/ht220001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(27, '/img/hotel/room/ht220001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(28, '/img/hotel/room/ht220001_3.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(29, '/img/hotel/room/ht220001_4.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(30, '/img/hotel/room/ht220002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(31, '/img/hotel/room/ht220002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(32, '/img/hotel/room/ht220002_3.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(33, '/img/hotel/room/ht220002_4.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(34, '/img/hotel/room/ht210001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(35, '/img/hotel/room/ht210001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(36, '/img/hotel/room/ht210002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(37, '/img/hotel/room/ht210002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(38, '/img/hotel/room/ht310001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(39, '/img/hotel/room/ht310001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(40, '/img/hotel/room/ht310002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(41, '/img/hotel/room/ht310002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(42, '/img/hotel/room/ht320001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(43, '/img/hotel/room/ht320001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(44, '/img/hotel/room/ht320002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(45, '/img/hotel/room/ht320002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(46, '/img/hotel/room/ht410001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(47, '/img/hotel/room/ht410001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(48, '/img/hotel/room/ht410002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(49, '/img/hotel/room/ht410002_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(50, '/img/hotel/room/ht420001_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(51, '/img/hotel/room/ht420001_2.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(52, '/img/hotel/room/ht420002_1.jpg');
INSERT INTO room_image(room_id, r_img_path) VALUES(53, '/img/hotel/room/ht420002_2.jpg');


/*-------------------------------------------------패키지구분선-------------------------------------------------------*/

/*
2차 수정
1. package 테이블 pkage_id 변경
2. package_flightSche 테이블 pkage_gubun --> pkage_flight_gubun 변경
*/

/*
4차 수정
1. package 테이블 pkage_score 삭제 변경
*/

# attraction 테이블
-------------------------------
-- 관광지 insert 문 (국내)
-------------------------------
-- 인천 110
insert into attraction values (1101, 110, '월미바다열차', 'Wolmi Sea Train', 
'인천 월미도를 순환하는 우리나라에서 가장 긴 모노레일로, 월미도 한 바퀴를 도는데 약 42분 정도 소요됩니다. 월미도 경관 및 서해와 인천내항, 인천대교까지 조망할 수 있습니다.');

insert into attraction values (1102, 110, '차이나타운', 'China town', 
'인천역에서 하차하면 건너편에 위치한 중국풍 거리를 만나볼 수 있는데 이 곳이 인천의 새로운 명물로 떠오르는 차이나타운입니다. 1884년 조계를 맺은 이후로 화교도들이 주택과 상점을 짓고 사는데서 시작하여 오늘날의 차이나타운으로 발전하였습니다. 이곳에서는 개항장 시절의 많은 역사적 기록들이 남아있고 중국의 날, 자장면 축제 등 다양한 이벤트와 볼거리를 제공하여 많은 사람들이 찾고 있습니다.');

insert into attraction values (1103, 110, '개항장 문화거리', 'Gaehangjang culture street', 
'1883년 인천 개항 이후 130년이 넘는 기간 동안의 역사와 근대역사 문화재들이 보존되어 있는 장소로서 크고 작은 볼거리를 제공합니다.');

insert into attraction values (1104, 110, '소래포구', 'Sorapogu', 
'수도권에서 가장 쉽게 바다를 느낄 수 있는 소래포구는 아픈 역사를 가지고 있습니다. 일제강점기 당시 화약의 원료인 양질의 소금을 수탈하기 위해 철도를 건설하였고, 해방 후 실향민들이 새우젓을 만들어 팔면서 포구로 발전하기 시작했습니다.');

insert into attraction values (1105, 110, '송도 센트럴파크', 'Songdo central park', 
'송도에 위치한 센트럴파크는 이곳이 한국이 맞나 싶을 정도로 아름다운 공원입니다. 현대적인 건물과 한옥의 공존, 세련된 인공 호수로 외국에 와 있는 듯한 기분을 느낄 수 있습니다. 특히 이곳은 야경이 멋진 곳으로 유명합니다.');


-- 여수 120
insert into attraction values (1201, 120, '여수해상케이블카', 'Yeosu Cable Car', 
'여수 해상케이블카는 여수시의 바다를 가로짓는 케이블카로 2014년 12월부터 운행을 시작하였다. 오동도 입구 자산공원에서부터 돌산도 돌산공원을 잇는다. 아시아에서는 홍콩, 싱가포르, 베트남에 이어 네번째, 대한민국에서는 첫번째로 설치된 해상 케이블카이다. 2017년 현재 크리스탈 케빈 10대와 일반 케빈 40대, 총 50대의 케이블카가 운영되고 있다. 크리스탈 케빈은 바닥을 강화유리로 만들어 스릴감과 조망권을 즐길 수 있는 특징이 있다.');

insert into attraction values (1202, 120, '돌산공원', 'Dolsan Park', 
'돌산공원은 전라남도 여수시 돌산읍 우두리에 위치한 공원이다.');

insert into attraction values (1203, 120, '금오도 비렁길', 'Bileong-Gil', 
'문화체육관광부 선정 "한국의 으뜸명소" 금오도 탐방입니다. 해안절벽을 따라 개설된 환상적인 금오도 비렁길을 걷습니다. 송광사 절터~미역널바위~용두~함구미 선착장 (총 2km) 코스입니다.');

insert into attraction values (1204, 120, '해양레일바이크', 'Yeosu Ocean Rail Bike', 
'국내 최초 전구간 해안가를 달리는 해양레일바이크 체험. 아름다운 해안가를 배경으로 4.1Km 레일바이크 체험을 할 수 있습니다.');

insert into attraction values (1205, 120, '오동도', 'Odongdo', 
'한국의 아름다운 길 100선에 꼽힌 낭만적인 길입니다. 1968년 우리나라 최초의 해상 국립공원으로 지정된 곳입니다. 섬의 모양이 마치 오동나무 잎사귀처럼 생겼다 하여 오동도라고 불리게 되었습니다. 섬의 명물인 동백나무와 190여 종의 수목이 숲을 이루고 있어 동백섬, 바다의 꽃섬이라 불립니다.');

insert into attraction values (1206, 120, '풍물시장', 'Folk Flea Market', 
'진남관, 이순신광장 등을 자유관람 합니다. 다양한 먹거리가 있는 풍물시장에서 자유롭게 식사를 할 수 있습니다.');


-- 부산 130
insert into attraction values (1301, 130, '송도 해상 케이블카', 'Songdo Bay Station', 
'부산 송도 해상 케이블카는 송도해수욕장과 암남공원, 남항대교의 절경을 한눈에 즐길 수 있습니다. 바다 위를 가로질러 운행하여 시원함과 즐거움을 더하고, 최신형 캐빈을 사용하여 쾌적한 탑승환경을 만들고 있습니다. 케이블카를 타고 스카이파크에 올라가면 다이노 어드벤쳐 등 다양한 테마 시설과 체험시설이 있어 특별함을 더합니다.');

insert into attraction values (1302, 130, '해운대 동백섬', 'Dongback isiand', 
'가수 조용필의 노랫가락에도 소개되는 해운대의 동백섬은 원래는 독립된 섬이었으나 현재는 육지가 되었습니다. 동백섬 안에는 세계의 정상들이 모여 회의를 하던 누리마루APEC하우스가 있습니다. 소나무와 동백숲으로 울창하여 사시사철 늘 푸르고 광안대교와 오륙도를 조망 할 수 있습니다.');

insert into attraction values (1303, 130, 'UN기념공원', 'UN Memorial Cemetery', 
'UN기념공원은 한국전쟁이 일어난 이듬해인 1951년 1월 전사자 매장을 위해 유엔군 사령부가 건립하고, 개성,인천, 대구 등지에 가매장 되어 있던 유엔군 전몰장병들의 유해를 안장하기 시작한 세계 유일의 유엔군 묘지이다. 대한민국 국회는 유엔군의 희생에 보답하기 위해 이곳 토지를 유엔에 영구히 기증하고, 묘지를 성지로 결의하였다.');

insert into attraction values (1304, 130, '부산 프라이빗 요트 투어', 'private yacht', 
'요트를 타고 수영강, 해운대, 광안리 일대의 아름다운 관광 자원을 한 번에 즐길 수 있는 경험을 선사합니다. 부산의 아름다운 경치를 이색경험을 통해 편안하게 즐길 수 있습니다. 특별한 프리미엄 요트와 함께 바다를 가로지르는 항해의 즐거움을 느껴보세요. 맥주 or 음료 1인 1EA, 스낵제공, 음식물 및 주류 반입 가능합니다.');

insert into attraction values (1305, 130, '부산아쿠아리움', 'Busan aquarium', 
'2001년 11월에 개관한 부산아쿠아리움은 지상1층 지하3층, 40개의 테마별 수족관, 80m 심해의 신비를 경험할 수 있는 해저터널, 시뮬레이터, 생생한 체험을 경험해 볼 수 있는 터치풀 등을 갖추고 있다. 높이가 7m인 수족관은 방문자들에게 매우 깊은 인상을 주며, 겨울에는 수족관 안의 산타와 루돌프 모형도 볼 수 있다.');

insert into attraction values (1306, 130, '자갈치시장', 'Jagalchi market', 
'비릿한 바다 내음과 갓 잡아 올린 파닥거리는 생선, “오이소! 보이소! 사이소!”를 목청껏 내지르는 투박하지만 정겨운 자갈치 아지매들의 우렁찬 함성이 어우러져 일년 내내 생동감이 넘치는 이 곳, 부산 자갈치 시장!! 매년 10월이면 이곳에서 흥겨운 수산물축제 한마당이 펼쳐지기도 하다. 오이소! 보이소! 사이소! 라는 슬로건 아래 부산자갈치축제는 「맨손으로 장어잡기」,「회이름 맞추기」,「낙지속의 진주찾기」등 여는 마당, 오이소 마당, 보이소 마당, 사이소 마당 등 4개 마당, 29여개 체험참여프로그램으로 구성되어 있다.');

insert into attraction values (1307, 130, '감천문화마을', 'Gamcheon Culture Village', 
'6.25 피난민이 일구었던 삶의 터전이 남아있는 감천문화마을은, 부산의 민족현대사 역사가 간직되어 있는 곳입니다. 산자락을 따라 미로형식으로 계단식 주거 형태가 이루어져 있는 감천의 특색과 지역의 의미를 살리기 위하여 마을주민들이 감천문화마을을 만들었습니다. 감천문화마을의 독특한 경관을 보기 위해 많은 관광객이 방문하고 있습니다.');

insert into attraction values (1308, 130, '영도대교', 'Yeongdo Bridge', 
'영도대교는 부산 중구와 영도를 연결하는 유일한 일엽식 도개교입니다. 큰 배가 다리를 지날 때 걸리지 않게 하기 위하여 도개식으로 설계하였고, 1934년에 준공되어 하루 6회씩 다리의 한쪽을 들어 올려 선박을 지나가게 하여 부산의 명물이 되었습니다. 1966년 9월 이후 기계가 노후되어 47년 동안 다리를 들어 올리지 못하였으나, 현재는 도개 기능을 복원하여 매일 낮 2시에 도개 행사를 하고 있습니다.');

insert into attraction values (1309, 130, '국제시장', 'International market', 
'국제시장은 한때 우리나라에서 가장 거래규모가 큰 상업도시로서 부산을 알리게 해준 존재이다. 부산하면 남녀노소 국제시장을 떠올릴만큼 우리나라에서 상품유통의 상징으로 많은 관광객이 찾는 부산의 명소이다. 의류, 잡화, 먹거리 까지 없는게 없는 시장으로 많은 사람들의 입맛에 맞는 곳이다.');


-- 제주도 140
insert into attraction values (1401, 140, '금오름', 'Geumoreum', 
'금오름은 제주 서부의 오름 중에서도 잘 알려지지 않은 나만 알고 싶은 오름입니다. 이곳에서는 분화구에 직접 들어가는 놀라운 경험을 즐길 수 있습니다. 또한 코스가 쉽고 정상에 말들이 뛰놀고 있어 아이와 함께 가기에도 참 좋습니다. 비가 온 뒤에는 분화구의 고인 물도 볼 수 있으며, 한 폭의 그림 같은 경관에 나도 모르게 감탄사가 나올지도 모릅니다.');

insert into attraction values (1402, 140, '성이시돌 목장', 'Seong-isidol', 
'제주도에서 단연코 멋진 목장을 꼽으라면 ? 보는것만으로도 자연이 주는 힐링이 가득한 성이시돌목장이에요! 독특한 건축물 “테쉬폰”앞에서는 이색적인 인생샷은 덤!!');

insert into attraction values (1403, 140, '석부작테마공원', 'Seokbujak', 
'외국 관광객이 가장 인상적이라 말한 제주의 현무암. 석부작 테마공원은 그런 오묘한 3만 여 점의 현무암을 만나볼수 있는 테마공원입니다. 힘찬 폭포 소리를 따라 야외 전시장으로 들어서면 복수초,돌단풍, 애인초 등 한라에서 백두를 망라한 천 여 종의 들꽃이 현무암에 뿌리를 내리고 있습니다.들꽃들의 강인한 생명의 터전이 되어주는 현무암. 야외전시장 전시실에는 음지,반음지 식물 석부작 1만 여 점이 전시되어 있다. 체험학습장에서는 직접 석부작을 만들어 볼 수도 있습니다.');

insert into attraction values (1404, 140, '고등어조림', 'Godeungeo_jorim', 
'제주바다 등 푸른 생선으로 단백질이 풍부하며, 건강에 좋은 음식으로 손꼽힙니다. 싱싱한 고등어를 매콤달콤 짭짤하게 졸여서 국물과 함께 비벼 먹으면 밥도둑이 따로 없습니다. 든든하게 한 끼 해결하실 수 있습니다.');

insert into attraction values (1405, 140, '산방산 유람선', 'Sanbangsan', 
'세계지질공원으로 인증된 산방산과 용머리해안을 따라 황홀한 바다 풍경을 감상할 수 있습니다. 병풍처럼 펼쳐진 천혜의 비경을 바다 위에서 볼 수 있는 흔치 않는 경험을 할 수 있습니다. 산방산 유람선은 화순해수욕장, 형제섬, 송악산, 주상절리, 박수기정 등 1시간 코스로 제주를 즐기실 수 있습니다.');

insert into attraction values (1406, 140, '산양큰엉곶', 'Sanyang Gotjawal', 
'꾸민 듯 안 꾸민 듯 자연을 훼손하지 않고 자연과 하나 된 생태숲길입니다. 무엇보다 이 숲길은 유모차와 휠체어도 다닐 수 있는 무장애 길이며, 산책길 중간중간은 오롯이 혼자 걸을 수 있는 호젓한 숲길로도 통합니다. 4.3사건 당시 삶의 터전을 잃은 주민들이 생계용으로 숯을 생산했던 숯가마 터와 마을 사람들이 피신했던 궤(동굴)도 볼 수 있어 제주의 아픈 역사를 느낄 수 있습니다.');

insert into attraction values (1407, 140, '한라수목원 야시장', 'Halla Arboretum', 
'한라수목원 길에 위치한 야시장으로, 다양한 먹거리와 플리마켓이 펼쳐지는 곳입니다. 야시장 내에는 직접 만들어 판매하는 작품들, 포토존들이 있어서 다채롭게 즐기 실 수 있습니다. 인근에는 수목원 테마파크 LED 공원도 있어 예쁜 사진도 남길 수 있습니다.');

insert into attraction values (1408, 140, '제주마방목지', 'mabang', 
'5·16 도로를 이용하여 제주시에서 서귀포로 가다보면 산천단을 지나서 한라산 중턱쯤에 위치한 마방목지를 지나치게 됩니다. 봉긋한 오름과 푸른 빛깔의 들판이 펼쳐져 있고, 그 곳에서 뛰어노는 말들의 모습에 가던 길도 잠시 멈추게 만드는 곳! 마방목지의 말들은 순수한 제주의 혈통 조랑말로 1986년 이후 천연기념물 347호로 지정되어 보호되고 있습니다.');

insert into attraction values (1409, 140, '사려니숲길', 'Saryeoni', 
'사려니 숲길 양쪽을 따라 다양한 수종이 자라는 울창한 자연림이 넓게 펼쳐져 있는 사려니 숲길입니다. 청정한 공기를 마시며 숲길을 걸으면 스트레스 해소에 좋고 장과 심폐 기능이 향상된다고 알려져 많은 사람들이 찾는 명소입니다. 또한, 사려니 숲길은 제주시 숨은 비경 31 중 한 곳으로 선정되었습니다.');




-------------------------------
-- 관광지 insert 문 (해외)
-------------------------------
-- 후쿠오카 210
insert into attraction values (2101, 210, '후쿠오카타워', 'Fukuoka Tower', 
'후쿠오카 타워는 후쿠오카시 사와라구의 시사이드모모치 지구의 RKB 마이니치 방송의 본사 내에 있는 랜드마크 타워로, 높이는 234m다. 일본에서 제일 높은 해변가의 타워이기도 하다. 1989년 아시아 태평양 박람회에 맞추어 건설되었다. 후쿠오카 시와 현지 유력 기업과의 공동출자에 의한 후쿠오카 타워 주식회사가 운영하고 있다.');

insert into attraction values (2102, 210, '시카노섬', 'Shika Island', 
'시카노섬은 일본 규슈의 후쿠오카현에 위치한 섬이다. 이 섬은 혼슈 본토와 연결되어 있으며 섬의 남부와 서부는 하카타만에 닿아 있고, 북부와 동부는 겐카이나다에 닿아 있다. 이 섬 주변에는 이 섬과 더불어 그 외의 여러 섬들이 몰려 있고, 또한 후쿠오카 아일랜드시티와도 간접적으로 연결 가능하다.');

insert into attraction values (2103, 210, '오호리 공원', 'Ohori Park', 
'오호리 공원은 후쿠오카현 후쿠오카시 주오구에 있는 공원이다. 연못이 공원 면적의 약 60%를 차지하고 있는 물의 공원이다. 원래는 적의 공격을 막기 위해 판 것으로, 중국의 시 호를 모방한 것이다. 기다란 형태의 연못 중앙에는 3개의 섬이 있는데, 다리로 건너갈 수 있게 되어 있다. 연못 주변에는 3,000그루의 버드나무가 심어져 있는 약 2km의 산책로가 있어, 시민들의 휴식공간으로 이용된다.');

insert into attraction values (2104, 210, '마린월드 우미노나카미치', 'Marine World', 
'돌고래와 물개 쇼를 볼 수 있는 수족관');

insert into attraction values (2105, 210, '코쿠라성', 'Kokura Castle', 
'고쿠라성은 후쿠오카현 기타큐슈시 고쿠라키타구에 있는 제곽식 평성이다. 에도 시대에는 고쿠라 번의 번청으로 사용되었다. 가쓰야마성, 시즈키성 등의 이명으로 불리고 있다');

insert into attraction values (2106, 210, '나카스', 'Nakasu', 
'유명한 나이트라이프, 야타이 노점상 및 세이류 해변 공원을 즐길 수 있는 도심의 북적이는 섬.');

insert into attraction values (2107, 210, '아일랜드 시티', 'Island City', 
'후쿠오카 아일랜드시티는 일본 후쿠오카현 후쿠오카시 히가시구의 하카타만에 면하고 있는 인공 섬이다. 그래서 아일랜드타워 스카이클럽과 데리하 세키스이 하우스 아레나를 중심으로 이 인공 섬에 놓여 있는 건축물로 드러나고 있다. 또한 면적은 401.3 ha의 규모로 이루어져 있다. 1989년 지질 조사에 착수하여 기존의 하카타항의 항만 유휴 부지를 활용, 개펄의 매립 방식을 인공 섬 형태로 변경되어 사전 답사가 완료되었으며, 1994년 7월 정식으로 착공, 2020년을 기준으로 현재 정비가 지속되는 중이어서, 위와 같은 조성 사업은 대한민국 인천광역시의 송도국제도시와 마찬가지로 계속 조성되고 있는 상태이기도 한다.');

insert into attraction values (2108, 210, '니시 공원', 'Nishi Park', 
'벚꽃으로 유명한 대형 공원');

insert into attraction values (2109, 210, '아이노시마 섬', 'Ainoshima Island', 
'아이노섬은 일본 규슈 후쿠오카현 가스야군 신구정에 위치해 있는 섬이다. 규슈 본토의 신구정에서 서북쪽 약 7.5km 떨어진 겐카이나다에 있는 섬이다. 이 섬은 동해에 떠 있는 섬이다. 이 섬 주변에는 시카노섬을 비롯해 여러 섬들이 많이 몰려 있다. 일본에서는 조선통신사의 섬이라고도 불린다. 조선 통신사가 일본의 혼슈로 진입할 때 거쳐가던 섬이며, 조선통신사들이 타고 오던 선단의 배가 침몰 하였을 때 떠내려온 시체들의 무덤을 당시 일본인들이 만들어 둔 섬이기도 하다. 그리고 섬에 고양이가 많아 고양이의 섬이라는 별칭이 있다.');

-- 오사카 220
insert into attraction values (2201, 220, '오사카성', 'Osaka Castle', 
'오사카성은 오사카의 상징과도 같습니다. 사계절을 대표하는 화려하고 아름다운 꽃과 나무로 둘러싸여 있는데요. 계절마다 많은 사람들이 이곳을 찾아옵니다. 가장 인기 있는 계절은 벚꽃이 만개한 봄입니다. 오사카성은 일본을 통일한 ‘도요토미 히데요시’가 3년의 공사에 걸쳐서 완성한 건축물입니다. 웅장하고 정갈한 외관에서 당시 그의 권력을 느낄 수 있죠. 천수각에는 당시 사용했던 물건들이 전시되어 있고, 최상층에서는 오사카 공원과 시내를 조망할 수 있습니다.');

insert into attraction values (2202, 220, '니넨자카', 'ninenzaka', 
'산넨자카와 바로 이어져 있는 니넨자카 역시 일본의 전통을 느낄 수 있는 거리입니다. 거리에는 다양한 간식과 기념품, 자그마한 소품을 파는 상점으로 가득한데요. 워낙 인기 있는 거리이다 보니 밤낮 할 것 없이 관광객으로 북적입니다. 산넨자카와 니넨카나에서 꼭 가야 할 곳은 100년 된 가옥을 개조해서 만든 스타벅스와 교토 3대 커피 중 하나인 이노다커피 기요미즈 지점 그리고 순한 화장품을 판매하는 요지야 기요미즈 산넨자카점입니다. 천천히 거리를 산책하며 간식도 사 먹고 쇼핑도 즐겨 보세요.');

insert into attraction values (2203, 220, '하루카스 300 전망대', 'HARUKAS 300', 
'지상 300m로 일본 최고 높이를 자랑하는 건물 ‘ABENO HARUKAS’. 그 전망대가 ‘HARUKAS 300(전망대)’입니다. 58층, 59층, 60층의 3층 구조 전망 플로어에서는 다이내믹 시티 오사카를 360도, 한눈에 조망할 수 있는 것은 물론이며, 옛 도읍 교토부터 고베, 롯코산맥 등 간사이의 주요 지역을 전망할 수 있습니다. 또한, 데크 스페이스에서 휴식을 취하거나, 카페에서의 한때, 시간과 계절에 따른 이벤트 등 즐길 거리도 가득합니다.');

insert into attraction values (2204, 220, '도톤보리', 'Dotonbori', 
'오사카에서 꼭 방문해야 하는 거리로, 오사카 대표 번화가 난바 지역에 위치해 있습니다. 다양한 음식점과 술집, 극장, 오락실이 있는데요. 특히 술집과 포장마차식 노점상이 저렴한 편이라 현지인들도 즐겨 찾습니다. 사실 이곳은 에도시대 때 유곽과 요정이 있던 자리였는데, 지금은 유행과 패션의 거리로 변모했습니다. 밤이 되면 현란한 네온사인이 번쩍입니다. 도톤보리강을 중심으로 좌우에 늘어선 상점과 거리에는 언제나 사람들로 북적입니다.');

insert into attraction values (2205, 220, '신사이바시', 'Shinsaibashi', 
'오사카 대표 번화가 난바 지역에 위치한 신사이바시는 과거 나가호리 강에 존재했던 다리 이름에서 유래되었습니다. 신사이바시의 600m를 가로지르는 아케이드 상점가는 에도시대부터 약 380년 간 이어져 오사카의 상징과도 같은 곳입니다.');

insert into attraction values (2206, 220, '기요미즈데라', 'Kiyomizu-dera', 
'오토와산을 배경으로 자리하고 있는 기요미즈데라는 ‘청수사’라는 이름으로도 불립니다. ‘물이 맑은 절’이라는 뜻의 기요미즈데라는 한 현인이 ‘맑은 물을 따라가라’는 계시를 받고 도착한 오토와 폭포에서 수행 중인 선인을 만나 영목을 받았다고 합니다. 그것으로 천수관음상을 조각해 암자에 바친 것이 기요미즈데라의 기원이 되었는데요. 높은 곳에 있는 툇마루에 서 있으면 울창한 수림 너머로 교토의 아름다운 모습이 보입니다.');

insert into attraction values (2207, 220, '노노미야 신사', 'Nonomiya Shrine', 
'노노미야 신사는 규모는 작지만 아기자기한 귀여움이 묻어나는 곳입니다. 일본 문학작품에 자주 등장하는 장소로, 일본 최고의 걸작이라 불리는 산문 겐지모노가타리의 무대가 된 신사이기도 합니다. 노노미야 신사가 모시는 신은 사랑의 신과 진학의 신인데요. 신사 안쪽에는 동전을 올려놓고 돌을 쓰다듬으면 소원을 이루어준다는 ‘오카이메이시’라는 돌이 있습니다. 소원을 이루기 위해 연인과의 영원한 사랑과 합격 기원을 빌러 많은 사람이 찾아옵니다.');

insert into attraction values (2208, 220, '치쿠린', 'Arashiyama Bamboo Forest', 
'아라시야마 역 인근에 위치한 치쿠린은 대나무 숲으로 우리나라의 담양 죽녹원과 비슷한 대나무 숲입니다. 숲 속에는 일본의 신사가 있으며 꽤나 넓어 유료로 인력거 서비스를 제공하고 있습니다. 하늘 높이 뻗어 있는 대나무 숲 속에서 잠시 쉬어가는 시간을 보내는 것을 추천합니다.');

insert into attraction values (2209, 220, '도게츠교', 'dogetsuhgyo', 
'우리나라의 한자 발음으로 ‘도월교’라고도 하는 도게츠교의 이름은 밤에 떠오른 달이 마치 다리를 건너는 것처럼 보인다고 하여 유래되었습니다. 이 다리는 신사들이 밀집된 지역으로 건너갈 때 사용하는 교통로인데요. 다리 아래에는 카쓰라 강이 흐르고 있습니다. 세로 길이는 150m, 가로 폭 10m 정도의 규모로 양쪽에 인도를 통해 걸어 들어갈 수 있습니다. 산 아래에 위치한 이 다리는 자연과 어우러지는 풍경이 워낙 아름다워 사진작가와 여행자 사이에서 매우 유명한데요. 도게츠교를 직접 걸어서 건너보거나 멀리서 다리와 주변 경관과 함께 있는 경치를 감상해보세요.');


-- 베이징 310
insert into attraction values (3101, 310, '베이징 동물원', 'Beijing Zoo', 
'중국 베이징시 시청 구에 위치한 동물원이다. 89헥타르의 면적에 450여 종의 육상 동물과 500여 종의 해양 동물 등 모두 14,500여 마리의 동물을 보유하고 있다. 매년 6백만명 이상의 관광객이 동물원을 찾고 있다. 청나라 말기인 1906년에 처음 설립되었다.');

insert into attraction values (3102, 310, '국립경기장', 'National Stadium', 
'2008년 3월에 완공된 중국 베이징의 국립 경기장이다. 또한, 경기장 형상이 새둥지와 비슷해서 냐오차오 경기장이라고도 부른다. 베이징올림픽 주 경기장은 2008년 하계 올림픽의 육상 경기장으로 쓰였으며, 또한, 올림픽의 개회식 및 폐막식 장소로도 쓰였으며, 리그 오브 레전드 월드 챔피언십 2017 결승전이 열리기도 했다.');

insert into attraction values (3103, 310, '정양문', 'Zhengyangmen', 
'정양문은 전문이라고도 불리며, 베이징시 내성의 남문이다. 톈안먼 광장의 남쪽에 있으며 현재는 사라진 베이징 내성과 연결되어 있었다. 문화 대혁명 시기에 베이징 내성벽은 거의 대부분 철거되었으나, 정양문은 현대까지도 살아남아 중요한 랜드마크로 기능하고 있으며 베이징의 남북 중앙축이 바로 이 정양문을 통과하고 있기도 한다.');

insert into attraction values (3104, 310, '싼리툰', 'Sanlitun', 
'싼리툰은 중국 베이징 차오양 구에 있는 지구로 유럽풍 바, 카페가 밀집되어 있다. 싼리툰 거리는 베이징 시 서삼환로 장홍교 서쪽에 위치한 카페, 바 밀집거리이다.');

insert into attraction values (3105, 310, '올림픽 공원', 'Olympic Park', 
'올림픽 공원은 중화인민공화국 베이징시 차오양 구에 위치한 공원이다. 2008년 베이징 하계 올림픽 개최를 위해 정비된 종합 운동 공원이며 애칭은 올림픽 그린이다.');

insert into attraction values (3106, 310, '왕푸징', 'Wangfujing', 
'왕푸징은 베이징 중심부 둥청 구에 있는 번화가이다. 외국인 유치를 위해 전략적으로 거리를 조성했기 때문에 외국인 관광들에게 인기있는 지역이 되었다.');

insert into attraction values (3107, 310, '국가대극원', 'National Centre for the Performing Arts', 
'국가대극원은 중화인민공화국의 수도 베이징에 있는 세계 최대 규모의 공연장이다. 오페라하우스, 콘서트홀, 드라마센터로 구성되어 있으며, 총 5473석 규모로 이루어져있다. 프랑스 건축사인 폴 앙드뢰의 설계로 2001년 12월 13일 공사를 시작하여 2007년 9월 완공되었다. 모든 건축면적은 14만 9520m²로 세계 최대 규모의 공연장이다.');

insert into attraction values (3108, 310, '천안문', 'Tiananmen', 
'천안문 혹은 톈안먼은 베이징의 내성의 남문이다. 자금성의 남쪽, 톈안먼 광장의 북쪽에 있다. 중화인민공화국의 국장에 들어가 있을 정도로 국가를 대표하는 상징물이며, 가장 유명한 랜드마크들 중 하나이기도 하다. 천안문은 1420년에 명나라의 영락제가 처음으로 지었으며, 이후 명나라, 청나라, 중화민국 시기를 거쳐 현재에 이르게 되었다.');

insert into attraction values (3109, 310, '자금성', 'Palace Museum', 
'고궁박물원은 중화인민공화국 베이징시의 자금성내에 위치한 국립박물관이다. 박물관은 명나라와 청나라 시기 궁궐의 소장품과 이후 중화인민공화국이 구입하거나 수집한 여러 새로운 유물들을 소장 및 전시하고 있다.');


-- 상하이 320
insert into attraction values (3201, 320, '상하이 박물관', 'Shanghai Museum', 
'중국 상하이에 인민광장 근처에 있는 상하이의 대표적인 박물관이다. 상하이의 박물관은 이 밖에 상하이 자연사 박물관，상하이 곤충 박물관，상하이 과학 기술 박물관，일대회지 박물관 등이 있지만，단지 박물관이라면，현지에서는 상하이 박물관을 말한다.');

insert into attraction values (3202, 320, '난징루', 'mufusa', 
'난징루는 상하이의 주요 쇼핑 센터가 있는 거리이며, 난징둥루와 난징시루로 나뉜다. 1945년 이전의 난징루는 현재의 난징둥루를 가리킨다. 난징루는 상하이 푸시의 중앙에 위치를 하며, 난징시루에서 난징둥루로 이어지고, 황푸 강 유역의 와이탄까지 연결되어 도보로도 이동할 수 있다. 난징둥루의 중심 지역은 세기광장이며, 난징시루는 인민광장과 그 주변 지역이다.');

insert into attraction values (3203, 320, '상하이 세계금융센터', 'Shanghai World Financial Center', 
'중국 상하이 푸둥신구에 건설된 492m의 중국에서 여섯번째로 높은 빌딩이다. 약칭은 SWFC이다. 현재 세계에서 11위로 높은 건물이다. 2007년 10월 14일 492m를 쌓아올림으로써 중국에서 가장 높은 빌딩이 되었고, 완공되어 개장한 건물 중에는 중화인민공화국에서, 그리고 상하이시에서 제일 높은 빌딩이다.');

insert into attraction values (3204, 320, '상하이 야생동물원', 'Shanghai Wild Animal Park', 
'상하이 인민정부 와 국가임업국이 합작하여 건설한 중국 첫 번째 국가급야생동물원이다. 이 동물원은 상하이 푸둥 난후이취 난류 도로 178호에 위치해 있으며 면적은 153헥타르이고 상하이 시 중심에서 35킬로미터 떨어져 있다. 이 동물원은 3억 인민폐를 투자하여 1995년 11월 18일에 정식으로 외부에 개방하였고 이는 중국 첫 번째 AAA급 여행명소이다.');

insert into attraction values (3205, 320, '톈쯔팡', 'Tianzifang', 
'중국 상하이시 황푸구 타이캉루 210번지에 위치한 예술, 쇼핑 지역이다.');

insert into attraction values (3206, 320, '정안사', 'Jingan Temple', 
'중국 상하이 징안 구 난징시루 1686번지에 있는 불교 사원이다. 그 역사는 3세기의 삼국시대까지 거슬러 올라가고，강남 지역의 유구한 역사에 영향을 주었던 명찰 중 하나이다.');

insert into attraction values (3207, 320, '롱화쓰', 'Longhua Temple',
'상하이 남부의 불교 사찰로, 미륵불에 봉헌된 불교사찰이라는 의미이다. 롱화쓰는 역사적으로 유서 깊은 고찰로, 청나라 광서제 연간에 건축되어, 대부분의 건물이 중건 과정을 거쳐 지금에 이르러고 있다. 상하이에서는 가장 크고, 유서 깊은 불교 사찰로 평가되고 있다.');

insert into attraction values (3208, 320, '상하이 도시계획전시관', 'Shanghai Urban Planning Exhibition Center',
'중국 상하이시 인민광장에 있는 박물관이다. 지상 5층, 지하 2층으로 되어 있으며, 상하이 도시계획과 발전에 관한 전시를 하고 있다.');

insert into attraction values (3209, 320, '런민 공원', 'Peoples Park',
'중국의 상하이시 중심 황푸 구에 있는 공원이다. 이 곳은 상점가인 난징루의 남쪽, 런민 광장의 북쪽에 해당한다. 지금은 없어진 상하이 경마장의 북쪽 절반에 해당하며, 1952년에 개원했다. 유명한 박물관과 쇼핑 센터가 근처에 있기 때문에 이 공원은 시내에서도 손꼽히는 관광 명소가 되었다.');

-- 방콕 410
insert into attraction values (4101, 410, '왓 포', 'Wat Phra Chetuphon (Wat Pho)', 
'왓 포는 태국 방콕에 있는 불교 사원으로 공식적으로 "왓 프라 체투폰 위몬 망클라람 랏차워람아하위한" 또는 간단하게 줄여서 ‘왓 포’라고 한다. 와불이 있어 와불사라고도 하며, 왕궁에 인접한 랏타나꼬씬 지구에 위치한 방콕 프라나콘 구의 불교 사원이다. 아유타야 양식으로 지은 방콕에서 가장 오래된 사원인 동시에 최대 규모를 자랑하는 사원이다. 이 사원은 전통 타이 마사지의 탄생지로도 알려져 있다.');

insert into attraction values (4102, 410, '방콕 왕궁', 'The Grand Palace', 
'방콕 왕궁은 태국 방콕에 있는 복합 건축물이다. 정식 명칭은 “프라 보롬 마하 랏차 왕” 이다. 이 건축물은 18세기 이후부터 국왕이 머물렀던 공식 관저이다. 건축은 1782년 라마 1세 때 수도를 톤부리에서 방콕으로 옮기면서 시작되었다. 여러 번의 증축 공사를 통해 계속 황궁이 확장되었다. 그러나 국왕 푸미폰 아둔야뎃은 이곳에 머물지 않고, 치뜨랄다 궁에 거주했다. 태국인들의 심장부와도 같은 이곳은 환상적이고 이국적인 정취가 있다. ');

insert into attraction values (4103, 410, '짜뚜짝 주말시장', 'Chatuchak Weekend Market', 
'짜뚜짝 시장은 태국 방콕에서 가장 큰 시장이다. 종종 J.J.라고도 불리며, 1.13 km²의 면적을 가지고 있고, 5,000개의 점포를 보유하고 있으며, 하루 방문자 수가 20만에서 30만에 이른다고 추정되고 있다. 대부분의 점포들은 주말에만 문을 연다.');

insert into attraction values (4104, 410, '왓 아룬 (새벽 사원)', 'Wat Arun', 
'왓 아룬은 타이 방콕 야이 구의 불교 사원으로 차오프라야 강 왼쪽 강변에 있다. 전체 이름은 ‘왓 아룬갓차와라람 랏차워람아라위’한이며, 간단하게 줄여서‘ 왓 아룬’이라고 하며, 《새벽 사원》으로 더 널리 알려져 있다.');

insert into attraction values (4105, 410, '아유타야', 'Phra Nakhon Si Ayutthaya', 
'프라나콘시아유타야 또는 아유타야는 태국 아유타야주의 도시이다. 아유타야라는 약칭으로 더 자주 불린다. 면적은 14.84km2 이고 인구는 2006년 기준으로 54,888명이다. 1350년에 시암 왕국의 시조인 우통 왕이 라마야나에 나오는 코살라 왕국의 수도인 아요디아에서 이름을 따와 아유타야라는 도시를 건설한 것이 아유타야의 시작으로, 아유타야 왕조가 멸망할 때까지 시암 왕국의 수도로 기능하였다. 아유타야의 인구는 1600년까지 약 30만 명, 1700년 무렵에는 약 100만 명에 달했을 것으로 추정되며 당시 세계에서 가장 큰 도시의 하나였다.');

insert into attraction values (4106, 410, '아시아틱', 'Asiatique The Riverfront', 
'강이 보이고 조명이 들어오는 대관람차');

insert into attraction values (4107, 410, '룸피니 공원', 'Lumphini Park', 
'룸피니 공원은 태국 방콕 파툼완 지역에 있는 공원이다. 0.57km²의 광대한 부지를 가진다. 인공 연못이 있고, 보트를 탈 수있다. 1920년대의 라마 6세 통치 시대에 건설되었다. 남서쪽 입구에는 라마 동상이 서있다. 방콕의 첫 도서관과 댄스 홀이 이 공원에 있다.');

insert into attraction values (4108, 410, '시암 파크시티', 'Siam Amazing Park', 
'놀이기구를 즐길 수 있는 대형 워터파크 놀이공원');

insert into attraction values (4109, 410, '왓 프라깨우', 'Wat Phra Kaew', 
'왓 프라깨오는 타이 방콕 프라나콘 구의 불교 사원으로 방콕 왕궁 주변에 있다. 전체 이름은 왓 프라스리라따나사사다람이다. 일명 에메랄드 부처 사원으로도 알려져 있으며, 타이에서 가장 영험한 불교 사원으로 여겨지고 있다.');

-- 파타야 420
insert into attraction values (4201, 420, '돌핀나리움 파타야', 'Dolphinarium Pattaya', 
'돌고래를 가까이에서 볼 수 있는 공연장');

insert into attraction values (4202, 420, '농눗 정원', 'Nong Nooch Tropical Garden', 
'테마별로 꾸며진 드넓은 공원');

insert into attraction values (4203, 420, '왓얀사원', 'Wat Yan', 
'호숫가의 대형 불교 사원 단지');

insert into attraction values (4204, 420, '라마야나 워터파크', 'Ramayana Water Park', 
'라마야나 워터파크는 파타야, 방콕에서 한시간 반 거리, 남부 파타야로부터 15키로 떨어진 곳에 위치한 워터파크이다. 라마야나 워터파크는 동남아시아에서 제일 큰 워터테마파크이다.');

insert into attraction values (4205, 420, '타이거 파크', 'Tiger Park', 
'호랑이 체험 및 사진 찍기');

insert into attraction values (4206, 420, '파타야 여행자거리', 'Pattaya Walking Street', 
'나이트라이프로 유명한 보행자 거리');

insert into attraction values (4207, 420, '공룡공원', 'Dinosaur Park', 
'파타야의 숨겨진 보물! 과거의 자연환경을 간직한 공룡공원에서 과거 시대를 누볐던 수 많은 공룡들을 관람하세요.');

insert into attraction values (4208, 420, '황금 절벽 사원(왓 카오 치 짠)', 'Wat Khao Chi Chan', 
'황금 절벽 사원은 1996년 전 국왕인 푸미폰 국왕(King Bhumibol, 라마 9세)의 즉위 50년을 기념하여 국왕의 만수무강을 기원하는 의미로 만들어졌습니다. 바위 산을 깎아 불상을 음각으로 제작하여 금으로 채워 넣은 것으로 높이가 약 130m에 이릅니다. 크기가 크기 때문에 바로 앞이 아닌 약간 떨어진 곳에서 봐야 한눈에 볼 수 있으며 불상을 주변으로는 나무가 우거진 공원이 조성되어 있습니다.');

insert into attraction values (4209, 420, '아시아티크', 'Asiatique', 
'2012년에 처음 문을 연 아시아티크(Asiatique)는 차오프라야 강변에 위치한 아시아티크는 밤에 빛나는 거대한 관람차가 눈에 띄는 야시장입니다. 복잡하고 혼잡한 다른 야시장들에 비해 깔끔하게 정리되어 있는 매장들 덕분에 여자 관광객과 일본 관광객들이 많이 찾는 곳이기도 합니다. 다른 곳과 비교해 가격이 저렴하지는 않지만 그만큼 좋은 물건들을 구입할 수 있고, 야시장인만큼 밤이 될수록 더 많은 상점이 문을 열고 조명이 켜지며 아름다운 전망을 만들어냅니다.');

------------------------------------------------------------------------------------------------------------------------------
# attraction_image 테이블 insert 문

# 인천 1101 월미바다열차
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1101, '/img/pkage/attraction/incheon/Wolmi Sea Train1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1101, '/img/pkage/attraction/incheon/Wolmi Sea Train2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1101, '/img/pkage/attraction/incheon/Wolmi Sea Train3.jpg');

# 인천 1102 차이나타운
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1102, '/img/pkage/attraction/incheon/China town1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1102, '/img/pkage/attraction/incheon/China town2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1102, '/img/pkage/attraction/incheon/China town3.jpg');

# 인천 1103 개항장 문화거리
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1103, '/img/pkage/attraction/incheon/Gaehangjang culture street1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1103, '/img/pkage/attraction/incheon/Gaehangjang culture street2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1103, '/img/pkage/attraction/incheon/Gaehangjang culture street3.jpg');

# 인천 1104 소래포구
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1104, '/img/pkage/attraction/incheon/Sorapogu1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1104, '/img/pkage/attraction/incheon/Sorapogu2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1104, '/img/pkage/attraction/incheon/Sorapogu3.jpg');

# 인천 1105 송도 센트럴파크
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1105, '/img/pkage/attraction/incheon/Songdo central park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1105, '/img/pkage/attraction/incheon/Songdo central park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1105, '/img/pkage/attraction/incheon/Songdo central park3.jpg');

# 여수 1201 여수해상케이블카
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1201, '/img/pkage/attraction/yeosu/Yeosu Cable Car1.png');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1201, '/img/pkage/attraction/yeosu/Yeosu Cable Car2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1201, '/img/pkage/attraction/yeosu/Yeosu Cable Car3.jpg');

# 여수 1202 돌산공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1202, '/img/pkage/attraction/yeosu/Dolsan Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1202, '/img/pkage/attraction/yeosu/Dolsan Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1202, '/img/pkage/attraction/yeosu/Dolsan Park3.jpg');

# 여수 1203 금오도 비렁길
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1203, '/img/pkage/attraction/yeosu/Bileong-Gil1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1203, '/img/pkage/attraction/yeosu/Bileong-Gil2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1203, '/img/pkage/attraction/yeosu/Bileong-Gil3.jpg');

# 여수 1204 해양레일바이크
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1204, '/img/pkage/attraction/yeosu/Yeosu Ocean Rail Bike1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1204, '/img/pkage/attraction/yeosu/Yeosu Ocean Rail Bike2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1204, '/img/pkage/attraction/yeosu/Yeosu Ocean Rail Bike3.jpg');

# 여수 1205 오동도
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1205, '/img/pkage/attraction/yeosu/Odongdo1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1205, '/img/pkage/attraction/yeosu/Odongdo2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1205, '/img/pkage/attraction/yeosu/Odongdo3.jpg');

# 여수 1206 풍물시장
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1206, '/img/pkage/attraction/yeosu/Folk Flea Market1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1206, '/img/pkage/attraction/yeosu/Folk Flea Market2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1206, '/img/pkage/attraction/yeosu/Folk Flea Market3.jpg');

# 부산 1301 송도 해상 레이블카
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1301, '/img/pkage/attraction/busan/Songdo Bay Station1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1301, '/img/pkage/attraction/busan/Songdo Bay Station2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1301, '/img/pkage/attraction/busan/Songdo Bay Station3.jpg');

# 부산 1302 해운대 동백섬
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1302, '/img/pkage/attraction/busan/Dongback isiand1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1302, '/img/pkage/attraction/busan/Dongback isiand2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1302, '/img/pkage/attraction/busan/Dongback isiand3.jpg');

# 부산 1303 UN기념공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1303, '/img/pkage/attraction/busan/UN Memorial Cemetery1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1303, '/img/pkage/attraction/busan/UN Memorial Cemetery2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1303, '/img/pkage/attraction/busan/UN Memorial Cemetery3.jpg');

# 부산 1304 부산프라이빗 요트 투어
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1304, '/img/pkage/attraction/busan/private yacht1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1304, '/img/pkage/attraction/busan/private yacht2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1304, '/img/pkage/attraction/busan/private yacht3.jpg');

# 부산 1305 부산아쿠아리움
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1305, '/img/pkage/attraction/busan/Busan aquarium1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1305, '/img/pkage/attraction/busan/Busan aquarium2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1305, '/img/pkage/attraction/busan/Busan aquarium3.jpg');

# 부산 1306 자갈치시장
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1306, '/img/pkage/attraction/busan/Jagalchi market1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1306, '/img/pkage/attraction/busan/Jagalchi market2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1306, '/img/pkage/attraction/busan/Jagalchi market3.jpg');

# 부산 1307 감천문화마을
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1307, '/img/pkage/attraction/busan/Gamcheon Culture Village1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1307, '/img/pkage/attraction/busan/Gamcheon Culture Village2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1307, '/img/pkage/attraction/busan/Gamcheon Culture Village3.jpg');

# 부산 1308 영도대교
# 부산 1309 국제시장 두 곳은 이미지 없음.!!

# 제주도 1401 금오름
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1401, '/img/pkage/attraction/jeju/Geumoreum1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1401, '/img/pkage/attraction/jeju/Geumoreum2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1401, '/img/pkage/attraction/jeju/Geumoreum3.jpg');

# 제주도 1402 성이시돌 목장
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1402, '/img/pkage/attraction/jeju/Seong-isidol1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1402, '/img/pkage/attraction/jeju/Seong-isidol2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1402, '/img/pkage/attraction/jeju/Seong-isidol3.jpg');

# 제주도 1403 석부작테마공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1403, '/img/pkage/attraction/jeju/Seokbujak1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1403, '/img/pkage/attraction/jeju/Seokbujak2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1403, '/img/pkage/attraction/jeju/Seokbujak3.jpg');

# 제주도 1404 고등어조림
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1404, '/img/pkage/attraction/jeju/Godeungeo_jorim1.png');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1404, '/img/pkage/attraction/jeju/Godeungeo_jorim2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1404, '/img/pkage/attraction/jeju/Godeungeo_jorim3.jpg');

# 제주도 1405 산방산 유람선
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1405, '/img/pkage/attraction/jeju/Sanbangsan1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1405, '/img/pkage/attraction/jeju/Sanbangsan2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1405, '/img/pkage/attraction/jeju/Sanbangsan3.jpg');

# 제주도 1406 산양큰엉곶
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1406, '/img/pkage/attraction/jeju/Sanyang Gotjawal1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1406, '/img/pkage/attraction/jeju/Sanyang Gotjawal2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1406, '/img/pkage/attraction/jeju/Sanyang Gotjawal3.jpg');

# 제주도 1407 한라수목원 야시장
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1407, '/img/pkage/attraction/jeju/Halla Arboretum1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1407, '/img/pkage/attraction/jeju/Halla Arboretum2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1407, '/img/pkage/attraction/jeju/Halla Arboretum3.jpg');

# 제주도 1408 제주마방목지
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1408, '/img/pkage/attraction/jeju/mabang1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1408, '/img/pkage/attraction/jeju/mabang2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1408, '/img/pkage/attraction/jeju/mabang3.jpg');

# 제주도 1409 사려니숲길
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1409, '/img/pkage/attraction/jeju/Saryeoni1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1409, '/img/pkage/attraction/jeju/Saryeoni2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (1409, '/img/pkage/attraction/jeju/Saryeoni3.jpg');

# 후쿠오카 2101 후쿠오카타워
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2101, '/img/pkage/attraction/fukuoka/Fukuoka Tower1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2101, '/img/pkage/attraction/fukuoka/Fukuoka Tower2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2101, '/img/pkage/attraction/fukuoka/Fukuoka Tower3.jpg');

# 후쿠오카 2102 시카노섬
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2102, '/img/pkage/attraction/fukuoka/Shika Island1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2102, '/img/pkage/attraction/fukuoka/Shika Island2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2102, '/img/pkage/attraction/fukuoka/Shika Island3.jpg');

# 후쿠오카 2103 오호리 공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2103, '/img/pkage/attraction/fukuoka/Ohori Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2103, '/img/pkage/attraction/fukuoka/Ohori Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2103, '/img/pkage/attraction/fukuoka/Ohori Park3.jpg');

# 후쿠오카 2104 마린월드 우미노나카미치
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2104, '/img/pkage/attraction/fukuoka/Marine World1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2104, '/img/pkage/attraction/fukuoka/Marine World2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2104, '/img/pkage/attraction/fukuoka/Marine World3.jpg');

# 후쿠오카 2105 코쿠라성
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2105, '/img/pkage/attraction/fukuoka/Kokura Castle1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2105, '/img/pkage/attraction/fukuoka/Kokura Castle2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2105, '/img/pkage/attraction/fukuoka/Kokura Castle3.jpg');

# 후쿠오카 2106 나카스
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2106, '/img/pkage/attraction/fukuoka/Nakasu1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2106, '/img/pkage/attraction/fukuoka/Nakasu2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2106, '/img/pkage/attraction/fukuoka/Nakasu3.jpg');

# 후쿠오카 2107 아일랜드 시티
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2107, '/img/pkage/attraction/fukuoka/Island City1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2107, '/img/pkage/attraction/fukuoka/Island City2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2107, '/img/pkage/attraction/fukuoka/Island City3.jpg');

# 후쿠오카 2108 니시 공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2108, '/img/pkage/attraction/fukuoka/Nishi Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2108, '/img/pkage/attraction/fukuoka/Nishi Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2108, '/img/pkage/attraction/fukuoka/Nishi Park3.jpg');

# 후쿠오카 2109 아이노시마 섬
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2109, '/img/pkage/attraction/fukuoka/Ainoshima Island1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2109, '/img/pkage/attraction/fukuoka/Ainoshima Island2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2109, '/img/pkage/attraction/fukuoka/Ainoshima Island3.jpg');

# 오사카 2201 오사카성
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2201, '/img/pkage/attraction/osaka/Osaka Castle1.png');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2201, '/img/pkage/attraction/osaka/Osaka Castle2.png');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2201, '/img/pkage/attraction/osaka/Osaka Castle3.jpg');

# 오사카 2202 니넨자카
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2202, '/img/pkage/attraction/osaka/ninenzaka1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2202, '/img/pkage/attraction/osaka/ninenzaka2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2202, '/img/pkage/attraction/osaka/ninenzaka3.jpg');

# 오사카 2203 하루카스 300 전망대
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2203, '/img/pkage/attraction/osaka/HARUKAS1.png');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2203, '/img/pkage/attraction/osaka/HARUKAS2.png');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2203, '/img/pkage/attraction/osaka/HARUKAS3.jpg');

# 오사카 2204 도톤보리
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2204, '/img/pkage/attraction/osaka/Dotonbori1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2204, '/img/pkage/attraction/osaka/Dotonbori2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2204, '/img/pkage/attraction/osaka/Dotonbori3.jpg');

# 오사카 2205 신사이바시
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2205, '/img/pkage/attraction/osaka/Shinsaibashi1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2205, '/img/pkage/attraction/osaka/Shinsaibashi2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2205, '/img/pkage/attraction/osaka/Shinsaibashi3.jpg');

# 오사카 2206 기요미즈데라
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2206, '/img/pkage/attraction/osaka/Kiyomizu-dera1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2206, '/img/pkage/attraction/osaka/Kiyomizu-dera2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2206, '/img/pkage/attraction/osaka/Kiyomizu-dera3.jpg');

# 오사카 2207 노노미야 신사
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2207, '/img/pkage/attraction/osaka/Nonomiya Shrine1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2207, '/img/pkage/attraction/osaka/Nonomiya Shrine2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2207, '/img/pkage/attraction/osaka/Nonomiya Shrine3.jpg');

# 오사카 2208 치쿠린
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2208, '/img/pkage/attraction/osaka/Arashiyama Bamboo Forest1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2208, '/img/pkage/attraction/osaka/Arashiyama Bamboo Forest2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2208, '/img/pkage/attraction/osaka/Arashiyama Bamboo Forest3.jpg');

# 오사카 2209 도게츠교
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2209, '/img/pkage/attraction/osaka/dogetsuhgyo1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2209, '/img/pkage/attraction/osaka/dogetsuhgyo2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (2209, '/img/pkage/attraction/osaka/dogetsuhgyo3.jpg');

# 베이징 3101 베이징 동물원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3101, '/img/pkage/attraction/beijing/Beijing Zoo1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3101, '/img/pkage/attraction/beijing/Beijing Zoo2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3101, '/img/pkage/attraction/beijing/Beijing Zoo3.jpg');

# 베이징 3102 국립경기장
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3102, '/img/pkage/attraction/beijing/National Stadium1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3102, '/img/pkage/attraction/beijing/National Stadium2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3102, '/img/pkage/attraction/beijing/National Stadium3.jpg');

# 베이징 3103 정양문
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3103, '/img/pkage/attraction/beijing/Zhengyangmen1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3103, '/img/pkage/attraction/beijing/Zhengyangmen2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3103, '/img/pkage/attraction/beijing/Zhengyangmen3.jpg');

# 베이징 3104 싼리툰
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3104, '/img/pkage/attraction/beijing/Sanlitun1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3104, '/img/pkage/attraction/beijing/Sanlitun2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3104, '/img/pkage/attraction/beijing/Sanlitun3.jpg');

# 베이징 3105 올림픽공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3105, '/img/pkage/attraction/beijing/Olympic Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3105, '/img/pkage/attraction/beijing/Olympic Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3105, '/img/pkage/attraction/beijing/Olympic Park3.jpg');

# 베이징 3106 왕푸징
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3106, '/img/pkage/attraction/beijing/Wangfujing1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3106, '/img/pkage/attraction/beijing/Wangfujing2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3106, '/img/pkage/attraction/beijing/Wangfujing3.jpg');

# 베이징 3107 국가대극원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3107, '/img/pkage/attraction/beijing/National Centre for the Performing Arts1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3107, '/img/pkage/attraction/beijing/National Centre for the Performing Arts2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3107, '/img/pkage/attraction/beijing/National Centre for the Performing Arts3.jpg');

# 베이징 3108 천안문
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3108, '/img/pkage/attraction/beijing/Tiananmen1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3108, '/img/pkage/attraction/beijing/Tiananmen2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3108, '/img/pkage/attraction/beijing/Tiananmen3.jpg');

# 베이징 3109 자금성
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3109, '/img/pkage/attraction/beijing/Palace Museum1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3109, '/img/pkage/attraction/beijing/Palace Museum2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3109, '/img/pkage/attraction/beijing/Palace Museum3.jpg');

# 상하이 3201 상하이 박물관
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3201, '/img/pkage/attraction/shanghai/Shanghai Museum1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3201, '/img/pkage/attraction/shanghai/Shanghai Museum1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3201, '/img/pkage/attraction/shanghai/Shanghai Museum1.jpg');

# 상하이 3202 난징루
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3202, '/img/pkage/attraction/shanghai/Nanjinglu Street1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3202, '/img/pkage/attraction/shanghai/Nanjinglu Street2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3202, '/img/pkage/attraction/shanghai/Nanjinglu Street3.jpg');

# 상하이 3203 상하이 세계금융센터
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3203, '/img/pkage/attraction/shanghai/Shanghai World Financial Center1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3203, '/img/pkage/attraction/shanghai/Shanghai World Financial Center2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3203, '/img/pkage/attraction/shanghai/Shanghai World Financial Center3.jpg');

# 상하이 3204 상하이 야생동물원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3204, '/img/pkage/attraction/shanghai/Shanghai Wild Animal Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3204, '/img/pkage/attraction/shanghai/Shanghai Wild Animal Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3204, '/img/pkage/attraction/shanghai/Shanghai Wild Animal Park3.jpg');

# 상하이 3205 톈쯔팡
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3205, '/img/pkage/attraction/shanghai/Tianzifang1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3205, '/img/pkage/attraction/shanghai/Tianzifang2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3205, '/img/pkage/attraction/shanghai/Tianzifang3.jpg');

# 상하이 3206 정안사
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3206, '/img/pkage/attraction/shanghai/Jingan Temple1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3206, '/img/pkage/attraction/shanghai/Jingan Temple2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3206, '/img/pkage/attraction/shanghai/Jingan Temple3.jpg');

# 상하이 3207 롱화쓰
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3207, '/img/pkage/attraction/shanghai/Longhua Temple1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3207, '/img/pkage/attraction/shanghai/Longhua Temple2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3207, '/img/pkage/attraction/shanghai/Longhua Temple3.jpg');

# 상하이 3208 상하이 도시계획전시관
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3208, '/img/pkage/attraction/shanghai/Shanghai Urban Planning Exhibition Center1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3208, '/img/pkage/attraction/shanghai/Shanghai Urban Planning Exhibition Center2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3208, '/img/pkage/attraction/shanghai/Shanghai Urban Planning Exhibition Center3.jpg');

# 상하이 3209 런민 공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3209, '/img/pkage/attraction/shanghai/Peoples Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3209, '/img/pkage/attraction/shanghai/Peoples Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (3209, '/img/pkage/attraction/shanghai/Peoples Park3.jpg');

# 방콕 4101 왓 포
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4101, '/img/pkage/attraction/bangkok/Wat Pho1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4101, '/img/pkage/attraction/bangkok/Wat Pho2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4101, '/img/pkage/attraction/bangkok/Wat Pho3.jpg');

# 방콕 4102 방콕 왕궁
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4102, '/img/pkage/attraction/bangkok/The Grand Palace1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4102, '/img/pkage/attraction/bangkok/The Grand Palace2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4102, '/img/pkage/attraction/bangkok/The Grand Palace3.jpg');

# 방콕 4103 짜뚜짝 주말시장
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4103, '/img/pkage/attraction/bangkok/Chatuchak Weekend Market1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4103, '/img/pkage/attraction/bangkok/Chatuchak Weekend Market2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4103, '/img/pkage/attraction/bangkok/Chatuchak Weekend Market3.jpg');

# 방콕 4104 왓 아룬
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4104, '/img/pkage/attraction/bangkok/Wat Arun1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4104, '/img/pkage/attraction/bangkok/Wat Arun2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4104, '/img/pkage/attraction/bangkok/Wat Arun3.jpg');

# 방콕 4105 아유타야
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4105, '/img/pkage/attraction/bangkok/Erawan Shrine1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4105, '/img/pkage/attraction/bangkok/Erawan Shrine2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4105, '/img/pkage/attraction/bangkok/Erawan Shrine3.jpg');

# 방콕 4106 아시아틱
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4106, '/img/pkage/attraction/bangkok/Wat Saket1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4106, '/img/pkage/attraction/bangkok/Wat Saket2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4106, '/img/pkage/attraction/bangkok/Wat Saket3.jpg');

# 방콕 4107 룸피니 공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4107, '/img/pkage/attraction/bangkok/Lumphini Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4107, '/img/pkage/attraction/bangkok/Lumphini Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4107, '/img/pkage/attraction/bangkok/Lumphini Park3.jpg');

# 방콕 4108 시암 파크시티
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4108, '/img/pkage/attraction/bangkok/Siam Amazing Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4108, '/img/pkage/attraction/bangkok/Siam Amazing Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4108, '/img/pkage/attraction/bangkok/Siam Amazing Park3.jpg');

# 방콕 4109 왓 프라깨우
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4109, '/img/pkage/attraction/bangkok/Wat Phra Kaew1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4109, '/img/pkage/attraction/bangkok/Wat Phra Kaew2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4109, '/img/pkage/attraction/bangkok/Wat Phra Kaew3.jpg');

# 파타야 4201 돌핀나리움 파타야
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4201, '/img/pkage/attraction/pattaya/Dolphinarium Pattaya1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4201, '/img/pkage/attraction/pattaya/Dolphinarium Pattaya2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4201, '/img/pkage/attraction/pattaya/Dolphinarium Pattaya3.jpg');

# 파타야 4202 농눗 정원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4202, '/img/pkage/attraction/pattaya/Nong Nooch Tropical Garden1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4202, '/img/pkage/attraction/pattaya/Nong Nooch Tropical Garden2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4202, '/img/pkage/attraction/pattaya/Nong Nooch Tropical Garden3.jpg');

# 파타야 4203 왓얀사원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4203, '/img/pkage/attraction/pattaya/Wat Yan1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4203, '/img/pkage/attraction/pattaya/Wat Yan2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4203, '/img/pkage/attraction/pattaya/Wat Yan3.jpg');

# 파타야 4204 라마야나 워터파크
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4204, '/img/pkage/attraction/pattaya/Ramayana Water Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4204, '/img/pkage/attraction/pattaya/Ramayana Water Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4204, '/img/pkage/attraction/pattaya/Ramayana Water Park3.jpg');

# 파타야 4205 타이거파크
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4205, '/img/pkage/attraction/pattaya/Tiger Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4205, '/img/pkage/attraction/pattaya/Tiger Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4205, '/img/pkage/attraction/pattaya/Tiger Park3.jpg');

# 파타야 4206 파타야 여행자거리
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4206, '/img/pkage/attraction/pattaya/Pattaya Walking Street1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4206, '/img/pkage/attraction/pattaya/Pattaya Walking Street2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4206, '/img/pkage/attraction/pattaya/Pattaya Walking Street3.jpg');

# 파타야 4207 공룡공원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4207, '/img/pkage/attraction/pattaya/Dinosaur Park1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4207, '/img/pkage/attraction/pattaya/Dinosaur Park2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4207, '/img/pkage/attraction/pattaya/Dinosaur Park3.jpg');

# 파타야 4208 황금 절벽 사원
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4208, '/img/pkage/attraction/pattaya/Wat Khao Chi Chan1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4208, '/img/pkage/attraction/pattaya/Wat Khao Chi Chan2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4208, '/img/pkage/attraction/pattaya/Wat Khao Chi Chan3.jpg');

# 파타야 4209 아시아티크
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4209, '/img/pkage/attraction/pattaya/Asiatique1.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4209, '/img/pkage/attraction/pattaya/Asiatique2.jpg');
INSERT INTO attraction_image
(attr_id,attr_Img_path) VALUES (4209, '/img/pkage/attraction/pattaya/Asiatique3.jpg');

------------------------------------------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------------------------------------
# package 테이블

-- package (파타야)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk420001', 420, '파타야 3~4일 #가성비여행추천', '실속있고 합리적인 가격으로 만나볼 수 있는 방콕/파타야 패키지 여행상품입니다.', 1, 0);

INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk420002', 420, '파타야 3~4일 #힐링여행추천', '꼭 가봐야 할 핵심일정과 힐링을 충전할 수 있는 힐링여행 상품입니다.', 1, 0);

-- package (방콕)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk410001', 410, '방콕 3~4일 #유적지여행', '역사가 살아숨쉬는 방콕의 유적지를 탐방하기 위한 절호의 찬스! 역사에 관심있는 자들을 위한 추천여행', 1, 0);

INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk410002', 410, '방콕 3~4일 #힐링여행추천', '부담없이 즐기는 방콕여행!! 스트레스를 풀러 오세요!!', 1, 0);

-- package (상하이)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk320001', 320, '상하이 3~4일 #역사여행', '중국의 역사를 체험하기 좋은 여행!! 역사를 눈으로 직접 체험하고 싶다면 와라!!', 1, 0);

INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk320002', 320, '상하이 3~4일 #힐링여행추천', '지친 마음을 3박 4일동안 충전하세요 !!', 1, 0);

-- package (베이징)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk310001', 310, '베이징 3~4일 #대표여행지관광추천', '중국 베이징에 왔다면 꼭 들려야할 관광지만 모여놓은 알찬 패키지입니다.', 1, 5);

INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk310002', 310, '베이징 3~4일 #힐링여행추천', '베이징의 먹거리 장소에 들려 여행을 즐겨보세요.', 1, 0);

-- package (오사카)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk220001', 220, '오사카 3~4일 #대표여행지관광추천', '일본 오사카의 대표 관광지 도톤보리를 중심으로한 패키지 상품입니다.', 1, 0);

INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk220002', 220, '오사카 3~4일 #힐링여행추천', '일본의 과거 건축물을 돌며 힐링하는 여행입니다.', 1, 0);

-- package (후쿠오카)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk210001', 210, '후쿠오카 3~4일 #대표여행지관광추천', '후쿠오카의 마린월드와 아일랜드 시티 등 대표적인 필수 코스를 알차게 구성한 상품입니다.', 1, 0);

INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk210002', 210, '후쿠오카 3~4일 #힐링여행추천', '고양이 마을이라 불리는 아이노시마 섬을 필두로 한 후쿠오카 맞춤 힐링여행상품입니다.', 1, 0);

-- package (제주도)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk140001', 140, '[핫플레이스] 제주3일 #대표여행지관광추천', '한라수목원 야시장을 비롯하여 사려니숲길 등 제주 핫플 관광지를 둘러봅니다. 제주 특유의 제주도 근고기 및 특식을 즐기실 수 있습니다.', 0, 0);

INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk140002', 140, '제주 3일 #힐링여행추천', '제주마방목지, 성이시돌 목장과 같은 목초지를 보고 즐길 수 있는 제주만의 특별 여행!!', 0, 0);

-- package (부산)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk130001', 130, '부산 2일 #대표여행지관광추천#아쿠아리움포함', '아이들과 즐길 수 있는 가족맞춤 패키지, 부산 아쿠아리움에서 신비로움을 느낄 수 있습니다.', 0, 0);

INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk130002', 130, '부산 2일 #힐링여행추천', '부산 자갈치 시장, 국제 시장 등 시장을 둘러보면서 부산만의 힐링을 느껴볼 수 있는 상품입니다.', 0, 0);

-- package (여수)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk120001', 120, '여수 2일 #힐링여행추천#케이블카포함', '첫날은 해상케이블카 둘째날은 해양 레일바이크를 즐길 수 있는 힐링 패키지입니다.', 0, 0);

-- package (인천)
INSERT INTO package (pkage_id, city_id, pkage_name, pkage_info, pkage_gubun, pkage_soldCnt)
VALUES ('pk110001', 110, '인천 2일 #힐링여행추천#월미바다열차포함', '#여행#가족여행', 0, 0);

# ------------------------------------------------------------------------------------------------------------------------------
# package_detail 테이블

-- 날짜 정해지면, 미팅 일시 수정해라 (완료)
-- 공항 위치 정해지면 미팅 장소 수정해라 (완료)

-- package pk420001 : 파타야, pkage_dt_id : 1, 인천공항 출발, THA003, 2022-12-20 08:40 2022-12-22 20:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate, pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk420001', '파타야 3일 #가성비여행', '가성비', 700000, 600000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-20 07:40', '2022-12-20 07:40', '2022-12-22 20:00');

-- package pk420001 : 파타야, pkage_dt_id : 2, 인천공항 출발, THA008, 2022-12-21 08:40 2022-12-24 20:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk420001', '파타야 4일 #가성비여행', '가성비', 750000, 650000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-21 07:40', '2022-12-21 07:40', '2022-12-24 20:00');

-- package pk420002 : 파타야, pkage_dt_id : 3, 인천공항 출발, THA013, 2022-12-22 09:40 2022-12-24 20:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk420002', '파타야 3일 #힐링여행', '힐링', 700000, 600000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-22 08:40', '2022-12-22 08:40', '2022-12-24 20:30');

-- package pk420002 : 파타야, pkage_dt_id : 4, 인천공항 출발, THA018, 2022-12-23 09:40 2022-12-26 20:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk420002', '파타야 4일 #힐링여행', '힐링', 750000, 650000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-23 08:40', '2022-12-23 08:40', '2022-12-26 20:00');

--------------------------------------------------------------
-- package pk410001 : 방콕, pkage_dt_id : 5, 인천공항 출발, THA001, 2022-12-20 08:30 2022-12-22 20:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk410001', '방콕 3일 #가성비여행', '가성비', 700000, 600000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-20 07:30', '2022-12-20 07:30', '2022-12-22 20:00');

-- package pk410001 : 방콕, pkage_dt_id : 6, 인천공항 출발, THA006, 2022-12-21 08:30 2022-12-24 20:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk410001', '방콕 4일 #가성비여행', '가성비', 750000, 650000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-21 07:30', '2022-12-21 07:30', '2022-12-24 20:00');

-- package pk410002 : 방콕, pkage_dt_id : 7, 인천공항 출발, THA011, 2022-12-22 08:30 2022-12-24 20:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk410002', '방콕 3일 #힐링여행', '힐링', 700000, 600000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-22 07:30', '2022-12-22 07:30', '2022-12-24 20:30');

-- package pk410002 : 방콕, pkage_dt_id : 8, 인천공항 출발, THA016, 2022-12-23 08:30 2022-12-26 20:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk410002', '방콕 4일 #힐링여행', '힐링', 750000, 650000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-23 07:30', '2022-12-23 07:30', '2022-12-26 20:00');

--------------------------------------------------------------
-- package pk320001 : 상하이, pkage_dt_id : 9, 인천공항 출발, CHE004, 2022-12-20 08:50 2022-12-22 17:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk320001', '상하이 3일 #역사여행', '역사', 400000, 300000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-20 07:50', '2022-12-20 07:50', '2022-12-22 17:00');

-- package pk320001 : 상하이, pkage_dt_id : 10, 인천공항 출발, CHE009, 2022-12-21 08:50 2022-12-24 17:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk320001', '상하이 4일 #역사여행', '역사', 450000, 350000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-21 07:50', '2022-12-21 07:50', '2022-12-24 17:00');

-- package pk320002 : 상하이, pkage_dt_id : 11, 인천공항 출발, CHE014, 2022-12-22 08:50 2022-12-24 17:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk320002', '상하이 3일 #힐링여행', '힐링', 400000, 300000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-22 07:50', '2022-12-22 07:50', '2022-12-24 17:30');

-- package pk320002 : 상하이, pkage_dt_id : 12, 인천공항 출발, CHE019, 2022-12-23 08:30 2022-12-26 17:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk320002', '상하이 4일 #힐링여행', '힐링', 450000, 350000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-23 07:30', '2022-12-23 07:30', '2022-12-26 17:00');


------------------------------------------------------
-- package pk310001 : 베이징, pkage_dt_id : 13, 인천공항 출발, CHE001, 2022-12-20 09:00 2022-12-22 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk310001', '베이징 3일 #대표여행지관광', '패키지', 400000, 300000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-20 08:00', '2022-12-20 08:00', '2022-12-22 16:30');

-- package pk310001 : 베이징, pkage_dt_id : 14, 인천공항 출발, CHE006, 2022-12-21 09:00 2022-12-24 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk310001', '베이징 4일 #대표여행지관광', '패키지', 450000, 350000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-21 08:00', '2022-12-21 08:00', '2022-12-24 16:30');

-- package pk310002 : 베이징, pkage_dt_id : 15, 인천공항 출발, CHE011, 2022-12-22 09:00 2022-12-24 17:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk310002', '베이징 3일 #힐링여행', '힐링', 300000, 200000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-22 08:00', '2022-12-22 08:00', '2022-12-24 17:00');

-- package pk310002 : 베이징, pkage_dt_id : 16, 인천공항 출발, CHE016, 2022-12-23 09:00 2022-12-26 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk310002', '베이징 4일 #힐링여행', '힐링', 450000, 350000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-23 08:00', '2022-12-23 08:00', '2022-12-26 16:30');

--------------------------------------------------------
-- package pk220001 : 오사카, pkage_dt_id : 17, 인천공항 출발, ANA030, 2022-12-20 10:00 2022-12-22 17:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk220001', '오사카 3일 #대표여행지관광', '패키지', 400000, 300000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-20 09:00', '2022-12-20 09:00', '2022-12-22 17:00');

-- package pk220001 : 오사카, pkage_dt_id : 18, 인천공항 출발, ANA025, 2022-12-21 10:00 2022-12-24 17:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk220001', '오사카 4일 #대표여행지관광', '패키지', 450000, 350000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-21 09:00', '2022-12-21 09:00', '2022-12-24 17:00');

-- package pk220002 : 오사카, pkage_dt_id : 19, 인천공항 출발, ANA020, 2022-12-22 09:00 2022-12-24 18:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk220002', '오사카 3일 #힐링여행', '힐링', 400000, 300000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-22 08:00', '2022-12-22 08:00', '2022-12-24 18:00');

-- package pk220002 : 오사카, pkage_dt_id : 20, 인천공항 출발, ANA015, 2022-12-23 10:00 2022-12-26 17:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk220002', '오사카 4일 #힐링여행', '힐링', 450000, 350000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-23 09:00', '2022-12-23 09:00', '2022-12-26 17:00');

--------------------------------------------------------
-- package pk210001 : 후쿠오카, pkage_dt_id : 21, 인천공항 출발, JAL030, 2022-12-20 10:00 2022-12-22 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk210001', '후쿠오카 3일 #대표여행지관광', '패키지', 400000, 300000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-20 09:00', '2022-12-20 09:00', '2022-12-22 16:30');

-- package pk210001 : 후쿠오카, pkage_dt_id : 22, 인천공항 출발, JAL025, 2022-12-21 10:00 2022-12-24 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk210001', '후쿠오카 4일 #대표여행지관광', '패키지', 450000, 350000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-21 09:00', '2022-12-21 09:00', '2022-12-24 16:30');

-- package pk210002 : 후쿠오카, pkage_dt_id : 23, 인천공항 출발, JAL020, 2022-12-22 09:00 2022-12-24 17:00
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk210002', '후쿠오카 3일 #힐링여행', '힐링', 400000, 300000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-22 08:00', '2022-12-22 08:00', '2022-12-24 17:00');

-- package pk210002 : 후쿠오카, pkage_dt_id : 24, 인천공항 출발, JAL015, 2022-12-23 09:00 2022-12-26 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk210002', '후쿠오카 4일 #힐링여행', '힐링', 450000, 350000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-23 08:00', '2022-12-23 08:00', '2022-12-26 16:30');

----------------------------------------------
-- package pk140001 : 제주도, pkage_dt_id : 25, 인천공항 출발, JIN001, 2022-12-20 09:00 2022-12-22 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk140001', '제주도 3일 #대표여행지관광', '패키지', 300000, 200000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-20 08:00', '2022-12-20 08:00', '2022-12-22 16:30');

-- package pk140001 : 제주도, pkage_dt_id : 26, 인천공항 출발, JIN006, 2022-12-21 09:00 2022-12-23 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk140001', '제주도 3일 #대표여행지관광', '패키지', 350000, 250000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-21 08:00', '2022-12-21 08:00', '2022-12-23 16:30');

-- package pk140002 : 제주도, pkage_dt_id : 27, 인천공항 출발, JIN011, 2022-12-22 09:00 2022-12-24 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk140002', '제주도 3일 #힐링여행', '힐링', 300000, 200000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-22 08:00', '2022-12-22 08:00', '2022-12-24 16:30');

-- package pk140002 : 제주도, pkage_dt_id : 28, 인천공항 출발, JIN016, 2022-12-23 09:00 2022-12-25 16:30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk140002', '제주도 3일 #힐링여행', '힐링', 350000, 250000, 10, 4, 0, '김성현', '인천공항 제1여객터미널 3층 출국장 서편 14번 출입구 1-4 테이블', '2022-12-23 08:00', '2022-12-23 08:00', '2022-12-25 16:30');

---------------------------------------------
-- package pk130001 : 부산, pkage_dt_id : 29
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk130001', '부산 2일 #대표여행지관광', '패키지', 200000, 100000, 10, 4, 0, '김성현', '1호선 종각역 3번 또는 3-1번출구 OhTravel본사앞 (차량대기 및 출발)', '2022-12-20 09:00', '2022-12-20 09:00', '2022-12-21 17:00');

-- package pk130001 : 부산, pkage_dt_id : 30
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk130001', '부산 2일 #대표여행지관광', '패키지', 250000, 150000, 10, 4, 0, '김성현', '1호선 종각역 3번 또는 3-1번출구 OhTravel본사앞 (차량대기 및 출발)', '2022-12-21 09:00', '2022-12-21 09:00', '2022-12-22 17:00');

-- package pk130002 : 부산, pkage_dt_id : 31
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk130002', '부산 2일 #힐링여행', '힐링', 200000, 100000, 10, 4, 0, '김성현', '1호선 종각역 3번 또는 3-1번출구 OhTravel본사앞 (차량대기 및 출발)', '2022-12-22 09:00', '2022-12-22 09:00', '2022-12-23 17:00');

-- package pk130002 : 부산, pkage_dt_id : 32
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk130002', '부산 2일 #힐링여행', '힐링', 250000, 150000, 10, 4, 0, '김성현', '1호선 종각역 3번 또는 3-1번출구 OhTravel본사앞 (차량대기 및 출발)', '2022-12-23 09:00', '2022-12-23 09:00', '2022-12-24 17:00');

---------------------------------------------------
-- package pk120001 : 여수, pkage_dt_id : 33
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk120001', '여수 2일 #힐링여행', '힐링', 200000, 100000, 10, 4, 0, '김성현', '1호선 종각역 3번 또는 3-1번출구 OhTravel본사앞 (차량대기 및 출발)', '2022-12-20 08:00', '2022-12-20 08:00', '2022-12-21 17:00');

-- package pk120001 : 여수, pkage_dt_id : 34
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk120001', '여수 2일 #힐링여행', '힐링', 250000, 150000, 10, 4, 0, '김성현', '1호선 종각역 3번 또는 3-1번출구 OhTravel본사앞 (차량대기 및 출발)', '2022-12-21 08:00', '2022-12-21 08:00', '2022-12-22 17:00');

-----------------------------------------------------
-- package pk110001 : 인천, pkage_dt_id : 35
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk110001', '인천 2일 #힐링여행', '힐링', 200000, 100000, 10, 4, 0, '김성현', '1호선 종각역 3번 또는 3-1번출구 OhTravel본사앞 (차량대기 및 출발)', '2022-12-20 08:00', '2022-12-20 08:00', '2022-12-21 17:00');

-- package pk110001 : 인천, pkage_dt_id : 36
INSERT INTO package_detail
(pkage_id,pkage_dt_name,pkage_dt_thema,pkage_dt_Aprice,pkage_dt_Cprice,pkage_dt_cnt,
pkage_dt_Mcnt,pkage_dt_Rcnt,pkage_dt_Gname,pkage_dt_meet,pkage_dt_meetDate,pkage_dt_startDay, pkage_dt_endDay)
VALUES
('pk110001', '인천 2일 #힐링여행', '힐링', 250000, 150000, 10, 4, 0, '김성현', '1호선 종각역 3번 또는 3-1번출구 OhTravel본사앞 (차량대기 및 출발)', '2022-12-21 08:00', '2022-12-21 08:00', '2022-12-22 17:00');

# ------------------------------------------------------------------------------------------------------------------------------
# package_hotel 테이블 insert

# 파타야, pkage_dt_id 1
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(1, 'ht420001');

# 파타야, pkage_dt_id 2
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(2, 'ht420001');

# 파타야, pkage_dt_id 3
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(3, 'ht420002');

# 파타야, pkage_dt_id 4
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(4, 'ht420002');
#------------------------------------
# 방콕, pkage_dt_id : 5
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(5, 'ht410001');

# 방콕, pkage_dt_id : 6
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(6, 'ht410001');

# 방콕, pkage_dt_id : 7
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(7, 'ht410002');

# 방콕, pkage_dt_id : 8
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(8, 'ht410002');
#------------------------------------
# 상하이, pkage_dt_id : 9
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(9, 'ht320001');

# 상하이, pkage_dt_id : 10
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(10, 'ht320001');

# 상하이, pkage_dt_id : 11
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(11, 'ht320002');

# 상하이, pkage_dt_id : 12
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(12, 'ht320002');
#------------------------------------
# 베이징, pkage_dt_id : 13
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(13, 'ht310001');

# 베이징, pkage_dt_id : 14
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(14, 'ht310001');

# 베이징, pkage_dt_id : 15
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(15, 'ht310002');

# 베이징, pkage_dt_id : 16
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(16, 'ht310002');
#------------------------------------
# 오사카, pkage_dt_id : 17
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(17, 'ht220001');

# 오사카, pkage_dt_id : 18
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(18, 'ht220001');

# 오사카, pkage_dt_id : 19
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(19, 'ht220002');

# 오사카, pkage_dt_id : 20
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(20, 'ht220002');
#------------------------------------
# 후쿠오카, pkage_dt_id : 21
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(21, 'ht210001');

# 후쿠오카, pkage_dt_id : 22
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(22, 'ht210001');

# 후쿠오카, pkage_dt_id : 23
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(23, 'ht210002');

# 후쿠오카, pkage_dt_id : 24
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(24, 'ht210002');
#------------------------------------
# 제주도, pkage_dt_id : 25
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(25, 'ht140001');

# 제주도, pkage_dt_id : 26
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(26, 'ht140001');

# 제주도, pkage_dt_id : 27
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(27, 'ht140002');

# 제주도, pkage_dt_id : 28
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(28, 'ht140002');
#------------------------------------
# 부산, pkage_dt_id : 29
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(29, 'ht130001');

# 부산, pkage_dt_id : 30
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(30, 'ht130001');

# 부산, pkage_dt_id : 31
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(31, 'ht130002');

# 부산, pkage_dt_id : 32
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(32, 'ht130002');
#------------------------------------
# 여수, pkage_dt_id : 33
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(33, 'ht120001');

# 여수, pkage_dt_id : 34
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(34, 'ht120002');
#------------------------------------
# 인천, pkage_dt_id : 35
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(35, 'ht110001');

# 인천, pkage_dt_id : 36
INSERT INTO package_hotel
(pkage_dt_id, hotel_id)
VALUES(36, 'ht110002');
#------------------------------------

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# package_image 테이블

# 인천
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk110001', '/img/pkage/package/package_inchoen11001_1.jpg');

# 여수 pk120001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk120001', '/img/pkage/package/package_yeosu12001_1.jpg');

# 부산 pk130001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk130001', '/img/pkage/package/package_busan13001_1.jpg');

# 부산 pk130002
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk130002', '/img/pkage/package/package_busan13002_1.jpg');

# 제주 pk140001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk140001', '/img/pkage/package/package_jeju14001_1.jpg');

# 제주 pk140002
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk140002', '/img/pkage/package/package_jeju14002_1.jpg');

# 후쿠오카 pk210001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk210001', '/img/pkage/package/package_fukuoka21001_1.jpeg');

# 후쿠오카 pk210002
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk210002', '/img/pkage/package/package_fukuoka21002_1.jpg');

# 오사카 pk220001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk220001', '/img/pkage/package/package_osaka22001_1.jpg');

# 오사카 pk220002
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk220002', '/img/pkage/package/package_osaka22002_1.jpg');

# 베이징 pk310001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk310001', '/img/pkage/package/package_beijing31001_1.jpg');

# 베이징 pk310002
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk310002', '/img/pkage/package/package_beijing31002_1.jpg');

# 상하이 pk320001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk320001', '/img/pkage/package/package_shanghai32001_1.jpg');

# 상하이 pk320002
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk320002', '/img/pkage/package/package_shanghai32002_1.jpg');

# 방콕 pk410001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk410001', '/img/pkage/package/package_bangkok41001_1.jpg');

# 방콕 pk410002
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk410002', '/img/pkage/package/package_bangkok41002_1.jpg');

# 파타야 pk420001
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk420001', '/img/pkage/package/package_pattaya42001_1.jpg');

# 파타야 pk420002
INSERT INTO package_image
(pkage_id, pkage_Img_path) VALUES ('pk420002', '/img/pkage/package/package_pattaya42002_1.jpg');

# --------------------------------------------------------------------------------------------------------------------------------------
-- package_schedule 여행일정 테이블

-- package 42001 : 파타야, pkage_dt_id : 1 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(1, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(1, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(1, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 42001 : 파타야, pkage_dt_id : 2 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(2, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(2, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(2, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(2, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 42002 : 파타야, pkage_dt_id : 3 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(3, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(3, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(3, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 42002 : 파타야, pkage_dt_id : 4 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(4, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(4, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(4, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(4, 4, '버스', '현지식', '현지식', '불포함');
--------------------------------------------------------
-- package 41001 : 방콕, pkage_dt_id : 5 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(5, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(5, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(5, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 41001 : 방콕, pkage_dt_id : 6 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(6, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(6, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(6, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(6, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 41002 : 방콕, pkage_dt_id : 7 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(7, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(7, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(7, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 41002 : 방콕, pkage_dt_id : 8 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(8, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(8, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(8, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(8, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 32001 : 상하이, pkage_dt_id : 9 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(9, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(9, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(9, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 32001 : 상하이, pkage_dt_id : 10 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(10, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(10, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(10, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(10, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 32002 : 상하이, pkage_dt_id : 11 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(11, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(11, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(11, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 32002 : 상하이, pkage_dt_id : 12 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(12, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(12, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(12, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(12, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 31001 : 베이징, pkage_dt_id : 13 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(13, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(13, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(13, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 31001 : 베이징, pkage_dt_id : 14 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(14, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(14, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(14, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(14, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 31002 : 베이징, pkage_dt_id : 15 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(15, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(15, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(15, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 31002 : 베이징, pkage_dt_id : 16 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(16, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(16, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(16, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(16, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 22001 : 오사카, pkage_dt_id : 17 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(17, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(17, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(17, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 22001 : 오사카, pkage_dt_id : 18 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(18, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(18, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(18, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(18, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 22002 : 오사카, pkage_dt_id : 19 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(19, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(19, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(19, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 22002 : 오사카, pkage_dt_id : 20 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(20, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(20, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(20, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(20, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 21001 : 후쿠오카, pkage_dt_id : 21 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(21, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(21, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(21, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 21001 : 후쿠오카, pkage_dt_id : 22 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(22, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(22, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(22, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(22, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 21002 : 후쿠오카, pkage_dt_id : 23 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(23, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(23, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(23, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 21002 : 후쿠오카, pkage_dt_id : 24 (4일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(24, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(24, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(24, 3, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(24, 4, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 14001 : 제주도, pkage_dt_id : 25 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(25, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(25, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(25, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 14001 : 제주도, pkage_dt_id : 26 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(26, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(26, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(26, 3, '버스', '현지식', '현지식', '불포함');


---------------------------------------------------------
-- package 14002 : 제주도, pkage_dt_id : 27 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(27, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(27, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(27, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 14002 : 제주도, pkage_dt_id : 28 (3일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(28, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(28, 2, '버스', '현지식', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(28, 3, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 13001 : 부산, pkage_dt_id : 29 (2일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(29, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(29, 2, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 13001 : 부산, pkage_dt_id : 30 (2일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(30, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(30, 2, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 13002 : 부산, pkage_dt_id : 31 (2일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(31, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(31, 2, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 13002 : 부산, pkage_dt_id : 32 (2일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(32, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(32, 2, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 12001 : 여수, pkage_dt_id : 33 (2일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(33, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(33, 2, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 12001 : 여수, pkage_dt_id : 34 (2일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(34, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(34, 2, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 11001 : 인천, pkage_dt_id : 35 (2일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(35, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(35, 2, '버스', '현지식', '현지식', '불포함');

---------------------------------------------------------
-- package 11001 : 인천, pkage_dt_id : 36 (2일)
INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(36, 1, '버스', '불포함', '현지식', '현지식');

INSERT INTO package_schedule
(pkage_dt_id,pkage_sche_day,pkage_sche_trans,pkage_sche_b,pkage_sche_l,pkage_sche_d)
VALUES
(36, 2, '버스', '현지식', '현지식', '불포함');

# ----------------------------------------------------------------------------------------------------------------------------
# packageSchedule_detail 테이블

-- package 42001 : 파타야, pkage_dt_id : 1 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (1, 1, 4201, 1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (1, 1, 4202, 2);

-- package 42001 : 파타야, pkage_dt_id : 1 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (1, 2, 4203, 1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (1, 2, 4204, 2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (1, 2, 4207, 3);

-- package 42001 : 파타야, pkage_dt_id : 1 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (1, 3, 4205, 1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (1, 3, 4206, 2);

--------------------------------------------------------------
-- package 42001 : 파타야, pkage_dt_id : 2 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 1, 4201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 1, 4202,2);

-- package 42001 : 파타야, pkage_dt_id : 2 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 2, 4203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 2, 4204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 2, 4209,3);

-- package 42001 : 파타야, pkage_dt_id : 2 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 3, 4205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 3, 4206,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 3, 4208,3);

-- package 42001 : 파타야, pkage_dt_id : 2 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 4, 4205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (2, 4, 4206,2);

----------------------------------------------
-- package 42002 : 파타야, pkage_dt_id : 3 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (3, 1, 4201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (3, 1, 4202,2);

-- package 42002 : 파타야, pkage_dt_id : 3 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (3, 2, 4203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (3, 2, 4204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (3, 2, 4207,3);

-- package 42002 : 파타야, pkage_dt_id : 3 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (3, 3, 4205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (3, 3, 4206,2);

----------------------------------------------
-- package 42002 : 파타야, pkage_dt_id : 4 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 1, 4201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 1, 4202,2);

-- package 42002 : 파타야, pkage_dt_id : 4 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 2, 4203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 2, 4204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 2, 4207,3);

-- package 42002 : 파타야, pkage_dt_id : 4 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 3, 4205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 3, 4209,2);

-- package 42002 : 파타야, pkage_dt_id : 4 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 4, 4205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (4, 4, 4206,2);

------------------------------------------------------
------------------------------------------------------
-- package 41001 : 방콕, pkage_dt_id : 5 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (5, 1, 4101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (5, 1, 4102,2);

-- package 41001 : 방콕, pkage_dt_id : 5 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (5, 2, 4103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (5, 2, 4104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (5, 2, 4106,3);

-- package 41001 : 방콕, pkage_dt_id : 5 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (5, 3, 4105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (5, 3, 4107,2);

--------------------------------------------------------------
-- package 41001 : 방콕, pkage_dt_id : 6 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 1, 4101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 1, 4102,2);

-- package 41001 : 방콕, pkage_dt_id : 6 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 2, 4103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 2, 4104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 2, 4106,3);

-- package 41001 : 방콕, pkage_dt_id : 6 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 3, 4108,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 3, 4107,2);

-- package 41001 : 방콕, pkage_dt_id : 6 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 4, 4105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (6, 4, 4109,2);

----------------------------------------------
-- package 41002 : 방콕, pkage_dt_id : 7 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (7, 1, 4101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (7, 1, 4102,2);

-- package 41002 : 방콕, pkage_dt_id : 7 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (7, 2, 4103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (7, 2, 4104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (7, 2, 4107,3);

-- package 41002 : 방콕, pkage_dt_id : 7 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (7, 3, 4105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (7, 3, 4106,2);

----------------------------------------------
-- package 41002 : 방콕, pkage_dt_id : 8 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 1, 4101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 1, 4102,2);

-- package 41002 : 방콕, pkage_dt_id : 8 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 2, 4103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 2, 4104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 2, 4106,3);

-- package 41002 : 방콕, pkage_dt_id : 8 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 3, 4108,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 3, 4107,2);

-- package 41002 : 방콕, pkage_dt_id : 8 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 4, 4105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (8, 4, 4109,2);

----------------------------------------------
-- package 32001 : 상하이, pkage_dt_id : 9 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (9, 1, 3201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (9, 1, 3202,2);

-- package 32001 : 상하이, pkage_dt_id : 9 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (9, 2, 3203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (9, 2, 3204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (9, 2, 3207,3);

-- package 32001 : 상하이, pkage_dt_id : 9 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (9, 3, 3205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (9, 3, 3206,2);

----------------------------------------------
-- package 32001 : 상하이, pkage_dt_id : 10 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 1, 3201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 1, 3202,2);

-- package 32001 : 상하이, pkage_dt_id : 10 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 2, 3203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 2, 3204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 2, 3207,3);

-- package 32001 : 상하이, pkage_dt_id : 10 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 3, 3205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 3, 3206,2);

-- package 32001 : 상하이, pkage_dt_id : 10 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 4, 3208,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (10, 4, 3209,2);

----------------------------------------------
-- package 32002 : 상하이, pkage_dt_id : 11 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (11, 1, 3201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (11, 1, 3202,2);

-- package 32002 : 상하이, pkage_dt_id : 11 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (11, 2, 3203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (11, 2, 3204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (11, 2, 3207,3);

-- package 32002 : 상하이, pkage_dt_id : 11 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (11, 3, 3205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (11, 3, 3206,2);

----------------------------------------------
-- package 32002 : 상하이, pkage_dt_id : 12 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 1, 3201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 1, 3202,2);

-- package 32002 : 상하이, pkage_dt_id : 12 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 2, 3203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 2, 3204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 2, 3207,3);

-- package 32002 : 상하이, pkage_dt_id : 12 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 3, 3205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 3, 3206,2);

-- package 32002 : 상하이, pkage_dt_id : 12 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 4, 3208,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (12, 4, 3209,2);

----------------------------------------------
-- package 31001 : 베이징, pkage_dt_id : 13 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (13, 1, 3101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (13, 1, 3102,2);

-- package 31001 : 베이징, pkage_dt_id : 13 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (13, 2, 3103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (13, 2, 3104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (13, 2, 3107,3);

-- package 31001 : 베이징, pkage_dt_id : 13 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (13, 3, 3105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (13, 3, 3106,2);

----------------------------------------------
-- package 31001 : 베이징, pkage_dt_id : 14 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 1, 3101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 1, 3102,2);

-- package 31001 : 베이징, pkage_dt_id : 14 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 2, 3103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 2, 3104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 2, 3107,3);

-- package 31001 : 베이징, pkage_dt_id : 14 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 3, 3105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 3, 3106,2);

-- package 31001 : 베이징, pkage_dt_id : 14 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 4, 3108,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (14, 4, 3109,2);

----------------------------------------------
-- package 31002 : 베이징, pkage_dt_id : 15 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (15, 1, 3101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (15, 1, 3102,2);

-- package 31002 : 베이징, pkage_dt_id : 15 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (15, 2, 3103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (15, 2, 3104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (15, 2, 3107,3);

-- package 31002 : 베이징, pkage_dt_id : 15 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (15, 3, 3105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (15, 3, 3106,2);

----------------------------------------------
-- package 31002 : 베이징, pkage_dt_id : 16 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 1, 3101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 1, 3102,2);

-- package 31002 : 베이징, pkage_dt_id : 16 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 2, 3103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 2, 3104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 2, 3107,3);

-- package 31002 : 베이징, pkage_dt_id : 16 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 3, 3105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 3, 3106,2);

-- package 31002 : 베이징, pkage_dt_id : 16 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 4, 3108,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (16, 4, 3109,2);

----------------------------------------------
-- package 22001 : 오사카, pkage_dt_id : 17 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (17, 1, 2201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (17, 1, 2202,2);

-- package 22001 : 오사카, pkage_dt_id : 17 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (17, 2, 2203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (17, 2, 2204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (17, 2, 2207,3);

-- package 22001 : 오사카, pkage_dt_id : 17 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (17, 3, 2205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (17, 3, 2206,2);

----------------------------------------------
-- package 22001 : 오사카, pkage_dt_id : 18 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 1, 2201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 1, 2202,2);

-- package 22001 : 오사카, pkage_dt_id : 18 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 2, 2203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 2, 2204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 2, 2207,3);

-- package 22001 : 오사카, pkage_dt_id : 18 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 3, 2205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 3, 2206,2);

-- package 22001 : 오사카, pkage_dt_id : 18 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 4, 2208,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (18, 4, 2209,2);

----------------------------------------------
-- package 22002 : 오사카, pkage_dt_id : 19 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (19, 1, 2201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (19, 1, 2202,2);

-- package 22002 : 오사카, pkage_dt_id : 19 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (19, 2, 2203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (19, 2, 2204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (19, 2, 2207,3);

-- package 22002 : 오사카, pkage_dt_id : 19 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (19, 3, 2205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (19, 3, 2206,2);

----------------------------------------------
-- package 22001 : 오사카, pkage_dt_id : 20 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 1, 2201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 1, 2202,2);

-- package 22001 : 오사카, pkage_dt_id : 20 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 2, 2203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 2, 2204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 2, 2207,3);

-- package 22001 : 오사카, pkage_dt_id : 20 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 3, 2205,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 3, 2206,2);

-- package 22001 : 오사카, pkage_dt_id : 20 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 4, 2208,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (20, 4, 2209,2);

----------------------------------------------
-- package 21001 : 후쿠오카, pkage_dt_id : 21 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (21, 1, 2101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (21, 1, 2102,2);

-- package 21001 : 후쿠오카, pkage_dt_id : 21 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (21, 2, 2103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (21, 2, 2104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (21, 2, 2107,3);

-- package 21001 : 후쿠오카, pkage_dt_id : 21 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (21, 3, 2105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (21, 3, 2106,2);

----------------------------------------------
-- package 21001 : 후쿠오카, pkage_dt_id : 22 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 1, 2101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 1, 2102,2);

-- package 21001 : 후쿠오카, pkage_dt_id : 22 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 2, 2103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 2, 2104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 2, 2107,3);

-- package 21001 : 후쿠오카, pkage_dt_id : 22 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 3, 2105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 3, 2109,2);

-- package 21001 : 후쿠오카, pkage_dt_id : 22 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 4, 2108,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (22, 4, 2106,2);

----------------------------------------------
-- package 21002 : 후쿠오카, pkage_dt_id : 23 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (23, 1, 2101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (23, 1, 2102,2);

-- package 21002 : 후쿠오카, pkage_dt_id : 23 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (23, 2, 2103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (23, 2, 2104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (23, 2, 2107,3);

-- package 21002 : 후쿠오카, pkage_dt_id : 23 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (23, 3, 2105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (23, 3, 2106,2);

----------------------------------------------
-- package 21002 : 후쿠오카, pkage_dt_id : 24 (4일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 1, 2101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 1, 2102,2);

-- package 21002 : 후쿠오카, pkage_dt_id : 24 (4일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 2, 2103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 2, 2104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 2, 2107,3);

-- package 21002 : 후쿠오카, pkage_dt_id : 24 (4일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 3, 2105,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 3, 2109,2);

-- package 21002 : 후쿠오카, pkage_dt_id : 24 (4일 중 4일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 4, 2108,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (24, 4, 2106,2);

----------------------------------------------
-- package 14001 : 제주도, pkage_dt_id : 25 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (25, 1, 1401,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (25, 1, 1402,2);

-- package 14001 : 제주도, pkage_dt_id : 25 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (25, 2, 1407,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (25, 2, 1404,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (25, 2, 1409,3);

-- package 14001 : 제주도, pkage_dt_id : 25 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (25, 3, 1405,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (25, 3, 1406,2);

----------------------------------------------
-- package 14001 : 제주도, pkage_dt_id : 26 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (26, 1, 1401,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (26, 1, 1402,2);

-- package 14001 : 제주도, pkage_dt_id : 26 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (26, 2, 1409,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (26, 2, 1404,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (26, 2, 1407,3);

-- package 14001 : 제주도, pkage_dt_id : 26 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (26, 3, 1405,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (26, 3, 1406,2);

----------------------------------------------
-- package 14002 : 제주도, pkage_dt_id : 27 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (27, 1, 1401,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (27, 1, 1402,2);

-- package 14002 : 제주도, pkage_dt_id : 27 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (27, 2, 1403,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (27, 2, 1404,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (27, 2, 1408,3);

-- package 14002 : 제주도, pkage_dt_id : 27 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (27, 3, 1405,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (27, 3, 1406,2);

----------------------------------------------
-- package 14002 : 제주도, pkage_dt_id : 28 (3일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (28, 1, 1401,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (28, 1, 1402,2);

-- package 14002 : 제주도, pkage_dt_id : 28 (3일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (28, 2, 1403,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (28, 2, 1404,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (28, 2, 1408,3);

-- package 14002 : 제주도, pkage_dt_id : 28 (3일 중 3일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (28, 3, 1405,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (28, 3, 1406,2);

----------------------------------------------
-- package 13001 : 부산, pkage_dt_id : 29 (2일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (29, 1, 1301,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (29, 1, 1305,2);

-- package 13001 : 부산, pkage_dt_id : 29 (2일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (29, 2, 1303,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (29, 2, 1304,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (29, 2, 1308,3);

----------------------------------------------
-- package 13001 : 부산, pkage_dt_id : 30 (2일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (30, 1, 1301,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (30, 1, 1305,2);

-- package 13001 : 부산, pkage_dt_id : 30 (2일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (30, 2, 1303,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (30, 2, 1304,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (30, 2, 1308,3);

----------------------------------------------
-- package 13002 : 부산, pkage_dt_id : 31 (2일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (31, 1, 1301,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (31, 1, 1306,2);

-- package 13002 : 부산, pkage_dt_id : 31 (2일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (31, 2, 1303,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (31, 2, 1309,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (31, 2, 1308,3);

----------------------------------------------
-- package 13002 : 부산, pkage_dt_id : 32 (2일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (32, 1, 1301,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (32, 1, 1306,2);

-- package 13002 : 부산, pkage_dt_id : 32 (2일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (32, 2, 1303,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (32, 2, 1309,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (32, 2, 1308,3);

----------------------------------------------
-- package 12001 : 여수, pkage_dt_id : 33 (2일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (33, 1, 1201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (33, 1, 1206,2);

-- package 12001 : 여수, pkage_dt_id : 33 (2일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (33, 2, 1203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (33, 2, 1204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (33, 2, 1205,3);

----------------------------------------------
-- package 12001 : 여수, pkage_dt_id : 34 (2일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (34, 1, 1201,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (34, 1, 1206,2);

-- package 12001 : 여수, pkage_dt_id : 34 (2일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (34, 2, 1203,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (34, 2, 1204,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (34, 2, 1205,3);

----------------------------------------------
-- package 11001 : 인천, pkage_dt_id : 35 (2일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (35, 1, 1103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (35, 1, 1102,2);

-- package 11001 : 인천, pkage_dt_id : 35 (2일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (35, 2, 1101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (35, 2, 1104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (35, 2, 1105,3);

----------------------------------------------
-- package 11001 : 인천, pkage_dt_id : 36 (2일 중 1일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (36, 1, 1103,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (36, 1, 1102,2);

-- package 11001 : 인천, pkage_dt_id : 36 (2일 중 2일차)
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (36, 2, 1101,1);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (36, 2, 1104,2);
INSERT INTO packageschedule_detail (pkage_dt_id, pkage_sche_day, attr_id, pkage_s_d_order) 
VALUES (36, 2, 1105,3);

# ------------------------------------------------------------------------------------------------------------------------------
# package_flightSche 테이블

-- package 42001 : 파타야, pkage_dt_id : 1, 인천공항 출발, 파타야공항 도착 THA003, 2022-12-20
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(1, 493, 0);

-- package 42001 : 파타야, pkage_dt_id : 1, 파타야공항 출발, 인천공항 도착, THA003, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(1, 665, 1);

-- package 42001 : 파타야, pkage_dt_id : 2, 인천공항 출발, 파타야공항 도착,THA008, 2022-12-21
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(2, 513, 0);

-- package 42001 : 파타야, pkage_dt_id : 2, 파타야공항 출발, 인천공항 도착,THA008, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(2, 666, 1);

-- package 42002 : 파타야, pkage_dt_id : 3, 인천공항 출발, 파타야공항 도착 THA013, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(3, 533, 0);

-- package 42002 : 파타야, pkage_dt_id : 3, 파타야공항 출발, 인천공항 도착 THA013, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(3, 667, 1);

-- package 42002 : 파타야, pkage_dt_id : 4, 인천공항 출발, 파타야공항 도착 THA018, 2022-12-23
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(4, 553, 0);

-- package 42002 : 파타야, pkage_dt_id : 4, 인천공항 출발, 파타야공항 도착 THA018, 2022-12-26
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(4, 668, 1);

-------------------------------------------------------------
-- package 41001 : 방콕, pkage_dt_id : 5, 인천공항 출발, 방콕공항 도착 THA001, 2022-12-20
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(5, 491, 0);

-- package 41001 : 방콕, pkage_dt_id : 5, 방콕공학 출발, 인천공항 도착 THA001, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(5, 661, 1);

-- package 41001 : 방콕, pkage_dt_id : 6, 인천공항 출발, 방콕공항 도착 THA006, 2022-12-21
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(6, 511, 0);

-- package 41001 : 방콕, pkage_dt_id : 6, 방콕공학 출발, 인천공항 도착, THA006, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(6, 662, 1);

-- package 41002 : 방콕, pkage_dt_id : 7, 인천공항 출발, 방콕공항 도착, THA011, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(7, 531, 0);

-- package 41002 : 방콕, pkage_dt_id : 7, 방콕공학 출발, 인천공항 도착, THA011, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(7, 663, 1);

-- package 41002 : 방콕, pkage_dt_id : 8, 인천공항 출발, 방콕공항 도착, THA016, 2022-12-23
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(8, 551, 0);

-- package 41002 : 방콕, pkage_dt_id : 8, 방콕공학 출발, 인천공항 도착, THA016, 2022-12-26
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(8, 664, 1);

-------------------------------------------------------------
-- package 32001 : 상하이, pkage_dt_id : 9, 인천공항 출발, 상하이공항 도착, CHE004, 2022-12-20
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(9, 334, 0);

-- package 32001 : 상하이, pkage_dt_id : 9, 상하이공항 출발, 인천공항 도착, CHE004, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(9, 657, 1);

-- package 32001 : 상하이, pkage_dt_id : 10, 인천공항 출발, 상하이공항 도착, CHE009, 2022-12-21
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(10, 354, 0);

-- package 32001 : 상하이, pkage_dt_id : 10, 상하이공항 출발, 인천공항 도착, CHE009, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(10, 658, 1);

-- package 32002 : 상하이, pkage_dt_id : 11, 인천공항 출발, 상하이공항 도착, CHE014, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(11, 374, 0);

-- package 32002 : 상하이, pkage_dt_id : 11, 상하이공항 출발, 인천공항 도착, CHE014, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(11, 659, 1);

-- package 32002 : 상하이, pkage_dt_id : 12, 인천공항 출발, 상하이공항 도착, CHE019, 2022-12-23
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(12, 394, 0);

-- package 32002 : 상하이, pkage_dt_id : 12, 상하이공항 출발, 인천공항 도착, CHE019, 2022-12-26
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(12, 660, 1);

-------------------------------------------------------------
-- package 31001 : 베이징, pkage_dt_id : 13, 인천공항 출발, 베이징공항 도착, CHE001, 2022-12-20
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(13, 331, 0);

-- package 31001 : 베이징, pkage_dt_id : 13, 베이징 공항 출발, 인천공항 도착, CHE001, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(13, 653, 1);

-- package 31001 : 베이징, pkage_dt_id : 14, 인천공항 출발, 베이징공항 도착, CHE006, 2022-12-21
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(14, 351, 0);

-- package 31001 : 베이징, pkage_dt_id : 14, 베이징 공항 출발, 인천공항 도착, CHE006, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(14, 654, 1);

-- package 31002 : 베이징, pkage_dt_id : 15, 인천공항 출발, 베이징공항 도착, CHE011, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(15, 371, 0);

-- package 31002 : 베이징, pkage_dt_id : 15, 베이징 공항 출발, 인천공항 도착, CHE011, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(15, 655, 1);

-- package 31002 : 베이징, pkage_dt_id : 16, 인천공항 출발, 베이징공항 도착, CHE016, 2022-12-23
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(16, 391, 0);

-- package 31002 : 베이징, pkage_dt_id : 16, 베이징 공항 출발, 인천공항 도착, CHE016, 2022-12-26
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(16, 656, 1);

-------------------------------------------------------------
-- package 22001 : 오사카, pkage_dt_id : 17, 인천공항 출발, 오사카공항 도착, ANA030, 2022-12-20
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(17, 176, 0);

-- package 22001 : 오사카, pkage_dt_id : 17, 오사카공항 출발, 인천공항 도착, ANA030, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(17, 649, 1);

-- package 22001 : 오사카, pkage_dt_id : 18, 인천공항 출발, 오사카공항 도착, ANA025, 2022-12-21
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(18, 196, 0);

-- package 22001 : 오사카, pkage_dt_id : 18, 오사카공항 출발, 인천공항 도착, ANA025, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(18, 650, 1);

-- package 22002 : 오사카, pkage_dt_id : 19, 인천공항 출발, 오사카공항 도착, ANA020, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(19, 216, 0);

-- package 22002 : 오사카, pkage_dt_id : 19, 오사카공항 출발, 인천공항 도착, ANA020, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(19, 651, 1);

-- package 22002 : 오사카, pkage_dt_id : 20, 인천공항 출발, 오사카공항 도착, ANA015, 2022-12-23
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(20, 236, 0);

-- package 22002 : 오사카, pkage_dt_id : 20, 오사카공항 출발, 인천공항 도착, ANA015, 2022-12-26
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(20, 652, 1);


-------------------------------------------------------------
-- package 21001 : 후쿠오카, pkage_dt_id : 21, 인천공항 출발, 후쿠오카공항 도착, JAL030, 2022-12-20
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(21, 171, 0);

-- package 21001 : 후쿠오카, pkage_dt_id : 21, 후쿠오카공항 출발, 인천공항 도착, JAL030, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(21, 645, 1);

-- package 21001 : 후쿠오카, pkage_dt_id : 22, 인천공항 출발, 후쿠오카공항 도착, JAL025, 2022-12-21
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(22, 191, 0);

-- package 21001 : 후쿠오카, pkage_dt_id : 22, 후쿠오카공항 출발, 인천공항 도착, JAL025, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(22, 646, 1);

-- package 21002 : 후쿠오카, pkage_dt_id : 23, 인천공항 출발, 후쿠오카공항 도착, JAL020, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(23, 211, 0);

-- package 21002 : 후쿠오카, pkage_dt_id : 23, 후쿠오카공항 출발, 인천공항 도착, JAL020, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(23, 647, 1);

-- package 21002 : 후쿠오카, pkage_dt_id : 24, 인천공항 출발, 후쿠오카공항 도착, JAL015, 2022-12-23
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(24, 231, 0);

-- package 21002 : 후쿠오카, pkage_dt_id : 24, 후쿠오카공항 출발, 인천공항 도착, JAL015, 2022-12-26
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(24, 648, 1);

-------------------------------------------------------------
-- package 14001 : 제주도, pkage_dt_id : 25, 인천공항 출발, 제주공항 도착, JIN001, 2022-12-20
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(25, 11, 0);

-- package 14001 : 제주도, pkage_dt_id : 25, 제주공항 출발, 인천공항 도착, JIN001, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(25, 641, 1);

-- package 14001 : 제주도, pkage_dt_id : 26, 인천공항 출발, 제주공항 도착, JIN006, 2022-12-21
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(26, 31, 0);

-- package 14001 : 제주도, pkage_dt_id : 26, 제주공항 출발, 인천공항 도착, JIN006, 2022-12-23
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(26, 642, 1);

-- package 14002 : 제주도, pkage_dt_id : 27, 인천공항 출발, 제주공항 도착, JIN011, 2022-12-22
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(27, 51, 0);

-- package 14002 : 제주도, pkage_dt_id : 27, 제주공항 출발, 인천공항 도착, JIN011, 2022-12-24
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(27, 643, 1);

-- package 14002 : 제주도, pkage_dt_id : 28, 인천공항 출발, 제주공항 도착, JIN016, 2022-12-23
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(28, 71, 0);

-- package 14002 : 제주도, pkage_dt_id : 28, 제주공항 출발, 인천공항 도착, JIN016, 2022-12-25
INSERT INTO package_flightsche
(pkage_dt_id,Schedule_id,pkage_flight_gubun)
VALUES
(28, 644, 0);


--------------------------------------
-- 리뷰 테이블 임시 데이터

INSERT INTO review
(mem_id,rv_contents,rv_date,rv_real_id)
VALUES
('test1','test',now(),'pk310001');
INSERT INTO review
(mem_id,rv_contents,rv_date,rv_real_id)
VALUES
('test1','test',now(),'pk310001');
INSERT INTO review
(mem_id,rv_contents,rv_date,rv_real_id)
VALUES
('test1','test',now(),'pk310001');
INSERT INTO review
(mem_id,rv_contents,rv_date,rv_real_id)
VALUES
('test1','test',now(),'pk310002');
INSERT INTO review
(mem_id,rv_contents,rv_date,rv_real_id)
VALUES
('test1','test',now(),'pk310002');
INSERT INTO review
(mem_id,rv_contents,rv_date,rv_real_id)
VALUES
('test1','test',now(),'pk310002');

/*-------------------------------------------------입장권구분선 티켓구분선-------------------------------------------------------*/
-----------------------------------------------------------------------------------------------------
-- TBL ticket_detail
-- 인천 (110)
INSERT INTO ticket_detail (ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti110001', 110, "[인천] 송도 인더쥬 실내동물원", 40, "인천광역시 연수구 송도과학로16번길 33-4 D동 1층", "2022-12-31", 11900, 11900);
   
-- 여수 (120)
INSERT INTO ticket_detail(ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti120001', 120, "[여수] 아르떼뮤지엄", 1, "전남 여수시 박람회길 1 국제관 A동 3층", "2022-12-31", 17000, 10000);
        
-- 부산 (130)
INSERT INTO ticket_detail(ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti130001', 130, "[부산 해운대] 부산 요트투어 요트G 퍼블릭투어", 20, "부산시 해운대구 해운대해변로 84 수영만 요트경기장 4초소 3번 계류장", "2022-11-30", 14900, 14900);

-- 제주도 (140)
INSERT INTO ticket_detail(ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti140002', 140, "[제주] 카멜리아힐", 21, "제주특별자치도 서귀포시 안덕면 병악로 166", "2022-12-31", 7500, 7500);

-- 후쿠오카 (210)
INSERT INTO ticket_detail(ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti210001', 210, "[큐슈] 후쿠오카 타워", 50, "2 Chome-3-26 Momochihama, Sawara Ward, Fukuoka, 814-0001 일본", "2022-12-31", 7000, 7000);
  
-- 오사카 (220)
INSERT INTO ticket_detail(ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti220001', 220, "[오사카] 아베노 하루카스 300 전망대", 60, "Chome-1-43 Abenosuji, Abeno Ward, Osaka, 545-6016 일본", "2022-12-31", 13000, 13000);
  
-- 베이징 (310)
INSERT INTO ticket_detail(ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti310001', 310, "[북경]천단공원 통합입장권 - QR코드 입장", 70, "北京市东城区天坛东里甲1号", "2022-12-31", 8000, 8000);

-- 상하이 (320)
INSERT INTO ticket_detail(ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti320001', 320, "[상해] 상하이 타워(118층) 입장권 - QR코드 입장", 60, "上海市浦东新区银城中路501号", "2022-12-31", 29000, 29000);

-- 방콕 (410)
INSERT INTO ticket_detail(ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti410001', 410, "[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프", 80, "시암 파라곤", "2022-12-31", 46600, 46600);
        
-- 파타야 (420)
INSERT INTO ticket_detail (ticket_id, city_id, ticket_name, ticket_sales_cnt, ticket_location, ticket_due_date, ticket_adult_price, ticket_child_price)
VALUES('ti420001', 420, "[파타야] 진리의 성전 입장권", 4, "206/2 หมู่ที่ 5 ถนน พัทยา-นาเกลือ อำเภอ บางละมุง ชลบุรี 20150", "2023-01-12", 17500, 17500);

-----------------------------------------------------------------------------------------------------
-- TBL ticket_img
INSERT INTO ticket_img VALUES(1, 'ti110001', "https://static.hanatour.com/product/2022/03/17/0046yqutm9/default.png", "https://image6.yanolja.com/leisure/48ryW2TOa1nLNBGD");
INSERT INTO ticket_img VALUES(2, 'ti120001', "https://static.hanatour.com/product/2022/03/15/23436zw98i/default.png", "https://image6.yanolja.com/leisure/ZUgATmFmGlcFVcTC");
INSERT INTO ticket_img VALUES(3, 'ti130001', "https://static.hanatour.com/product/2022/05/19/0003f0il5s/default.png", "https://image6.yanolja.com/leisure/PCmYvfXwhlSGJJkl");
INSERT INTO ticket_img VALUES(4, 'ti140002', "https://static.hanatour.com/product/2018/12/26/11291qejbh/default.jpg", "https://ai.esmplus.com/jejumobile/new_jejumobile/03_landing/jejumobile/0_notice/cameliahill.jpg");
INSERT INTO ticket_img VALUES(5, 'ti210001', "https://static.hanatour.com/product/2018/12/12/0112qn2kuc/default.jpg", "https://image.hanatour.com/usr/cms/resize/770_0/2021/10/06/10000/60ac82a1-cfd8-48b5-8776-298125f124e0.jpg");
INSERT INTO ticket_img VALUES(6, 'ti220001', "https://static.hanatour.com/product/2018/12/28/0543zgcbyn/default.jpg", "https://image.hanatour.com/usr/cms/resize/770_0/2021/10/26/10000/67cdde81-b0a2-48f1-92ad-a746a8072fd0.jpg");
INSERT INTO ticket_img VALUES(7, 'ti310001', "https://static.hanatour.com/product/2019/11/22/0701jctlc4/default.jpg", "https://static.hanatour.com/product-basic/2019/11/22/0749jf7u9t/large.jpg");
INSERT INTO ticket_img VALUES(8, 'ti320001', "https://static.hanatour.com/product/2019/11/19/0813bxrtey/default.jpg", "https://static.hanatour.com/product-basic/2018/12/20/0838tbashf/large.jpg");
INSERT INTO ticket_img VALUES(9, 'ti410001', "https://static.hanatour.com/product/2022/05/19/0421xt10ao/default.jpg", "https://static.hanatour.com/product/2022/05/19/042121duk3/default.jpg");
INSERT INTO ticket_img VALUES(10, 'ti420001', "https://static.hanatour.com/product/2022/02/24/124858sf4l/default.jpg", "https://static.hanatour.com/product/2022/02/24/1248kx66nl/default.jpg");

-----------------------------------------------------------------------------------------------------
-- TBL ticket_reservation
INSERT INTO ticket_reservation VALUES(1, 'ti130001', 'test1', "[부산 해운대] 부산 요트투어 요트G 퍼블릭투어", '2022-11-14 18:05:22' , "2022-12-31", 1, 0, 14900);
INSERT INTO ticket_reservation VALUES(2, 'ti120001', 'test1', '[여수] 아르떼뮤지엄', '2022-11-15 18:05:22' , "2022-12-31", 1, 0, 17000);
INSERT INTO ticket_reservation VALUES(3, 'ti140002', 'test2', '[제주] 카멜리아힐', '2022-11-16 18:08:35' , "2022-12-31", 1, 0, 7500);


commit;

/*-------------------------------------------------리뷰구분선-------------------------------------------------------*/

## 리뷰 테이블 insert문

/* 페이징 처리 적용 후 작동 잘 되나 확인용으로 각 상품 id 110001에만 리뷰를 43개 쌓아놓았습니다... */

/* 입장권 */
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ti110001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다13', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다14', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다15', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다16', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다17', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다18', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다19', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다20', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다21', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다22', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다23', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다24', now(), 'ti110001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다25', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다26', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다27', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다28', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다29', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다30', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다31', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다32', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다33', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다34', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다35', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다36', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다37', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다38', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '좋은 관람이었어요', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '한 번 더 오려고 해요!!!', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '시기를 잘못 맞춘거 같아서 아쉽네요', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '친구들에게도 추천해주려구요~', now(), 'ti110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '아쉬운 점이 있었어요', now(), 'ti110001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다1', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다2', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다3', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다4', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다5', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다9', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다11', now(), 'ti120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ti120001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다2', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다3', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다4', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다5', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다8', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'ti130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ti130001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다1', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다8', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ti140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다12', now(), 'ti140001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다2', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다3', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 2, '테스트용 리뷰입니다4', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다9', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다10', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다11', now(), 'ti210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ti210001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다1', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다4', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'ti220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ti220001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ti310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ti310001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다1', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다2', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다3', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다9', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ti320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ti320001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ti410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ti410001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ti420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ti420001');




/* 패키지 */
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다3', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk110001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다13', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다14', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다15', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다16', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다17', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다18', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다19', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다20', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다21', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다22', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다23', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다24', now(), 'pk110001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다25', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다26', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다27', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다28', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다29', now(), 'pki110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다30', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다31', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다32', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다33', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다34', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다35', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다36', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다37', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다38', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '패키지 구성과 진행이 아쉬웠어요', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '가이드가 친절했습니다', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '사람이 너무 많았단 점 빼고 좋았어요', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '주변 지인들에게도 추천하고 싶어지네요', now(), 'pk110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '짧지만 즐거운 여행이었어요', now(), 'pk110001');



INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다1', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다2', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다3', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다4', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다5', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다9', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다11', now(), 'pk120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'pk120001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다2', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다3', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다4', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다5', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다8', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'pk130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk130001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다1', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다3', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다5', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'pk130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'pk130002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다1', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다8', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다12', now(), 'pk140001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다4', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다10', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다12', now(), 'pk140002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다2', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다3', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 2, '테스트용 리뷰입니다4', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다9', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다10', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다11', now(), 'pk210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'pk210001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다10', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'pk210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'pk210002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다1', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다4', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'pk220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk220001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 2, '테스트용 리뷰입니다8', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'pk220002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk310001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 1, '테스트용 리뷰입니다4', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 2.5, '테스트용 리뷰입니다5', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다7', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'pk310002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다1', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다2', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다3', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다9', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk320001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk320002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk410001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다3', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다10', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk410002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'pk420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'pk420001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다2', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다5', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다10', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'pk420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'pk420002');



/* 호텔 */
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다5', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht110001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다13', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다14', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다15', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다16', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다17', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다18', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다19', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다20', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다21', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다22', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다23', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다24', now(), 'ht110001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다25', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다26', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다27', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다28', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다29', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다30', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다31', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다32', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다33', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다34', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다35', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다36', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다37', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다38', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '가성비 좋게 잘 묵었다가 갑니다', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '조식이 맛있었어요!', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '직원이 불친절해서 아쉬웠어요', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '다음에 방문할 때도 이 호텔에 묵을거 같아요', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '전망이 좋고 시설이 깔끔했어요', now(), 'ht110001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('delete1', 5, '좋은 호텔입니다.', now(), 'ht110001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다4', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다8', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다11', now(), 'ht110002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht110002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다1', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다2', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다3', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다4', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다5', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다9', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다11', now(), 'ht120001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ht120001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다1', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다2', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다3', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 2, '테스트용 리뷰입니다4', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다6', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht120002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht120002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다2', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다3', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다4', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다5', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다8', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'ht130001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht130001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다1', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다3', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다5', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'ht130002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ht130002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다1', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다8', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht140001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다12', now(), 'ht140001');



INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다4', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다10', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht140002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다12', now(), 'ht140002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다2', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다3', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 2, '테스트용 리뷰입니다4', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다9', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다10', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다11', now(), 'ht210001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ht210001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다10', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'ht210002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ht210002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다1', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다4', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다9', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'ht220001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht220001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 2, '테스트용 리뷰입니다8', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht220002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ht220002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht310001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht310001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 1, '테스트용 리뷰입니다4', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 2.5, '테스트용 리뷰입니다5', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다7', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht310002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ht310002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다1', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다2', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다3', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다9', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht320001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht320001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht320002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht320002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht410001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht410001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다3', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다10', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht410002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht410002');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다2', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다5', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다10', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다11', now(), 'ht420001');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다12', now(), 'ht420001');

INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다1', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3, '테스트용 리뷰입니다2', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 3.5, '테스트용 리뷰입니다3', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다4', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4, '테스트용 리뷰입니다5', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다6', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다7', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다8', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 4.5, '테스트용 리뷰입니다9', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다10', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다11', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('test1', 5, '테스트용 리뷰입니다12', now(), 'ht420002');
INSERT INTO review (mem_id, rv_rating, rv_contents, rv_date, rv_real_id) VALUES('delete1', 5, '테스트용 리뷰입니다13', now(), 'ht420002');

## 티켓 예약 insert

insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-01 18:05:22','2022-12-31',1,0,14900);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-03 18:05:22','2022-12-31',1,0,30000);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-05 18:05:22','2022-12-31',1,0,38000);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-07 18:05:22','2022-12-31',1,0,175000);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-09 18:05:22','2022-12-31',1,0,152500);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-13 18:05:22','2022-12-31',1,0,170000);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-15 18:05:22','2022-12-31',1,0,49000);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-16 18:05:22','2022-12-31',1,0,52800);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-18 18:05:22','2022-12-31',1,0,99200);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-21 18:05:22','2022-12-31',1,0,76400);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-23 18:05:22','2022-12-31',1,0,180000);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-25 18:05:22','2022-12-31',1,0,163200);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-25 18:05:22','2022-12-31',1,0,19000);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-27 18:05:22','2022-12-31',1,0,33800);
insert into ticket_reservation values(null, 'ti130001','test1','[부산 해운대] 부산 요트투어 요트G 퍼블릭투어','2022-01-29 18:05:22','2022-12-31',1,0,112000);

insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-01 18:05:22','2022-12-31',3,0,39000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-03 18:05:22','2022-12-31',1,0,114500);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-05 18:05:22','2022-12-31',1,0,85000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-07 18:05:22','2022-12-31',1,0,49000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-09 18:05:22','2022-12-31',1,0,163200);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-11 18:05:22','2022-12-31',1,0,39000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-12 18:05:22','2022-12-31',1,0,99200);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-15 18:05:22','2022-12-31',1,0,49000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-16 18:05:22','2022-12-31',1,0,22000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-18 18:05:22','2022-12-31',1,0,13000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-19 18:05:22','2022-12-31',1,0,71000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-21 18:05:22','2022-12-31',1,0,112000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-25 18:05:22','2022-12-31',1,0,49000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-27 18:05:22','2022-12-31',1,0,66000);
insert into ticket_reservation values(null, 'ti220001','test1','[오사카] 아베노 하루카스 300 전망대','2022-02-28 18:05:22','2022-12-31',1,0,71000);

insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-01 18:05:22','2022-12-31',3,0,46600);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-03 18:05:22','2022-12-31',1,0,90000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-05 18:05:22','2022-12-31',1,0,180000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-07 18:05:22','2022-12-31',1,0,324000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-09 18:05:22','2022-12-31',1,0,270000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-11 18:05:22','2022-12-31',1,0,980400);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-12 18:05:22','2022-12-31',1,0,642000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-15 18:05:22','2022-12-31',1,0,490000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-16 18:05:22','2022-12-31',1,0,220000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-18 18:05:22','2022-12-31',1,0,130000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-19 18:05:22','2022-12-31',1,0,327050);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-21 18:05:22','2022-12-31',1,0,543205);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-25 18:05:22','2022-12-31',1,0,441500);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-27 18:05:22','2022-12-31',1,0,330000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-03-30 18:05:22','2022-12-31',1,0,170000);


insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-01 18:05:22','2022-12-31',3,0,1270500);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-03 18:05:22','2022-12-31',1,0,885000);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-05 18:05:22','2022-12-31',1,0,716000);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-07 18:05:22','2022-12-31',1,0,580000);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-09 18:05:22','2022-12-31',1,0,612000);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-11 18:05:22','2022-12-31',1,0,270080);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-12 18:05:22','2022-12-31',1,0,323500);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-15 18:05:22','2022-12-31',1,0,468900);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-16 18:05:22','2022-12-31',1,0,471700);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-18 18:05:22','2022-12-31',1,0,127050);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-19 18:05:22','2022-12-31',1,0,380600);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-21 18:05:22','2022-12-31',1,0,333000);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-25 18:05:22','2022-12-31',1,0,395000);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-27 18:05:22','2022-12-31',1,0,627000);
insert into ticket_reservation values(null, 'ti420001','test1','[파타야] 진리의 성전 입장권','2022-05-30 18:05:22','2022-12-31',1,0,637000);

insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-01 18:05:22','2022-12-31',3,0,86000);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-03 18:05:22','2022-12-31',1,0,92700);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-05 18:05:22','2022-12-31',1,0,130800);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-07 18:05:22','2022-12-31',1,0,380500);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-09 18:05:22','2022-12-31',1,0,216500);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-11 18:05:22','2022-12-31',1,0,200000);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-12 18:05:22','2022-12-31',1,0,300000);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-15 18:05:22','2022-12-31',1,0,156000);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-16 18:05:22','2022-12-31',1,0,179000);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-18 18:05:22','2022-12-31',1,0,130000);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-19 18:05:22','2022-12-31',1,0,327050);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-21 18:05:22','2022-12-31',1,0,543205);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-25 18:05:22','2022-12-31',1,0,17000);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-27 18:05:22','2022-12-31',1,0,330000);
insert into ticket_reservation values(null, 'ti320001','test1','[상해] 상하이 타워(118층) 입장권 - QR코드 입장','2022-06-30 18:05:22','2022-12-31',1,0,310500);


insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-01 18:05:22','2022-12-31',3,0,112000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-03 18:05:22','2022-12-31',1,0,160000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-05 18:05:22','2022-12-31',1,0,132000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-07 18:05:22','2022-12-31',1,0,27000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-09 18:05:22','2022-12-31',1,0,96000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-11 18:05:22','2022-12-31',1,0,130000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-12 18:05:22','2022-12-31',1,0,140000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-15 18:05:22','2022-12-31',1,0,160000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-16 18:05:22','2022-12-31',1,0,220000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-18 18:05:22','2022-12-31',1,0,130000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-19 18:05:22','2022-12-31',1,0,327050);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-21 18:05:22','2022-12-31',1,0,543205);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-25 18:05:22','2022-12-31',1,0,441500);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-27 18:05:22','2022-12-31',1,0,380000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-07-30 18:05:22','2022-12-31',1,0,110000);


insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-01 18:05:22','2022-12-31',3,0,12345);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-03 18:05:22','2022-12-31',1,0,454614);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-05 18:05:22','2022-12-31',1,0,156112);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-07 18:05:22','2022-12-31',1,0,123457);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-09 18:05:22','2022-12-31',1,0,220000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-11 18:05:22','2022-12-31',1,0,327050);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-12 18:05:22','2022-12-31',1,0,642000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-15 18:05:22','2022-12-31',1,0,543205);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-16 18:05:22','2022-12-31',1,0,220000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-18 18:05:22','2022-12-31',1,0,441500);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-19 18:05:22','2022-12-31',1,0,327050);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-21 18:05:22','2022-12-31',1,0,170000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-25 18:05:22','2022-12-31',1,0,441500);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-27 18:05:22','2022-12-31',1,0,330000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-08-30 18:05:22','2022-12-31',1,0,170000);


insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-01 18:05:22','2022-12-31',3,0,170000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-03 18:05:22','2022-12-31',1,0,330000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-05 18:05:22','2022-12-31',1,0,441500);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-07 18:05:22','2022-12-31',1,0,170000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-09 18:05:22','2022-12-31',1,0,270000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-11 18:05:22','2022-12-31',1,0,110000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-12 18:05:22','2022-12-31',1,0,130000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-15 18:05:22','2022-12-31',1,0,380000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-16 18:05:22','2022-12-31',1,0,120000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-18 18:05:22','2022-12-31',1,0,270000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-19 18:05:22','2022-12-31',1,0,220000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-21 18:05:22','2022-12-31',1,0,540060);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-25 18:05:22','2022-12-31',1,0,386000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-27 18:05:22','2022-12-31',1,0,420000);
insert into ticket_reservation values(null, 'ti210001','test1','[큐슈] 후쿠오카 타워','2022-09-30 18:05:22','2022-12-31',1,0,450000);


insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-01 18:05:22','2022-12-31',3,0,11000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-03 18:05:22','2022-12-31',1,0,22000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-05 18:05:22','2022-12-31',1,0,96000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-07 18:05:22','2022-12-31',1,0,98000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-09 18:05:22','2022-12-31',1,0,135000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-11 18:05:22','2022-12-31',1,0,98600);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-12 18:05:22','2022-12-31',1,0,67300);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-15 18:05:22','2022-12-31',1,0,49000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-16 18:05:22','2022-12-31',1,0,22000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-18 18:05:22','2022-12-31',1,0,130000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-19 18:05:22','2022-12-31',1,0,32705);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-21 18:05:22','2022-12-31',1,0,543200);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-25 18:05:22','2022-12-31',1,0,441500);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-27 18:05:22','2022-12-31',1,0,330000);
insert into ticket_reservation values(null, 'ti410001','test1','[방콕] 씨 라이프 방콕 & 마담투소 콤보 #방콕아쿠아리움 #방콕씨라이프','2022-10-30 18:05:22','2022-12-31',1,0,170000);


insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-01 18:05:22','2022-12-31',3,0,46600);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-03 18:05:22','2022-12-31',1,0,90000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-05 18:05:22','2022-12-31',1,0,180000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-07 18:05:22','2022-12-31',1,0,324000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-09 18:05:22','2022-12-31',1,0,270000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-11 18:05:22','2022-12-31',1,0,980400);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-12 18:05:22','2022-12-31',1,0,642000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-15 18:05:22','2022-12-31',1,0,490000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-16 18:05:22','2022-12-31',1,0,220000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-18 18:05:22','2022-12-31',1,0,130000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-19 18:05:22','2022-12-31',1,0,327050);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-21 18:05:22','2022-12-31',1,0,543205);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-25 18:05:22','2022-12-31',1,0,441500);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-27 18:05:22','2022-12-31',1,0,330000);
insert into ticket_reservation values(null, 'ti120001','test1','[여수] 아르떼뮤지엄','2022-11-30 18:05:22','2022-12-31',1,0,170000);

insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-01 18:05:22','2022-12-31',3,0,170000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-03 18:05:22','2022-12-31',1,0,160000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-05 18:05:22','2022-12-31',1,0,210000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-07 18:05:22','2022-12-31',1,0,220000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-09 18:05:22','2022-12-31',1,0,290000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-11 18:05:22','2022-12-31',1,0,270000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-12 18:05:22','2022-12-31',1,0,350000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-15 18:05:22','2022-12-31',1,0,450000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-16 18:05:22','2022-12-31',1,0,270000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-18 18:05:22','2022-12-31',1,0,200000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-19 18:05:22','2022-12-31',1,0,130000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-21 18:05:22','2022-12-31',1,0,28000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-25 18:05:22','2022-12-31',1,0,140000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-27 18:05:22','2022-12-31',1,0,210000);
insert into ticket_reservation values(null, 'ti110001','test1','[인천] 송도 인더쥬 실내동물원','2022-12-30 18:05:22','2022-12-31',1,0,140000);

# 패키지 예약
insert into package_reservation 
values (null, 15, 'test1', 1, 0, 392000, '2022-12-13 18:02:11', 1);
insert into package_reservation 
values (null, 16, 'test1', 1, 0, 426000, '2022-12-13 18:32:33', 1);

# 패키지 예약 인원 정보 ( 각 1명 씩)
insert into package_reservation_pi values 
(null, 1, '김철수', '1998-01-02', 0, 'KIM', 'CHULSU', 1022222222, 'abc1234@naver.com');
insert into package_reservation_pi values 
(null, 2, '김철수', '1998-01-02', 0, 'KIM', 'CHULSU', 1022222222, 'abc1234@naver.com');

# 결제 
insert into payment 
values (null, 'test1', null, null, 1, null, null, 'card');
insert into payment 
values (null, 'test1', null, null, 2, null, null, 'card');


#항공 예약 데이터

insert into reservation(mem_id,seat_position,reservation_date,reservation_price) values('test1','C',now(),45000);
insert into air_reservation_pi(reservation_id,air_pi_name,air_pi_birth,air_pi_gen,air_pi_lname,air_pi_fname,air_pi_tel,air_pi_email,air_passport) values(1,'홍성대',now(),0,'HONG','SUNGDAE',01028787531,'asd23@naver.com','M12341234');
insert into air_flightsche values(214,1,0);
insert into payment(mem_id,reservation_id,payment_method) values('test1',1,'card');


## 호텔 예약 임시 데이터

INSERT INTO hotel_reservation (mem_id, rev_stat, rev_per, rev_date, rev_tot_price) VALUES ('test1', '결제완료', 2, '2022-12-15', 356120);
INSERT INTO hotel_reservation (mem_id, rev_stat, rev_per, rev_date, rev_tot_price) VALUES ('test1', '결제완료', 4, '2022-12-17', 623500);
INSERT INTO hotel_reservation (mem_id, rev_stat, rev_per, rev_date, rev_tot_price) VALUES ('test1', '결제완료', 2, '2022-12-19', 125800);
INSERT INTO hotel_reservation (mem_id, rev_stat, rev_per, rev_date, rev_tot_price) VALUES ('test2', '결제완료', 2, '2022-12-19', 542500);
INSERT INTO hotel_reservation (mem_id, rev_stat, rev_per, rev_date, rev_tot_price) VALUES ('test2', '결제완료', 3, '2022-12-16', 435000);
INSERT INTO hotel_reservation (mem_id, rev_stat, rev_per, rev_date, rev_tot_price) VALUES ('test2', '결제완료', 4, '2022-12-14', 356120);

INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(1, 146);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(1, 148);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(1, 150);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(2, 230);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(2, 232);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(2, 235);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(2, 240);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(3, 3);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(3, 6);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(4, 177);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(4, 183);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(4, 189);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(5, 274);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(5, 275);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(6, 195);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(6, 199);
INSERT INTO hotel_reservation_detail(h_rev_id, room_detail_id) VALUES(6, 204);

INSERT INTO payment(mem_id, h_rev_id, payment_method) VALUES('test1', 1, 'card');
INSERT INTO payment(mem_id, h_rev_id, payment_method) VALUES('test1', 2, 'card');
INSERT INTO payment(mem_id, h_rev_id, payment_method) VALUES('test1', 3, 'card');
INSERT INTO payment(mem_id, h_rev_id, payment_method) VALUES('test2', 4, 'card');
INSERT INTO payment(mem_id, h_rev_id, payment_method) VALUES('test2', 5, 'card');
INSERT INTO payment(mem_id, h_rev_id, payment_method) VALUES('test2', 6, 'card');


commit;