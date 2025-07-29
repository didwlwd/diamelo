# Diamelo
Spring Framework를 활용한 화장품 제품 개발부터 생산, 품질, 판매까지 전 과정을 통합 관리하는 ERP 시스템을 도입해 효율적인 운영 ERP 시스템 구축

## 프로젝트 개요
- 개발 기간: 2025-03-18 ~ 2025-04-14
- 참고 링크: [PDF 링크](https://github.com/user-attachments/files/21478985/diamelo.ppt.pdf)

## 기술 스택
`Front-End` 
<br/>
<br/>
<img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">
<img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
<img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
<img src="https://img.shields.io/badge/ajax-0054A6?style=for-the-badge&logo=ajax&logoColor=white">
<img src="https://img.shields.io/badge/jsp-007396?style=for-the-badge&logo=java&logoColor=white">

`Back-end`
<br/>
<br/>
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
<img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white">
<img src="https://img.shields.io/badge/mybatis-000000?style=for-the-badge&logo=mybatis&logoColor=white">
<img src="https://img.shields.io/badge/Spring%20Security-6DB33F?style=for-the-badge&logo=springsecurity&logoColor=white"/>

`Infra / DevOps`
<br/>
<br/>
<img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">
<img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">

`Communication / IDE`
<br/>
<br/>
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
<img src="https://img.shields.io/badge/trello-0052CC?style=for-the-badge&logo=trello&logoColor=white">
<img src="https://img.shields.io/badge/intellij idea-000000?style=for-the-badge&logo=intellijidea&logoColor=white">

## 사용 라이브러리 및 API
### 라이브러리
- Chart.js
- BootStrap 4
- JQuery
- JSTL
- Lombok
### API
- Google Oauth 1.0 API

## 설치 및 실행 방법
```bash
git clone https://github.com/didwlwd/diamelo

# 백엔드
./mvnw spring-boot:run
```

## 주요 기능
### 회원 및 인사 관리
- 회원가입, 로그인, 승인 처리
- 직무/부서 설정
- 거래처 구분 및 권한 관리

### 제품 및 재료 관리
- 제품/재료 등록 및 수정
- 제품 카테고리 및 상세 정보 관리

### 제품 생산
- 생산 요청 기능
- 레시피 기반 자동 재고 처리 (재료 차감, 제품 재고 증가)

### 입출고 관리
- 입/출고 요청 등록 (유형 구분 가능)
- 승인 처리 및 이력 조회

### 매출 및 지출 관리
- 판매 등록 및 금액 입력
- 입출고 유형에 따른 매출/지출 자동 분류
- 판매 내역 승인 처리

### 게시판 기능
- 게시글 등록/수정/삭제
- 댓글 기능 포함
- 게시글 타입 구분 가능

### 파일 업로드
- 제품 이미지 첨부 및 조회
- 원본/변경된 파일명 저장

### 장바구니 기능
- 장바구니 담기/수정/삭제
- 주문 기능 연동

### 재고 조회
- 제품별 재고 현황 확인
- 월간 매출 분석 차트

## 부가 기능
- 소셜 로그인 (Google)
<br/>

## 프로젝트 구조
### src/main/java/com.kh.diamelo
| 폴더/파일                     | 설명                                  |
| ------------------------- | ----------------------------------- |
| aspect                  | AOP 기능 구현 (예: 로깅, 트랜잭션 처리)          |
| config                  | 전역 설정 (보안, CORS, WebMvc, Bean 등록 등) |
| controller              | JSP 연동용 Spring MVC Controller       |
| RESTController          | REST API 담당 컨트롤러                    |
| domain.vo               | VO/DTO 등 데이터 전송용 객체                 |
| interceptor             | 요청 가로채기 및 인증 체크 등 인터셉터 처리           |
| mappers                 | MyBatis Mapper 인터페이스                |
| services                | 비즈니스 로직 처리 계층                       |
| utils                   | 공통 유틸리티 함수 및 클래스                    |
| DiameloApplication.java | 애플리케이션 진입점 (SpringBootApplication)  |
| ServletInitializer.java | WAR 배포용 서블릿 초기화 클래스                 |
<br/>

### src/main/resources
| 폴더/파일                    | 설명                          |
| ------------------------ | --------------------------- |
| mappers/               | MyBatis XML Mapper 파일       |
| static/                | 정적 리소스 (JS, CSS 등)          |
| application.properties | 전체 애플리케이션 설정 (DB, 로깅, 보안 등) |
| index.html             | 정적 HTML 메인 페이지 (또는 리디렉션용)   |
<br/>

### src/main/webapp
| 폴더/파일                   | 설명                    |
| ----------------------- | --------------------- |
| resources/uploadFile  | 업로드된 파일 저장 디렉토리       |
| WEB-INF/views/common  | 공통 JSP 템플릿 (헤더, 푸터 등) |
| WEB-INF/views/crmPage | CRM 기능 관련 JSP 뷰       |
| WEB-INF/views/erpPage | ERP 기능 관련 JSP 뷰       |
| WEB-INF/views/myPage  | 마이페이지 관련 JSP 뷰        |
| index.jsp             | 프로젝트 메인 JSP           |
<br/>

## 기능 명세
### BoardController
| 메서드  | 엔드포인트           | 설명                                 |
| ---- | --------------- | ---------------------------------- |
| GET  | /board.erp      | 게시판 관리 페이지 조회                      |
| GET  | /enrollForm.bo  | 게시판 작성 페이지 이동                      |
| POST | /insertBoard.bo | 게시글 등록 처리                          |
| GET  | /detail.bo      | 게시글 상세 조회                          |
| GET  | /updateForm.bo  | 게시글 수정 페이지 이동                      |
| GET  | /update.bo      | 게시글 수정 처리                          |
| GET  | /delete.bo      | 게시글 삭제 처리                          |
| GET  | /select.bo      | 게시글 조건 검색 (type, title, userId 기반) |
<br/>

### BuyController
| 메서드  | 엔드포인트          | 설명                         |
| ---- | -------------- | -------------------------- |
| GET  | /buyDetail.erp | 특정 그룹 번호(gNo)의 구매 상세 조회 화면 |
| POST | /mat.buy       | 재료 구매 신청 처리                |
| GET  | /buyList.erp   | 전체 구매 목록 페이지 진입            |
| GET  | /search.buy    | 검색 조건(날짜, 유저)으로 구매내역 조회    |
| GET  | /buyAdd.erp    | 구매서 등록 페이지 진입 (재료 목록 조회)   |
<br/>

### CompanyController
| 메서드 | 엔드포인트          | 설명                       |
| --- | -------------- | ------------------------ |
| GET | /company.erp   | 승인된 거래처 목록 페이지 진입        |
| GET | /compAdmin.erp | 거래처 관리자 승인 대기 목록 페이지 진입  |
| GET | /select.com    | 거래처 조건 검색 (회사명, 담당자명 기준) |
| GET | /select.ad     | 거래처 관리자 페이지 조건 검색        |
| GET | /delete.com    | 거래처 삭제 처리                |
<br/>

### EmployeeController
| 메서드  | 엔드포인트                | 설명                          |
| ---- | -------------------- | --------------------------- |
| GET  | /employee.erp        | 인사관리 메인 페이지 진입              |
| GET  | /empAdmin.erp        | 인사 관리자 메인 페이지 진입            |
| GET  | /empList.erp         | 전체 사원 목록 조회                 |
| GET  | /empAdminList.erp    | 관리자 페이지용 사원 목록 조회           |
| GET  | /empDetail.erp       | 특정 사원(userId)의 상세 정보 페이지 진입 |
| GET  | /empSearch.erp       | 사원 검색 (이름, 직무코드 기준)         |
| GET  | /empAdminSearch.erp  | 관리자 페이지에서 사원 검색 (ID, 이름 기준) |
| POST | /empDetailSearch.erp | 사원 정보 및 사진 수정 처리            |
<br/>

### ErpMainController
| 메서드 | 엔드포인트     | 설명                                          |
| --- | --------- | ------------------------------------------- |
| GET | /home.erp | ERP 메인 대시보드 페이지 진입. 매출, 재고, 공지사항 등 주요 정보 로딩 |
<br/>

### HomeController
| 메서드 | 엔드포인트 | 설명              |
| --- | ----- | --------------- |
| GET | /     | index 메인 페이지 진입 |
<br/>

### IncomeController
| 메서드 | 엔드포인트       | 설명                                        |
| --- | ----------- | ----------------------------------------- |
| GET | /income.erp | 전체 매출 목록 페이지 진입 (총 매출, 매출 리스트, 페이지네이션 포함) |
| GET | /search.in  | 검색 조건(타입, 기간, 거래처)으로 매출 리스트 및 총액 조회       |
| GET | /detail.in  | 특정 그룹 번호(gno)의 매출 상세 내역 조회 화면             |
<br/>

### InventoryController
| 메서드  | 엔드포인트                 | 설명                                   |
| ---- | --------------------- | ------------------------------------ |
| GET  | /inv.erp              | 재고관리 메인 페이지 진입 (제품/재료 수량, 탭별 리스트 포함) |
| GET  | /materialList         | 전체 재료 목록 조회 (AJAX용)                  |
| GET  | /productSearch.pro    | 제품 조건 검색 (카테고리, 제품번호, 제품명 등)         |
| GET  | /insertProduct.pro    | 제품 등록 페이지 진입                         |
| GET  | /updateView.pro      | 제품 수정 페이지 진입                         |
| POST | /update.pro           | 제품 정보 수정 및 이미지, 레시피 정보 갱신            |
| POST | /delete.pro           | 제품 삭제 처리                             |
| POST | /insert.pro           | 제품 등록 처리 (파일 업로드 및 레시피 포함)           |
| GET  | /getProductInfo       | 제품 번호(proNo) 기반 단일 제품 상세 정보 조회       |
| GET  | /ingredientSearch.ing | 재료 조건 검색 (제품번호, 제품명 등)               |
| GET  | /insert.ing           | 재료 등록 페이지 진입                         |
| GET  | /updateView.ing      | 재료 수정 페이지 진입                         |
| POST | /update.ing           | 재료 정보 수정 및 이미지 갱신                    |
| POST | /delete.ing           | 재료 삭제 처리                             |
| POST | /insert.ing           | 재료 등록 처리 (파일 업로드 포함)                 |
<br/>

### MemberController
| 메서드  | 엔드포인트                   | 설명                              |
| ---- | ----------------------- | ------------------------------- |
| GET  | /loginForm.me           | 로그인 페이지 진입                      |
| GET  | /signUpEnrollForm.me    | 회원가입 페이지 진입                     |
| GET  | /logout.me              | 로그아웃 처리 (세션 종료 후 redirect)      |
| GET  | /logoutSuccess.me       | 로그아웃 후 캐시 제거 및 로그인 페이지로 리다이렉트   |
| POST | /signUp.me              | 회원가입 요청 처리                      |
| POST | /login.me               | 로그인 처리 (비밀번호 일치 여부 확인)          |
| GET  | /myPageDetail.me        | 마이페이지 진입 (개인정보 수정/탈퇴 선택 페이지)    |
| GET  | /updateEnrollForm.me    | 개인정보 수정 페이지 진입                  |
| POST | /upDate.me              | 개인정보 수정 처리 후 재로그인 요청            |
| GET  | /updateDeleteSuccess.me | 개인정보 수정/탈퇴 후 알림 띄우고 로그인 페이지로 이동 |
| GET  | /updatePwEnrollForm.me  | 비밀번호 변경 폼 진입                    |
| POST | /updatePwd.me           | 비밀번호 변경 처리                      |
| POST | /delete.me              | 회원 탈퇴 처리 (비밀번호 검증 후 탈퇴 처리)      |
| GET  | /login.go               | 구글 로그인 처리 후 회원 존재 여부에 따라 분기 처리  |
<br/>

### ProductController
| 메서드  | 엔드포인트       | 설명                                  |
| ---- | ----------- | ----------------------------------- |
| GET  | /prdc.erp   | 제작 페이지 진입 (제품 목록 조회 및 select 박스 출력) |
| POST | /create.pro | 제품 제작 요청 처리 (재고 확인 및 생산 처리)         |
<br/>

### ProductListController
| 메서드 | 엔드포인트            | 설명                                      |
| --- | ---------------- | --------------------------------------- |
| GET | /productList.crm | CRM 전체 상품 리스트 조회 (로그인 사용자 기준 장바구니 포함)   |
| GET | /searchList.pro  | 키워드 기반 제품 검색 리스트 조회 (페이징 및 검색 로그 전달 포함) |
<br/>

### SaleController
| 메서드 | 엔드포인트            | 설명                                        |
| --- | ---------------- | ----------------------------------------- |
| GET | /saleList.erp    | 전체 판매 목록 페이지 진입 (페이지네이션 포함)               |
| GET | /saleDList.erp   | 특정 판매 그룹 번호(sNo)의 판매 상세 내역 조회 페이지 진입      |
| GET | /buyAcc.erp      | 특정 판매 요청 승인 처리 (sNo 기준)                   |
| GET | /buyRef.erp      | 특정 판매 요청 반려 처리 (sNo 기준)                   |
| GET | /salSearList.erp | 검색 조건(시작일, 종료일, 거래처)으로 판매 리스트 조회 및 페이징 처리 |
<br/>

### ShoppingListController
| 메서드  | 엔드포인트             | 설명                                                     |
| ---- | ----------------- | ------------------------------------------------------ |
| GET  | /shoppingList.crm | CRM 장바구니 페이지 진입 (상품 목록 + 유저 장바구니 조회)                   |
| POST | /insert.io        | 장바구니에 담긴 상품 구매 처리 (재고 체크 → 그룹 생성 → 구매 내역 저장 → 장바구니 제거) |
<br/>

## API 명세
### APIBoardController(댓글 / 게시판)
| 메서드  | 엔드포인트             | 설명                    |
| ---- | ----------------- | --------------------- |
| POST | /api/board/reply  | 댓글 등록                 |
| GET  | /api/board/reply  | 댓글 목록 조회 (postId)     |
| GET  | /api/board/delete | 삭제할 댓글 정보 조회 (postId) |
| POST | /api/board/delete | 댓글 삭제                 |
<br/>

### APICompanyController (기업 승인 처리)
| 메서드  | 엔드포인트               | 설명              |
| ---- | ------------------- | --------------- |
| POST | /api/company/commit | 기업 사용자 상태 승인 처리 |
| POST | /api/company/return | 기업 사용자 상태 반려 처리 |
<br/>

### APIConfigController (구글 로그인 설정)
| 메서드 | 엔드포인트                    | 설명                               |
| --- | ------------------------ | -------------------------------- |
| GET | /api/config/google/login | 구글 로그인 clientId 및 redirectUri 반환 |
<br/>

### APIEmployeeController (직원 관리)
| 메서드  | 엔드포인트                       | 설명                           |
| ---- | --------------------------- | ---------------------------- |
| POST | /api/employee/empDelete.erp | 직원 상태 삭제/업데이트 처리 (userId 기반) |
<br/>

### APIMemberController (아이디 중복 확인)
| 메서드 | 엔드포인트          | 설명                           |
| --- | -------------- | ---------------------------- |
| GET | /api/member/id | 회원 아이디 중복 확인 (checkId param) |
<br/>

### APIProductionController (제품 상세 / 장바구니)
| 메서드 | 엔드포인트                   | 설명                                |
| --- | ----------------------- | --------------------------------- |
| GET | /api/production/details | 제품 이미지, 재료, 최대 생산량 조회 (productNo) |
| GET | /api/production/cart    | 장바구니 추가 / 삭제 (inCart, proNo)      |
<br/>

## 팀원 소개

| 이름 | 포지션 | Contact |
| --- | --- | --- |
| 황윤창 | 조장 | ayinyun@naver.com |
| 김진석 | DB 관리자 | wlstjr2015@gmail.com |
| 홍승민 | 이슈 관리자 | tmdals3603@naver.com |
| 이지묵 | 일정 관리자 | leezi0916@gmail.com |
| 양동민 | 형상 관리자 | didehdals321@naver.com |
