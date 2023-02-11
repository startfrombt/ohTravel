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

# API 명세서

![스프링 프로젝트 - API 명세서](https://user-images.githubusercontent.com/82436530/218128619-859b6e1e-0570-42ea-9711-4ee96d212965.png)


# 구현 기능
### 패키지 검색
<details>
<summary>여행 장소 / 날짜 요소를 통한 패키지 검색
</summary>
<div markdown="1">

![스프링프로젝트 -패키지 검색](https://user-images.githubusercontent.com/82436530/218243325-f2841e53-9e00-43a8-8030-3097ae57979e.gif)

코드링크 
<https://github.com/startfrombt/ohTravel/blob/ada8a6a53c32749f616d6cb7d3c621400ef6740c/ohTravel/src/main/java/com/oracle/ohTravel/pkage/controller/PkageController.java#L108>

</div>
</details>

# 프로젝트 후기
* 프로젝트 규모가 생각보다 커져서 프로젝트 기능을 구현하는 데에 집중했던 프로젝트였습니다. 여러 검증이나 테스트를 충분히 하지 못한 것에 있어서 아쉬움이 있습니다.

* 정렬 \& 필터 로직을 구현하는 데에 많이 어려움이 있었던 프로젝트였습니다. 

* 많은 테이블을 처리하는 경험을 어느정도 느낄 수 있었습니다. 복잡해진 Join 문이나 데이터를 가져오기 위한 처리들과 가져온 데이터를 전달하는 처리들을 많이 해볼 수 있었던 프로젝트였습니다. 

* 프로젝트 규모가 컸던 만큼 팀원들과의 소통이 중요했던 프로젝트 였습니다. 서로 연관되어 있던 데이터들을 처리해주기 위해 많은 대화와 처리과정이 있었던 프로젝트였습니다.
