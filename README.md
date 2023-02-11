# 여행 상품 통합몰 프로젝트

흩어져 있는 여행 관련 상품들(숙박, 항공, 패키지, 입장권)을 한데 모아 사용자로 하여금<br> 
**한 사이트에서 상품들을 찾고 예약할 수 있도록 편리함을 제공**하는 프로젝트
<br>

# 목차
* [프로젝트 개요](#프로젝트-개요)
    * [프로젝트 소개](#프로젝트-소개)
    * [팀원소개 및 역할](#팀원소개-및-역할)
    * [개발환경](#개발환경)
        * [FrontEnd](#frontend)
        * [BackEnd](#backend)
    * [프로젝트 분석](#프로젝트-분석)
* [프로세스 및 ERD 설계](#프로세스-및-erd-설계)
    * [시스템 프로세스](#시스템-프로세스)
    * [프로젝트 제공기능](#프로젝트-제공기능)
    * [ERD](#erd)
* [API 명세서](#api-명세서)
* [구현 기능](#구현-기능)
* [프로젝트 후기](#프로젝트-후기)

# 프로젝트 개요
### 프로젝트 소개
---
#### 개요
* 흩어져 있는 여행 관련 상품들(숙박, 항공, 패키지, 입장권)을 한데 모아 사용자로 하여금 `한 사이트에서 상품들을 찾고 예약할 수 있도록 편리함을 제공`하는 프로젝트
#### 개발 인원 및 기간
* 개발인원 : 7명
* 개발기간 : 2022. 11. 17 ~ 2022. 12. 19(약 5주)

<br>

### 팀원소개 및 역할
---
![스프링 프로젝트 - 팀원소개](https://user-images.githubusercontent.com/82436530/218076418-6920b406-1bc7-44d8-b18b-b57c8367ecd0.png)

### 개발환경
---

<details>
<summary>개발환경 이미지</summary>
<div markdown="1">

<img src="https://user-images.githubusercontent.com/82436530/218085060-e45449bb-8fb2-4f6e-8af4-7bd38f25464a.png">

</div>
</details>

#### FrontEnd
* HTML5 / CSS
* Javascript
* jQuery
* Bootstrap5
#### BackEnd
* 주요 프레임워크, 라이브러리
    * Java 11
    * SpringBoot 2.5.7
    * MyBatis
    * JSP
    * Lombok
* DB
    * MySQL
* Build Tool
    * Gradle
* WAS
    * Tomcat 9.0
* Tool
    * STS
    * WorkBench
* 기타
    * Git
    * GitHub

### 프로젝트 분석
---
<details>
<summary>CLOC 분석</summary>
<div markdown="1">

![스프링 프로젝트 - 프로젝트 분석(cloc)](https://user-images.githubusercontent.com/82436530/218087608-9089f81f-1b3f-47fa-bc81-cb6630b3e3e3.png)

</div>
</details>
<br>

# 프로세스 및 ERD 설계
### 시스템 프로세스
---
![스프링 프로젝트 - 시스템 프로세스](https://user-images.githubusercontent.com/82436530/218088184-9ff7c1ff-bcff-4447-b809-406d7b638016.png)

### 프로젝트 제공기능
---
<details>
<summary>프로젝트 제공기능</summary>
<div markdown="1">

![스프링 프로젝트 - 제공 기능1](https://user-images.githubusercontent.com/82436530/218124731-560028a5-d938-4238-949e-8c99d966ffdd.png)

![스프링 프로젝트 - 제공 기능3](https://user-images.githubusercontent.com/82436530/218124883-c10f5215-b9ed-41b1-83f7-e6a77546f3ff.png)

</div>
</details>

* 패키지 예약 부분을 담당하였음
![스프링 프로젝트 - 제공 기능2](https://user-images.githubusercontent.com/82436530/218124829-549d1914-0cb8-4cca-bdba-691e1f666992.png)

## ERD
---
![스프링 프로젝트 - ERD(전체)](https://user-images.githubusercontent.com/82436530/218125711-5ccc0a3c-4e28-498b-b25e-0378ec7e4f24.png)

<details>
<summary>패키지(담당한 ERD 영역)</summary>
<div markdown="1">

![스프링 프로젝트 - ERD(패키지)](https://user-images.githubusercontent.com/82436530/218126925-ff932adf-85bd-40d5-a9d0-08bd96e22f4d.png)
![스프링 프로젝트 - ERD(패키지-개요1)](https://user-images.githubusercontent.com/82436530/218126943-c659c560-39ea-4cbf-be44-5553153c1fcf.png)
![스프링 프로젝트 - ERD(패키지-개요2)](https://user-images.githubusercontent.com/82436530/218126959-fb9ffb74-4517-42b6-a8e9-9f76aab5967c.png)
![스프링 프로젝트 - ERD(패키지-개요3)](https://user-images.githubusercontent.com/82436530/218126968-a97e84ef-4640-4bcd-aeae-bf0d4ae68052.png)
![스프링 프로젝트 - ERD(패키지-개요4)](https://user-images.githubusercontent.com/82436530/218126988-d720668b-827d-4d22-9afb-c5022f8cc0e1.png)

</div>
</details>

<details>
<summary>패키지 이외의 Entity</summary>
<div markdown="1">

![스프링 프로젝트 - ERD(항공)](https://user-images.githubusercontent.com/82436530/218127769-264dd379-d9c5-4a01-8623-c4597ca29a1d.png)
![스프링 프로젝트 - ERD(회원-국가)](https://user-images.githubusercontent.com/82436530/218127777-48a326e9-709d-4c5f-88f0-137655492c42.png)
![스프링 프로젝트 - ERD(검색-찜-리뷰)](https://user-images.githubusercontent.com/82436530/218127783-f369ee0b-2dd0-4224-8804-ce3582c08606.png)
![스프링 프로젝트 - ERD(숙박)](https://user-images.githubusercontent.com/82436530/218127785-f9574ad3-214e-4e6d-bcb2-da2841dea7c6.png)
![스프링 프로젝트 - ERD(입장권)](https://user-images.githubusercontent.com/82436530/218127789-2273ca03-0b69-43b2-a6eb-d69bb4ff6fc7.png)

</div>
</details>
<br>

# API 명세서

![스프링 프로젝트 - API 명세서](https://user-images.githubusercontent.com/82436530/218128619-859b6e1e-0570-42ea-9711-4ee96d212965.png)

<br>

# 구현 기능
### 패키지 검색
<details>
<summary>여행 장소 / 날짜 요소를 이용한 패키지 검색 페이지
</summary>
<div markdown="1">

![스프링프로젝트 -패키지 검색](https://user-images.githubusercontent.com/82436530/218243325-f2841e53-9e00-43a8-8030-3097ae57979e.gif)

1. 여행 장소 / 날짜 요소를 통한 패키지 검색 

2. 여행 장소의 경우 여행 장소 탭을 포커스 하면 현재 상품을 제공할 수 있는 나라와 도시에 대해 선택할 수 있는 별도의 모달창 제공
  (해외 / 국내 모두 똑같이 적용)

3. 만약 여행지를 선택하지 않고 검색 버튼을 누를 시 경고 표시

4. 날짜의 경우 정해진 날짜만 표시하고 있음(보완점 – 존재하는 상품의 날짜 기간만 표시되도록 구현하진 못함)

코드링크 
<https://github.com/startfrombt/ohTravel/blob/ada8a6a53c32749f616d6cb7d3c621400ef6740c/ohTravel/src/main/java/com/oracle/ohTravel/pkage/controller/PkageController.java#L108>

</div>
</details>

<details>
<summary>판매 순, 테마별 패키지 조회
</summary>
<div markdown="1">

![스프링 프로젝트 - 검색 하단부분(10MB이하)](https://user-images.githubusercontent.com/82436530/218244585-35afca56-3491-4193-bb8b-b0bbfbdda932.gif)

1. 제공 상품 중 판매 베스트 상품을 상단에 노출시킴으로써 구매 유도

2. 테마에 맞는 상품을 노출시켜 사용자로 하여금 특정 테마 패키지를 구매하도록 유도 

코드링크
<https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/main/resources/mappers/PkageMapper.xml#L388>

* 문제
    * 특정 조건(판매순, 테마별)에 만족하는 데이터를 적합한 개수만 가져올 수 있도록 하는 문제
* 해결과정
    * 상품 조회 시 limt 구문을 사용하여 원하는 개수만큼만 가져올 수 있도록 구현
    * 컬럼의 경우 ＜sql＞태그를 통해 재사용가능하도록 구현
* 아쉬운점
    * where 절을 동적 쿼리를 통해 구현함으로써 １개의 select 문으로 재사용가능하도록 구현을 하는 것을 생각하지 못함


</div>
</details>

<details>
<summary>패키지 검색 결과 페이지</summary>
<div markdown="1">

![스프링프로젝트 검색결과페이지](https://user-images.githubusercontent.com/82436530/218244884-3c4f0693-e6e7-4973-b886-b5c88aa90913.gif)

1. 검색 요소들에 맞는 패키지 상품을 모두 불러옴

2. 판매상품보기 버튼 클릭 시 현재 제공 가능한 상세 상품들 표시

3. 찜 기능 제공 (로그인 한 경우에만)

4. 검색 날짜 기간 내에 존재하는 패키지의 상세 상품에 대한 간략한 정보 제공(예약한 상품 표시,  잔여석 존재 여부, 일자)

5. ‘상세 일정 보기’ 버튼을 클릭 시 해당 상세 상품으로 이동

코드링크
<https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/main/resources/mappers/PkageMapper.xml#L332>

* 문제
    1. 정규화된 데이터를 가져올 때 select 문을 최대한 줄이는 문제

* 해결과정
    1. ResultMap 맵을 이용한 조회 결과 이미지 데이터의 경우엔 nested Select 방식을 사용했기 때문에 그 만큼 select 하지만, 나머지 데이터의 경우 nested Result 방식을 사용함으로써 한번만 조회한 후 결과맵핑됨을 알 수 있음.

    2. 코드링크
        * <https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/main/resources/mappers/PkageMapper.xml#L35>

* 결과
    * ![Nested Result](https://user-images.githubusercontent.com/82436530/218245815-8fbe5ac0-4040-46d7-8026-d53fcf2c50c6.png)
    * ![Nested Select](https://user-images.githubusercontent.com/82436530/218245841-79d211dc-0c11-4902-be16-d14af9b8ca04.png)

* 아쉬운점
    * 이미지 또한 nested Result 방식을 통해 구현하려 노력하였지만, 해결방법을 찾지 못함.. 현재에선 이미지를 1개씩만 가져오기 때문에 그나마 괜찮지만, select 문 자체가 n+1 번 실행된다는 문제는 여전히 존재.

</div>
</details>

<details>
<summary>검색 결과 페이지(정렬 및 필터, 고민을 많이 했던 부분)</summary>
<div markdown="1">

![스프링 프로젝트 - 검색결과페이지(정렬 필터-10MB이하)](https://user-images.githubusercontent.com/82436530/218246078-2765086f-c339-4b5d-a4fd-685db9affb56.gif)

1. 필터와 정렬을 함께 적용한 결과를 조회

2. 정렬은 정렬 종류 중 1가지만 선택 가능

3. 필터는 각 필터 종류별 1가지 씩 선택가능 하고, 적용된 필터에 적합한 패키지 결과를 조회

4. 적용한 필터에 적합한 상품이 없을 경우 검색결과 없음 표시

<br>

* 문제1
    * 가격, 여행 기간, 출발 시간 데이터를 받아 해당 데이터에 속하는 상품들만 필터링 해주는 기능을 구현해야함
* 해결과정
    * 동적쿼리를 통해 필터에 관한 데이터가 없을 경우엔 필터에 대한 조건이 붙지않음.
    * 필터의 종류는 서로 겹쳐서 검색가능 하도록 \<if\> 태그를 사용했지만, 종류별 값의 범위는 \<when\> 태그를 통해 범위 중 1개의 범위에만 필터가 적용되도록 구현
* 코드링크
    * 필터
        * <https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/main/resources/mappers/PkageMapper.xml#L551>
    * 정렬
        * <https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/main/resources/mappers/PkageMapper.xml#L355>
* 아쉬운점
    * 출발 시간의 경우 비교하는 시간을 하드코딩을 통해 구현한 부분을 리팩토링하지 못함..
    * 가격의 경우에도 현재 존재하는 상품의 가격의 범위가 아닌 프론트 단에서 하드코딩된 데이터를 받아와서 범위를 설정하고 있음..

<br>

* 문제2
    * 정렬 기준에 따른 패키지 상품 정렬과 패키지 상품 뿐만 아니라 패키지 상품을 포함하고 있는 패키지 또한 정렬을 해줘야 함
* 해결과정
    * 패키지 상품의 경우 가격에 대한 칼럼이 존재하기 때문에 DB 영역에서 바로 정렬을 해서 가져오지만, 패키지 자체의 경우엔 따로 가격에 대한 컬럼이 존재하지 않아 java 단에서 max 가격을 가지고 Comparator 인터페이스를 통해 정렬되도록 구현
* 코드링크
    * <https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/main/java/com/oracle/ohTravel/pkage/controller/PkageController.java#L167>
    * ![image](https://user-images.githubusercontent.com/82436530/218246454-efb08e09-9bc2-429b-912c-1b75f1e192b8.png)
    * ![image](https://user-images.githubusercontent.com/82436530/218246463-06460295-b0a8-4dfa-95d2-5944eb0b792a.png)
* 아쉬운점
    * 패키지 자체의 정렬 또한 DB 측에서 정렬되도록 구현가능한지 가능하다면 어떻게 해야하는지에 대한 해결책을 떠올릴 수 없었음. 그래서 그 대안으로 java 단에서 정렬을 해준 것이지만, DB 단에서 정렬이 되어서 올 수 있도록 하지 못한 것이 아쉬움
    * 하드코딩이 존재하여 해당 값에 대한 정보를 enum 클래스를 통해 어느정도 하드코딩의 단점을 해결할 수 있었던 것을 생각해내지 못함.

</div>
</details>

<details>
<summary>상세 상품 페이지</summary>
<div markdown="1">

![스프링프로젝트 - 상세 상품 페이지](https://user-images.githubusercontent.com/82436530/218246533-375ca2d1-2b21-4318-af29-b6e65d657a1c.gif)

1. 해당 패키지 상품에 관한 정보 제공(가격, 상품명, 테마)

2. 여행의 주요 일정, 가격 제공(일정, 여행도시, 예약현황, 성인/아동 별 가격)

3. 인원 선택의 경우 잔여 좌석보다 높은 인원을 선택할 수 없음

<br>

![스프링 프로젝트 - 상세 상품 페이지(여행일차, 호텔, 10MB이하)](https://user-images.githubusercontent.com/82436530/218248216-c54902c1-1f07-491e-9645-d0535e6d8cc2.gif)

1. 해당 패키지의 여행일정 정보 제공(일차별 여행 관광지 정보)

2. 해당 패키지 상품의 숙소 정보 제공

<br>

![스프링프로젝트 － 상세 상품 페이지（리뷰）](https://user-images.githubusercontent.com/82436530/218248253-993a44c5-ef79-4dc9-afaf-bbc0d2b69440.gif)

1. 해당 패키지 상품의 상품평(리뷰) 조회
    1. 리뷰 작성의 경우 로그인을 한 경우에만 등록 버튼 표시

2. 리뷰 작성 – 별점은 드래그 혹은 클릭하여 점수를 매길 수 있음(모달창)

3. 리뷰 수정 – 이미 작성된 내용과 평점을 가져와 수정 가능(모달창)

4. 리뷰 삭제 – 경고창을 띄워 삭제동의 확인
    1. 리뷰 수정, 및 삭제의 경우 작성한 회원의 경우만 활성화 

5. 보완점 ： 상품을 구매한 회원만이 리뷰를 작성할 수 있게 해야함

</div>
</details>

<details>
<summary>상품 예약 관련 검사(가장 어려웠던 부분)</summary>
<div markdown="1">

1. 인원 선택의 총 명수가 잔여 석을 넘기지 못하도록 처리
    ![스프링 프로젝트 - 상세 상품 페이지(검사-잔여좌석 초과)](https://user-images.githubusercontent.com/82436530/218248465-dc6e7d59-3bc1-4c72-a561-94f48812e260.gif)


2. 내가 예약한 상품이라면 예약 한 상품임을 표시하여 예약 불가하도록 처리
    ![스프링 프로젝트 - 상세 상품 페이지(검사-예약한 상품여부)](https://user-images.githubusercontent.com/82436530/218248546-4d495052-313f-46cb-ac92-4f520f0793bd.gif)

3. 잔여좌석이 존재하지 않은 경우 예약 불가
    ![스프링 프로젝트 - 상세 상품 페이지(검사-잔여좌석0개)](https://user-images.githubusercontent.com/82436530/218248651-90e78598-040a-426a-8791-457b6afc6f02.gif)

4. 현재 예약할 상품이 이미 예약한 상품들의 날짜와 겹친다면 예약여부를 체크
    ![스프링 프로젝트 - 상세 상품 페이지(검사-예약날짜겹침)](https://user-images.githubusercontent.com/82436530/218248783-a6c959ec-4ebc-42ae-ba9b-8826a5ab3c6e.gif)
    * 이 문제가 가장 많이 고민을 했던 문제였습니다. 예약하려는 상품의 기간이 이미 예약한 상품들의 날짜 중 겹치는 날짜가 1일이라도 있다면 알림을 보내주어야 로직이 고민을 많이 하게 했던 것 같습니다.
    * 해결과정
        1. 예약하려는 상품과 회원이 예약한 상품들의 기간을 조회하여 비교
        2. 예약하려는 상품의 기간과 예약 중인 상품들의 기간을 비교
            * 예약하려는 상품의 날짜들을 반복하면서 해당 날짜가 이미 예약 중인 상품의 기간에 속한다면 중복이기 때문에 1을 return;
            * (예약중인 상품의 시작날짜 <= 예약하려는 상품의 날짜 <= 예약중인 상품의 종료날짜)
    * 코드링크
        * <https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/main/java/com/oracle/ohTravel/pkage/controller/PkageRestController.java#L240>

</div>
</details>

<details>
<summary>예약 페이지(유효성 검사)</summary>
<div markdown="1">

![스프링프로젝트 - 예약 페이지(정보제공 및 유효성 검사)](https://user-images.githubusercontent.com/82436530/218249207-4feb5e32-c315-47ee-bee3-6e824e957c29.gif)

1. 예약할 상품 정보, 예약자 정보, 인원 및 가격 정보 제공  (예약자 정보는 바꿀 수 없음, 현재 로그인 한 고객의 정보 자동 기재)

2. 예약 시 선택한 인원 수에 맞는 여행자 정보 작성테이블 제공
    1. 각 사항마다 유효성 검사 실시
    2. 유효성 검사가 통과될 경우에만 경고 메시지가 삭제됨

3. 보완점
프론트 단 유효성 외에 서버단에서의유효성 검사를 했어야함

</div>
</details>

<details>
<summary>예약 페이지(결제)</summary>
<div markdown="1">

![스프링 프로젝트 - 예약 페이지(결제, 쿠폰)](https://user-images.githubusercontent.com/82436530/218249334-3450f4e3-cab5-48ba-b8d7-2ccd6ddf1343.gif)

1. 쿠폰 적용 전 결제 정보 제공
    1. 회원등급에 따른 할인율을  적용한 가격
    2. 회원등급에 따른 적립 마일리지 표시

2. 회원이 보유한 쿠폰 선택박스

3. 쿠폰 적용 후 결제 정보 
    1. 쿠폰 적용 시 쿠폰의 할인 가격을 적용한 최종 결제금액으로 변경 

<br>

![스프링 프로젝트 － 결제완료](https://user-images.githubusercontent.com/82436530/218249403-ec5c5c8b-aff6-4b78-9cf1-dc1a0449ccf9.gif)

1. 결제 완료 후 예약 상품에 대한 간략한 정보 제공

2. 구매내역 확인 버튼 클릭 시 마이페이지 예약 내역으로 이동

3. 결제 완료 후에는 마일리지 적립과 동시에 일정 마일리지 수준을 넘을 경우 회원 등급을 변경하도록 구현

* 비고
    * 결제 시 상품의 가격은 100원으로 고정시켜놓음

</div>
</details>

<details>
<summary>결제 Transaction 처리</summary>
<div markdown="1">

* 문제
‘상품 예약’ 이라는 하나의 작업이 성공적으로 처리되어야만 실제 DB 데이터에 Commit 이 되도록 구현해야함

* 해결과정
    1. Service 단에서 @Transaction 을 통해 여러 작업을 하나의 트랜잭션으로 묶이도록 구현.

* ‘상품 예약‘ 작업  
\-----------------------------  
패키지 예약 등록  
예약 인원정보 등록  
상품 예약 인원 변경  
패키지 판매 수 변경  
회원 마일리지 변경  
회원 마일리지 등급 변경  
회원 쿠폰 사용여부 변경  
결제정보 등록  
\------------------------------

* 비고
회원의 마일리지 등급 update 시 회원이 가지고 있는 마일리지와 마일리지 등급의 수준과 비교하여 변경이 이루어져야 하는 문제가 발생
(프로시저를 통해 해결)

</div>
</details>

<details>
<summary>프로시저를 통한 마일리지 등급 변경 처리(고민을 많이 했던 부분)</summary>
<div markdown="1">

* 문제
상품 예약으로 회원의 마일리지가 적립되고 난 후 회원이 가지고 있는 마일리지와 마일리지 등급의 수준과 비교하여 등급의 변화가 일어나야 할 경우 변경이 이루어져야 함.
그러나 단순히 Service 단에서 처리하게 되면 DB에 여러 번 접근하게 되고 불필요한 자원 사용이 커짐.

* 해결과정
    1. DB의 프로시저를 통하여 마일리지 정보를 조회 , 비교, 변경을 한번에 처리할 수 있도록 구현함.
    * ![프로시저](https://user-images.githubusercontent.com/82436530/218249569-c2e0d7f7-7702-4195-a462-2214f91fa6a4.png)
    * ![image](https://user-images.githubusercontent.com/82436530/218249686-7c57f02c-aa69-44a7-99d7-ac7b9cb8faa5.png)

</div>
</details>

<details>
<summary>패키지 등록 시 interceptor 를 통한 admin 검사</summary>
<div markdown="1">

* 코드 링크
    * <https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/main/java/com/oracle/ohTravel/interceptor/ManagerLoginInterCeptor.java#L14>

* 문제
Admin 로그인 확인을 하는 코드가 중복되는 것의 문제

* 해결과정
    1. 관리자가 아닐 경우 혹은 로그인이 되어있지 않을 경우 Controller를 타지 못하도록 interceptor 를 등록하여 처리
    (물론 admin 만 볼 수 있도록 구현되어있지만, url 을 통해 들어오는 것을 방지하고자 함.)

* 아쉬운점
    * Security 를 사용하지 않았기 때문에 직접 interceptor를 구현하였지만, 사실 Security를 통해 구현되었어야할 부분이었습니다.

</div>
</details>

<details>
<summary>JUnit4 를 이용한 기초적인 TDD (DAO 테스트)</summary>
<div markdown="1">

* 코드 링크
    * <https://github.com/startfrombt/ohTravel/blob/e3dbb5930654d753e79c207994e48060f99d26e7/ohTravel/src/test/java/com/oracle/ohTravel/pkage/PkageDaoTest.java#L31>

1. 작성한 쿼리의 단위마다 예상한 결과가 맞는지 테스트하기 위해 Test 코드를 작성하여 확인하는 작업을 수행함.

2. 실제 비즈니스 로직이 구현되기 전에 로직의 적합성 여부를 확인한 뒤 실제 통과된 로직만 비즈니스 로직에 적용하도록 함.

* 느낀점
    * 단위 테스트를 통해 비즈니스 로직에 추가하기 전에 작성한 코드가 잘 동작하는지 판단할 수 있는 점이 개발에 있어서 매우 효율적이였다. 그러나, 작성법 이나 작성한 것이 맞는지에 대한 판단이 잘 서지 않았습니다.


</div>
</details>

<br>

# 프로젝트 후기
* 프로젝트 규모가 생각보다 커져서 프로젝트 기능을 구현하는 데에 집중했던 프로젝트였습니다. 여러 검증이나 테스트를 충분히 하지 못한 것에 있어서 아쉬움이 있습니다.

* 정렬 \& 필터 로직을 구현하는 데에 많이 어려움이 있었던 프로젝트였습니다. 

* 많은 테이블을 처리하는 경험을 어느정도 느낄 수 있었습니다. 복잡해진 Join 문이나 데이터를 가져오기 위한 처리들과 가져온 데이터를 전달하는 처리들을 많이 해볼 수 있었던 프로젝트였습니다. 

* 프로젝트 규모가 컸던 만큼 팀원들과의 소통이 중요했던 프로젝트 였습니다. 서로 연관되어 있던 데이터들을 처리해주기 위해 많은 대화와 처리과정이 있었던 프로젝트였습니다.
