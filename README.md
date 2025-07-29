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
<br/>

### src/main/resources
| 폴더/파일                    | 설명                          |
| ------------------------ | --------------------------- |
| mappers/               | MyBatis XML Mapper 파일       |
| static/                | 정적 리소스 (JS, CSS 등)          |
| application.properties | 전체 애플리케이션 설정 (DB, 로깅, 보안 등) |
| index.html             | 정적 HTML 메인 페이지 (또는 리디렉션용)   |
<br/>
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

## API 명세
### USER_INFO (유저)
| 메서드 | 엔드포인트        | 설명           |
| ------ | ---------------- | -------------- |
| GET | loginForm.me | 로그인 폼 |
| GET | signUpEnrollForm.me | 회원가입 폼 |
| GET | /api/members/teacher | 교사 생성 |


### APIBoardController(댓글 / 게시판)
| 메서드  | 엔드포인트             | 설명                    |
| ---- | ----------------- | --------------------- |
| POST | /api/board/reply  | 댓글 등록                 |
| GET  | /api/board/reply  | 댓글 목록 조회 (postId)     |
| GET  | /api/board/delete | 삭제할 댓글 정보 조회 (postId) |
| POST | /api/board/delete | 댓글 삭제                 |

### APICompanyController (기업 승인 처리)
| 메서드  | 엔드포인트               | 설명              |
| ---- | ------------------- | --------------- |
| POST | /api/company/commit | 기업 사용자 상태 승인 처리 |
| POST | /api/company/return | 기업 사용자 상태 반려 처리 |

### APIConfigController (구글 로그인 설정)
| 메서드 | 엔드포인트                    | 설명                               |
| --- | ------------------------ | -------------------------------- |
| GET | /api/config/google/login | 구글 로그인 clientId 및 redirectUri 반환 |

### APIEmployeeController (직원 관리)
| 메서드  | 엔드포인트                       | 설명                           |
| ---- | --------------------------- | ---------------------------- |
| POST | /api/employee/empDelete.erp | 직원 상태 삭제/업데이트 처리 (userId 기반) |

### APIMemberController (아이디 중복 확인)
| 메서드 | 엔드포인트          | 설명                           |
| --- | -------------- | ---------------------------- |
| GET | /api/member/id | 회원 아이디 중복 확인 (checkId param) |


## 팀원 소개

| 이름 | 포지션 | Contact |
| --- | --- | --- |
| 황윤창 | 조장 | ayinyun@naver.com |
| 김진석 | DB 관리자 | wlstjr2015@gmail.com |
| 홍승민 | 이슈 관리자 | tmdals3603@naver.com |
| 이지묵 | 일정 관리자 | leezi0916@gmail.com |
| 양동민 | 형상 관리자 | didehdals321@naver.com |
