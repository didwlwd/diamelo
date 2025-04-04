<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>header</title>

        <%-- Noto Sans KR Font--%>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;700;900&display=swap"
            rel="stylesheet"
        />

        <!-- JavaScript -->
        <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

        <!-- CSS -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
        <!-- Default theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
        <!-- Semantic UI theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />
        <!-- Bootstrap theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            #pagingArea{
                padding: 20px;
            }

            #pagingArea ul{
                margin: 0;
            }
            .page-item.disabled .page-link{
                background: #f8f8f8;
                border: 1px solid #A9A9A9;
            }

            .page-link{
                color: black;
                background: #f8f8f8;
                border: 1px solid #A9A9A9;
            }

            .page-link:hover{
                background: #E4E4E4;
                color: black;
                border: 1px solid #A9A9A9;
            }

        </style>
    </head>
    <body>
        <c:if test="${ not empty alertMsg}">
            <script>
                alert("${alertMsg}");
            </script>
            <c:remove var="alertMsg" scope="session"/>
        </c:if>

        <div class="header-container">
            <!-- 왼쪽: HOME 아이콘 + 텍스트 -->
            <div class="header-left">
                <!-- 홈 아이콘 -->
                <svg width="25" height="22" viewBox="0 0 25 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M12.5 3.48118L18.75 9.30471V19.4118H16.25V11.6471H8.75V19.4118H6.25V9.30471L12.5 3.48118ZM12.5 0L0 11.6471H3.75V22H11.25V14.2353H13.75V22H21.25V11.6471H25L12.5 0Z"
                        fill="black"
                    />
                </svg>
                <div class="home-labels">
                    <span class="home-sub">HOME</span>
                    <span class="home-main">HOME</span>
                </div>
            </div>

            <!-- 오른쪽: 사람 아이콘 + 로그아웃 아이콘 + 텍스트 -->
            <div class="header-right">
                <!-- 사람 아이콘 -->
                <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <g clip-path="url(#clip0_57_3647)">
                        <path
                            fill-rule="evenodd"
                            clip-rule="evenodd"
                            d="M32.5322 32.3193C30.8388 26.9643 26.2888 23.896 20.0438 23.896H19.9988C13.7372 23.861 9.16384 26.951 7.46717 32.3193L7.27051 32.9427L7.82717 33.2827C11.0905 35.2727 15.1605 36.281 19.9205 36.281C19.9738 36.281 20.0272 36.281 20.0788 36.281C24.9055 36.281 28.8622 35.2993 32.1722 33.2827L32.7288 32.9427L32.5322 32.3193Z"
                            fill="#7AC38F"
                        />
                        <path
                            fill-rule="evenodd"
                            clip-rule="evenodd"
                            d="M19.9997 20.1824C24.538 20.1824 28.2314 16.4907 28.2314 11.9524C28.2314 7.41237 24.538 3.7207 19.9997 3.7207C15.4614 3.7207 11.7697 7.41237 11.7697 11.9524C11.7697 16.4907 15.4614 20.1824 19.9997 20.1824Z"
                            fill="#7AC38F"
                        />
                    </g>
                    <defs>
                        <clipPath id="clip0_57_3647">
                            <rect width="40" height="40" fill="white" />
                        </clipPath>
                    </defs>
                </svg>

                <!-- 로그아웃 아이콘 -->
                <svg
                    width="35"
                    height="34"
                    viewBox="0 0 35 34"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                    onclick="logout()"
                >
                    <path
                        fill-rule="evenodd"
                        clip-rule="evenodd"
                        d="M27.3846 9.77433L25.6212 11.546L29.8446 15.7493H19.5079V18.2493H29.8446L25.6212 22.456L27.3862 24.2277L34.6446 16.9993L27.3846 9.77433Z"
                        fill="#7AC38F"
                    />
                    <path
                        fill-rule="evenodd"
                        clip-rule="evenodd"
                        d="M9.07526 15.75L19.5079 15.7493L19.5086 0.75H0.308594V33.25H19.5086L19.5079 18.2493L9.07526 18.25V15.75Z"
                        fill="#7AC38F"
                    />
                </svg>

                <!-- 텍스트 -->
                <span class="welcome-text">디아멜로 님 어서오세요!</span>
            </div>
        </div>

        <script>
            function logout() {
                const checkLogout = confirm('정말 로그아웃 하시겠습니까?');

                if (checkLogout) {
                    location.href = '/';
                }
            }
        </script>
    </body>
</html>
