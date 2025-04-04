<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Diamelo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/erp/erpLayout.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/erp/companyAdminPageStyle.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/default.css"/>
</head>
<body>
<div class="layout-wrapper">
    <!-- 왼쪽 고정 사이드바 -->
    <jsp:include page="../common/erp/sidebar.jsp"/>

    <!-- 오른쪽 상단바 + 콘텐츠 -->
    <div class="main-area">
        <jsp:include page="../common/erp/header.jsp"/>

        <!-- 페이지 본문 -->
        <div class="page-body">
            <div class="page-body-header">
                <div class="page-body-header-text">
                    <p>
                        거래처 관리자 페이지
                    </p>
                </div>

            </div>

            <div id="page-body-content">
                <form method="POST" action="">
                    <div id="search-company">

                        <input type="text" placeholder="기업명" id="search-companyName">
                        <input type="text" placeholder="대표자명" id="search-ceoName">
                        <button id="searchBtn">
                            <svg width="20" height="20" viewBox="0 0 25 25" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M4.14111 11.0614C4.14111 7.18044 7.29911 4.02344 11.1801 4.02344C15.0601 4.02344 18.2181 7.18044 18.2181 11.0614C18.2181 14.9424 15.0601 18.1004 11.1801 18.1004C7.29911 18.1004 4.14111 14.9424 4.14111 11.0614ZM22.6361 21.5204L18.0371 16.9334C19.3931 15.3524 20.2181 13.3034 20.2181 11.0614C20.2181 6.07844 16.1631 2.02344 11.1801 2.02344C6.19611 2.02344 2.14111 6.07844 2.14111 11.0614C2.14111 16.0454 6.19611 20.1004 11.1801 20.1004C13.2021 20.1004 15.0651 19.4244 16.5721 18.2974L21.2241 22.9364L22.6361 21.5204Z"
                                      fill="black"/>
                            </svg>
                            조회
                        </button>
                        <div id="add-btn-wrap">
                            <button id="addBtn" type="button" onclick="location.href='company.erp'">
                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M10.1535 4.00586V15.2245M4.54419 9.61516H15.7628" stroke="white"
                                          stroke-width="1.60586" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                                거래처 승인
                            </button>
                            <button id="deleteBtn" type="button" onclick="location.href='company.erp'">
                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4 10H16" stroke="white" stroke-width="1.60586" stroke-linecap="round"
                                          stroke-linejoin="round"/>
                                </svg>
                                거래처 반려
                            </button>
                            <button id="backBtn" type="button" onclick="location.href='company.erp'">
                                돌아가기
                            </button>
                        </div>
                    </div>
                </form>

                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th><input type="checkbox" name="check"></th>
                        <th>기업명</th>
                        <th>대표자명</th>
                        <th>연락처</th>
                        <th>이메일</th>
                        <th>상태</th>
                        <th>삭제</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:choose>
                        <c:when test="${not empty list}">
                            <c:forEach var="c" items="${list}">
                                <tr>
                                    <td><input type="checkbox" name="check"></td>
                                    <td>${c.companyName}</td>
                                    <td>${c.userName}</td>
                                    <td>${c.phone}</td>
                                    <td>${c.email}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${c.status != 'Y'}">
                                                <svg width="49" height="23" viewBox="0 0 49 23" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <rect x="0.0783691" y="0.576172" width="48.9246" height="21.8464"
                                                          rx="10.9232"
                                                          fill="#F6F2C6"/>
                                                    <circle cx="9.69435" cy="11.4981" r="2.88478" fill="#B2BA14"/>
                                                    <path d="M28.0611 5.89944H29.215V16.4462H28.0611V5.89944ZM26.4456 10.0535H28.3611V11.0459H26.4456V10.0535ZM25.684 6.11869H26.8148V15.9269H25.684V6.11869ZM20.5722 12.9499H21.2761C21.7607 12.9499 22.2069 12.9422 22.6146 12.9268C23.0223 12.9114 23.4185 12.8845 23.8031 12.846C24.1955 12.7998 24.5955 12.7383 25.0032 12.6614L25.1186 13.6537C24.6955 13.7384 24.2839 13.8037 23.8839 13.8499C23.4839 13.8884 23.0723 13.9153 22.6492 13.9307C22.2338 13.9461 21.7761 13.9538 21.2761 13.9538H20.5722V12.9499ZM20.5722 7.15721H24.4724V8.13804H21.7607V13.4114H20.5722V7.15721ZM38.3415 5.89944H39.5531V16.4462H38.3415V5.89944ZM35.2375 7.01874H36.4376C36.4376 7.8034 36.353 8.55344 36.1837 9.26887C36.0145 9.9843 35.7375 10.6651 35.3529 11.3113C34.976 11.9498 34.4759 12.5421 33.8528 13.0883C33.2374 13.6345 32.4758 14.1268 31.5681 14.5653L30.9219 13.6076C31.945 13.1152 32.772 12.5537 33.4028 11.9229C34.0336 11.2921 34.4952 10.5882 34.7875 9.81121C35.0875 9.02655 35.2375 8.16496 35.2375 7.22644V7.01874ZM31.4411 7.01874H35.7799V7.98803H31.4411V7.01874Z"
                                                          fill="#857A03"/>
                                                </svg>
                                            </c:when>
                                            <c:otherwise>
                                                <svg width="49" height="23" viewBox="0 0 49 23" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <rect x="0.0783691" y="0.576172" width="48.9246" height="21.8464"
                                                          rx="10.9232"
                                                          fill="#ECFDF3"/>
                                                    <circle cx="9.69435" cy="11.4981" r="2.88478" fill="#14BA6D"/>
                                                    <path d="M24.3686 6.08407H25.4071V6.48794C25.4071 6.85719 25.3378 7.21106 25.1994 7.54954C25.0609 7.88033 24.8647 8.18804 24.6109 8.47267C24.3647 8.7573 24.0647 9.01116 23.7108 9.23425C23.357 9.45734 22.9685 9.64582 22.5454 9.79967C22.1223 9.95352 21.6684 10.0651 21.1838 10.1343L20.7453 9.1881C21.1607 9.13425 21.553 9.04578 21.9223 8.9227C22.2915 8.79961 22.6261 8.65345 22.9262 8.48421C23.2262 8.30728 23.4839 8.11496 23.6993 7.90725C23.9147 7.69186 24.0801 7.46492 24.1955 7.22644C24.3109 6.98797 24.3686 6.7418 24.3686 6.48794V6.08407ZM24.5647 6.08407H25.6032V6.48794C25.6032 6.73411 25.6609 6.97643 25.7763 7.2149C25.8994 7.45338 26.0687 7.68032 26.284 7.89571C26.4994 8.10342 26.7572 8.29574 27.0572 8.47267C27.3572 8.6496 27.688 8.79961 28.0495 8.9227C28.4188 9.04578 28.815 9.13425 29.2381 9.1881L28.788 10.1343C28.3111 10.0651 27.8611 9.95352 27.438 9.79967C27.0149 9.64582 26.6264 9.45734 26.2725 9.23425C25.9186 9.00347 25.6148 8.74576 25.3609 8.46113C25.1148 8.1765 24.9186 7.86879 24.7724 7.538C24.634 7.20721 24.5647 6.85719 24.5647 6.48794V6.08407ZM20.226 10.8497H29.7573V11.819H20.226V10.8497ZM24.9686 12.6729C26.1071 12.6729 26.9956 12.8345 27.6341 13.1576C28.2803 13.4807 28.6034 13.9461 28.6034 14.5538C28.6034 15.1615 28.2803 15.6269 27.6341 15.95C26.9956 16.2808 26.1071 16.4462 24.9686 16.4462C23.8378 16.4462 22.9492 16.2808 22.303 15.95C21.6646 15.6269 21.3453 15.1615 21.3453 14.5538C21.3453 13.9461 21.6646 13.4807 22.303 13.1576C22.9492 12.8345 23.8378 12.6729 24.9686 12.6729ZM24.9686 13.596C24.4609 13.596 24.0262 13.6345 23.6647 13.7114C23.3031 13.7807 23.0262 13.8884 22.8338 14.0345C22.6492 14.173 22.5569 14.3461 22.5569 14.5538C22.5569 14.7692 22.6492 14.95 22.8338 15.0961C23.0262 15.2423 23.3031 15.3538 23.6647 15.4308C24.0262 15.5 24.4609 15.5346 24.9686 15.5346C25.4917 15.5346 25.9302 15.5 26.284 15.4308C26.6456 15.3538 26.9187 15.2423 27.1033 15.0961C27.288 14.95 27.3803 14.7692 27.3803 14.5538C27.3803 14.3461 27.288 14.173 27.1033 14.0345C26.9187 13.8884 26.6456 13.7807 26.284 13.7114C25.9302 13.6345 25.4917 13.596 24.9686 13.596ZM38.3185 5.91098H39.5301V13.5614H38.3185V5.91098ZM32.6527 15.2577H39.8301V16.2385H32.6527V15.2577ZM32.6527 12.7883H33.8528V15.6385H32.6527V12.7883ZM33.8413 6.61487C34.3721 6.61487 34.849 6.72641 35.2721 6.9495C35.6952 7.17259 36.0299 7.48415 36.276 7.88417C36.5222 8.2765 36.6453 8.73038 36.6453 9.24579C36.6453 9.75351 36.5222 10.2074 36.276 10.6074C36.0299 11.0074 35.6952 11.319 35.2721 11.5421C34.849 11.7652 34.3721 11.8767 33.8413 11.8767C33.3105 11.8767 32.8335 11.7652 32.4104 11.5421C31.9873 11.319 31.6527 11.0074 31.4065 10.6074C31.1604 10.2074 31.0373 9.75351 31.0373 9.24579C31.0373 8.73038 31.1604 8.2765 31.4065 7.88417C31.6527 7.48415 31.9873 7.17259 32.4104 6.9495C32.8335 6.72641 33.3105 6.61487 33.8413 6.61487ZM33.8413 7.66493C33.5336 7.66493 33.2566 7.73032 33.0105 7.8611C32.7643 7.99187 32.572 8.1765 32.4335 8.41497C32.295 8.64576 32.2258 8.9227 32.2258 9.24579C32.2258 9.56889 32.295 9.84967 32.4335 10.0881C32.572 10.3189 32.7643 10.4997 33.0105 10.6305C33.2566 10.7613 33.5336 10.8267 33.8413 10.8267C34.149 10.8267 34.4259 10.7613 34.6721 10.6305C34.9183 10.4997 35.1106 10.3189 35.2491 10.0881C35.3952 9.84967 35.4683 9.56889 35.4683 9.24579C35.4683 8.9227 35.3952 8.64576 35.2491 8.41497C35.1106 8.1765 34.9183 7.99187 34.6721 7.8611C34.4259 7.73032 34.149 7.66493 33.8413 7.66493Z"
                                                          fill="#037847"/>
                                                </svg>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <button style="outline: none" class="icon-button" type="button" onclick="">
                                            <img src="/image/delete_icon.png" alt="삭제" width="20">
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <h3>정보가 없습니다.</h3>
                        </c:otherwise>
                    </c:choose>

                    </tbody>
                </table>
            </div>

            <div id="pagingArea">
                <ul class="pagination">
                    <c:choose>
                        <c:when test="${ pi.currentPage eq 1 }">
                            <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item"><a class="page-link"
                                                     href="company.erp?cpage=${pi.currentPage - 1}">이전</a></li>
                        </c:otherwise>
                    </c:choose>

                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                        <li class="page-item"><a class="page-link" href="company.erp?cpage=${p}">${p}</a></li>
                    </c:forEach>

                    <c:choose>
                        <c:when test="${ pi.currentPage eq pi.maxPage }">
                            <li class="page-item disabled"><a class="page-link" href="#">다음</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item"><a class="page-link"
                                                     href="company.erp?cpage=${pi.currentPage + 1}">다음</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>


        </div>

    </div>
</div>
</div>
</body>
</html>
