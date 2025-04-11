<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Diamelo</title>
    <link rel="stylesheet" href="/css/erp/erpLayout.css"/>
    <link rel="stylesheet" href="/css/erp/companyAdminPageStyle.css"/>
    <link rel="stylesheet" href="/css/default.css"/>
    <script src="/js/erp/companyAdminPage.js"></script>
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
                <div id="page_body">
                    <form method="get" action="select.ad">
                        <div id="search-company">
                            <select id="search-category" name="type">
                                <option value="A">전체</option>
                                <option value="W">대기</option>
                                <option value="Y">승인</option>
                                <option value="N">반려</option>
                            </select>
                            <input type="text" placeholder="기업명" id="search-companyName" name="companyName">
                            <input type="text" placeholder="대표자명" id="search-ceoName" name="userName">
                            <button id="searchBtn" type="submit">
                                <svg width="20" height="20" viewBox="0 0 25 25" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M4.14111 11.0614C4.14111 7.18044 7.29911 4.02344 11.1801 4.02344C15.0601 4.02344 18.2181 7.18044 18.2181 11.0614C18.2181 14.9424 15.0601 18.1004 11.1801 18.1004C7.29911 18.1004 4.14111 14.9424 4.14111 11.0614ZM22.6361 21.5204L18.0371 16.9334C19.3931 15.3524 20.2181 13.3034 20.2181 11.0614C20.2181 6.07844 16.1631 2.02344 11.1801 2.02344C6.19611 2.02344 2.14111 6.07844 2.14111 11.0614C2.14111 16.0454 6.19611 20.1004 11.1801 20.1004C13.2021 20.1004 15.0651 19.4244 16.5721 18.2974L21.2241 22.9364L22.6361 21.5204Z"
                                          fill="black"/>
                                </svg>
                                조회
                            </button>
                        </div>
                    </form>


                    <div id="add-btn-wrap">

                        <button id="addBtn" onclick="return commitCompany()" >
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M10.1535 4.00586V15.2245M4.54419 9.61516H15.7628" stroke="white"
                                      stroke-width="1.60586" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                            거래처 승인
                        </button>


                        <button id="deleteBtn" type="button" onclick="return returnCompany()">
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

                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th style="vertical-align: middle;"><input type="checkbox" id="allcheck" onclick="allCheck(this)"></th>
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
                                    <td style="vertical-align: middle;">
                                        <input type="checkbox" class="checking" name="userId" value="${c.userId}">
                                    </td>
                                    <td>${c.companyName}</td>
                                    <td>${c.userName}</td>
                                    <td>${c.phone}</td>
                                    <td>${c.email}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${c.status == 'Y'}">
                                                <svg width="49" height="23" viewBox="0 0 49 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect x="0.078125" y="0.302734" width="48.9246" height="21.8464" rx="10.9232" fill="#ECFDF3"/>
                                                    <circle cx="9.69386" cy="11.2246" r="2.88478" fill="#14BA6D"/>
                                                    <path d="M24.3683 5.81063H25.4068V6.2145C25.4068 6.58375 25.3376 6.93762 25.1991 7.2761C25.0607 7.60689 24.8645 7.9146 24.6106 8.19923C24.3645 8.48386 24.0644 8.73773 23.7106 8.96081C23.3567 9.1839 22.9682 9.37238 22.5451 9.52623C22.122 9.68009 21.6682 9.79163 21.1835 9.86087L20.745 8.91466C21.1604 8.86081 21.5528 8.77234 21.922 8.64926C22.2913 8.52617 22.6259 8.38001 22.9259 8.21077C23.2259 8.03384 23.4836 7.84152 23.699 7.63381C23.9144 7.41842 24.0798 7.19148 24.1952 6.95301C24.3106 6.71453 24.3683 6.46836 24.3683 6.2145V5.81063ZM24.5645 5.81063H25.603V6.2145C25.603 6.46067 25.6607 6.70299 25.7761 6.94147C25.8992 7.17994 26.0684 7.40688 26.2838 7.62228C26.4992 7.82998 26.7569 8.0223 27.0569 8.19923C27.3569 8.37617 27.6877 8.52617 28.0493 8.64926C28.4185 8.77234 28.8147 8.86081 29.2378 8.91466L28.7878 9.86087C28.3108 9.79163 27.8608 9.68009 27.4377 9.52623C27.0146 9.37238 26.6261 9.1839 26.2723 8.96081C25.9184 8.73003 25.6145 8.47233 25.3607 8.18769C25.1145 7.90306 24.9183 7.59535 24.7722 7.26456C24.6337 6.93377 24.5645 6.58375 24.5645 6.2145V5.81063ZM20.2258 10.5763H29.7571V11.5456H20.2258V10.5763ZM24.9683 12.3995C26.1069 12.3995 26.9954 12.561 27.6339 12.8841C28.2801 13.2072 28.6032 13.6726 28.6032 14.2804C28.6032 14.8881 28.2801 15.3535 27.6339 15.6766C26.9954 16.0074 26.1069 16.1728 24.9683 16.1728C23.8375 16.1728 22.949 16.0074 22.3028 15.6766C21.6643 15.3535 21.3451 14.8881 21.3451 14.2804C21.3451 13.6726 21.6643 13.2072 22.3028 12.8841C22.949 12.561 23.8375 12.3995 24.9683 12.3995ZM24.9683 13.3226C24.4606 13.3226 24.026 13.3611 23.6644 13.438C23.3029 13.5072 23.0259 13.6149 22.8336 13.7611C22.649 13.8996 22.5567 14.0726 22.5567 14.2804C22.5567 14.4958 22.649 14.6765 22.8336 14.8227C23.0259 14.9689 23.3029 15.0804 23.6644 15.1573C24.026 15.2266 24.4606 15.2612 24.9683 15.2612C25.4915 15.2612 25.9299 15.2266 26.2838 15.1573C26.6454 15.0804 26.9185 14.9689 27.1031 14.8227C27.2877 14.6765 27.38 14.4958 27.38 14.2804C27.38 14.0726 27.2877 13.8996 27.1031 13.7611C26.9185 13.6149 26.6454 13.5072 26.2838 13.438C25.9299 13.3611 25.4915 13.3226 24.9683 13.3226ZM38.3182 5.63755H39.5298V13.288H38.3182V5.63755ZM32.6525 14.9842H39.8298V15.9651H32.6525V14.9842ZM32.6525 12.5149H33.8526V15.365H32.6525V12.5149ZM33.841 6.34143C34.3718 6.34143 34.8488 6.45298 35.2719 6.67607C35.695 6.89916 36.0296 7.21071 36.2758 7.61074C36.522 8.00307 36.645 8.45694 36.645 8.97235C36.645 9.48008 36.522 9.93395 36.2758 10.334C36.0296 10.734 35.695 11.0456 35.2719 11.2686C34.8488 11.4917 34.3718 11.6033 33.841 11.6033C33.3102 11.6033 32.8333 11.4917 32.4102 11.2686C31.9871 11.0456 31.6524 10.734 31.4063 10.334C31.1601 9.93395 31.037 9.48008 31.037 8.97235C31.037 8.45694 31.1601 8.00307 31.4063 7.61074C31.6524 7.21071 31.9871 6.89916 32.4102 6.67607C32.8333 6.45298 33.3102 6.34143 33.841 6.34143ZM33.841 7.39149C33.5333 7.39149 33.2564 7.45688 33.0102 7.58766C32.764 7.71844 32.5717 7.90306 32.4333 8.14154C32.2948 8.37232 32.2256 8.64926 32.2256 8.97235C32.2256 9.29545 32.2948 9.57624 32.4333 9.81471C32.5717 10.0455 32.764 10.2263 33.0102 10.357C33.2564 10.4878 33.5333 10.5532 33.841 10.5532C34.1487 10.5532 34.4257 10.4878 34.6718 10.357C34.918 10.2263 35.1103 10.0455 35.2488 9.81471C35.395 9.57624 35.468 9.29545 35.468 8.97235C35.468 8.64926 35.395 8.37232 35.2488 8.14154C35.1103 7.90306 34.918 7.71844 34.6718 7.58766C34.4257 7.45688 34.1487 7.39149 33.841 7.39149Z" fill="#037847"/>
                                                </svg>
                                            </c:when>
                                            <c:when test="${c.status == 'N'}">
                                                <svg width="49" height="23" viewBox="0 0 49 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect x="0.078125" y="0.302734" width="48.9246" height="21.8464" rx="10.9232" fill="#F6C6C6"/>
                                                    <circle cx="9.69386" cy="11.2246" r="2.88478" fill="#BA2714"/>
                                                    <path d="M27.2531 5.63755H28.4532V13.3918H27.2531V5.63755ZM28.0954 8.73003H29.9417V9.73394H28.0954V8.73003ZM21.7835 14.9842H28.8916V15.9651H21.7835V14.9842ZM21.7835 12.6303H22.9952V15.2035H21.7835V12.6303ZM20.595 6.38759H21.7951V8.03768H24.3683V6.38759H25.5684V11.6725H20.595V6.38759ZM21.7951 8.97235V10.7032H24.3683V8.97235H21.7951ZM38.3759 5.62601H39.576V16.1958H38.3759V5.62601ZM36.4489 7.95691H38.6298V8.93774H36.4489V7.95691ZM31.2216 12.7803H32.0294C32.5679 12.7803 33.0756 12.7764 33.5526 12.7687C34.0372 12.7533 34.5218 12.7264 35.0065 12.688C35.4911 12.6418 35.995 12.5764 36.5181 12.4918L36.6104 13.4842C36.0796 13.5688 35.5642 13.6342 35.0642 13.6803C34.5718 13.7265 34.0795 13.7572 33.5872 13.7726C33.0948 13.788 32.5756 13.7957 32.0294 13.7957H31.2216V12.7803ZM31.1986 6.54914H35.8488V10.4609H32.4102V13.011H31.2216V9.49162H34.6603V7.52996H31.1986V6.54914ZM36.3912 10.8417H38.5721V11.811H36.3912V10.8417Z" fill="#850C03"/>
                                                </svg>
                                            </c:when>
                                            <c:otherwise>
                                                <svg width="49" height="23" viewBox="0 0 49 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g style="mix-blend-mode:multiply">
                                                        <rect x="1" y="0.726562" width="48.9246" height="21.8464" rx="10.9232" fill="#F6F2C6"/>
                                                        <circle cx="10.6157" cy="11.6485" r="2.88478" fill="#B2BA14"/>
                                                        <path d="M28.9827 6.04983H30.1366V16.5966H28.9827V6.04983ZM27.3672 10.2039H29.2827V11.1963H27.3672V10.2039ZM26.6056 6.26908H27.7365V16.0773H26.6056V6.26908ZM21.4938 13.1002H22.1977C22.6823 13.1002 23.1285 13.0926 23.5362 13.0772C23.944 13.0618 24.3401 13.0349 24.7248 12.9964C25.1171 12.9502 25.5171 12.8887 25.9248 12.8118L26.0402 13.8041C25.6171 13.8888 25.2056 13.9541 24.8055 14.0003C24.4055 14.0388 23.994 14.0657 23.5709 14.0811C23.1554 14.0965 22.6977 14.1041 22.1977 14.1041H21.4938V13.1002ZM21.4938 7.3076H25.394V8.28843H22.6823V13.5618H21.4938V7.3076ZM39.2632 6.04983H40.4748V16.5966H39.2632V6.04983ZM36.1591 7.16913H37.3592C37.3592 7.95379 37.2746 8.70383 37.1054 9.41926C36.9361 10.1347 36.6592 10.8155 36.2745 11.4617C35.8976 12.1002 35.3976 12.6925 34.7744 13.2387C34.159 13.7849 33.3974 14.2772 32.4897 14.7157L31.8435 13.758C32.8666 13.2656 33.6936 12.7041 34.3244 12.0733C34.9552 11.4425 35.4168 10.7386 35.7091 9.9616C36.0091 9.17694 36.1591 8.31535 36.1591 7.37683V7.16913ZM32.3628 7.16913H36.7015V8.13842H32.3628V7.16913Z" fill="#857A03"/>
                                                    </g>
                                                </svg>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <form action="delete.com" method="get">
                                            <input type="hidden" name="userId" value="${c.userId}">
                                            <button style="outline: none" class="icon-button" type="submit" onclick="return onalert()">
                                                <img src="/image/delete_icon.png" alt="삭제" width="20">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="7"><h3>정보가 없습니다.</h3></td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                </table>
            </div>

            <c:set var="isSearch" value="false"/>
            <c:if test="${not empty type}">
                <c:set var="isSearch" value="true" />
            </c:if>
            <c:if test="${not empty companyName}">
                <c:set var="isSearch" value="true"/>
            </c:if>
            <c:if test="${not empty userName}">
                <c:set var="isSearch" value="true"/>
            </c:if>

            <c:choose>
                <c:when test="${isSearch}">
                    <div id="pagingArea">
                        <ul class="pagination">
                            <c:choose>
                                <c:when test="${ pi.currentPage eq 1 }">
                                    <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link"
                                                             href="select.ad?cpage=${pi.currentPage - 1}&type=${type}&companyName=${companyName}&userName=${userName}">이전</a></li>
                                </c:otherwise>
                            </c:choose>

                            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                                <li class="page-item"><a class="page-link" href="select.ad?cpage=${p}&type=${type}&companyName=${companyName}&userName=${userName}">${p}</a></li>
                            </c:forEach>

                            <c:choose>
                                <c:when test="${ pi.currentPage eq pi.maxPage }">
                                    <li class="page-item disabled"><a class="page-link" href="#">다음</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link"
                                                             href="select.ad?cpage=${pi.currentPage + 1}&type=${type}&companyName=${companyName}&userName=${userName}">다음</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </c:when>
                <c:otherwise>
                    <div id="pagingArea">
                        <ul class="pagination">
                            <c:choose>
                                <c:when test="${ pi.currentPage eq 1 }">
                                    <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link"
                                                             href="compAdmin.erp?cpage=${pi.currentPage - 1}">이전</a></li>
                                </c:otherwise>
                            </c:choose>

                            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                                <li class="page-item"><a class="page-link" href="compAdmin.erp?cpage=${p}">${p}</a></li>
                            </c:forEach>

                            <c:choose>
                                <c:when test="${ pi.currentPage eq pi.maxPage }">
                                    <li class="page-item disabled"><a class="page-link" href="#">다음</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link"
                                                             href="compAdmin.erp?cpage=${pi.currentPage + 1}">다음</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>

</body>
</html>
