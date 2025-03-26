<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <%-- Noto Sans KR Font--%>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;700;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/crm/myPageViewStyle.css" />
  <title>Title</title>


</head>
<body>
<div id="fullarea">
  <div class="div-area">

    <div class="div-loginarea">
      <div class="div-area1">
        <div id="imgdiv1">
          <div id="imgdiv">
            <img src="/resources/image/etc/logo.png" alt="로고이미지">
          </div>
        </div>
        <br>

        <form action="" id="form1">
          <tr>
            <div id="loginFormdiv">
            <div id="thId">

              <th>
                <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M32.5332 32.3194C30.8398 26.9643 26.2898 23.896 20.0448 23.896H19.9998C13.7382 23.861 9.16482 26.951 7.46815 32.3194L7.27148 32.9427L7.82815 33.2827C11.0915 35.2727 15.1615 36.281 19.9215 36.281C19.9748 36.281 20.0282 36.281 20.0798 36.281C24.9065 36.281 28.8632 35.2993 32.1732 33.2827L32.7298 32.9427L32.5332 32.3194Z" fill="#529471"/>
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M20.0007 20.1824C24.539 20.1824 28.2324 16.4907 28.2324 11.9524C28.2324 7.41237 24.539 3.7207 20.0007 3.7207C15.4624 3.7207 11.7707 7.41237 11.7707 11.9524C11.7707 16.4907 15.4624 20.1824 20.0007 20.1824Z" fill="#529471"/>
                </svg>
                <input type="text" placeholder="user01"  readonly>
              </th>
            </div>

            <div id="thPwd">
              <th>
                <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M26.3491 15.0044H13.6491V12.3494C13.6558 10.6594 14.3208 9.07111 15.5241 7.87944C16.7208 6.69444 18.3024 6.04278 19.9891 6.04278H20.0158C23.5091 6.04278 26.3491 8.88444 26.3491 12.3778V15.0044ZM18.5158 28.8328H21.0158V22.6311H18.5158V28.8328ZM28.8491 15.0044V12.3778C28.8491 7.50611 24.8858 3.54278 20.0208 3.54278C17.6824 3.49444 15.4408 4.44278 13.7658 6.10278C12.0874 7.76444 11.1591 9.97944 11.1491 12.3778V15.0044H6.48242V36.4594H33.5158V15.0044H28.8491Z" fill="#529471"/>
                </svg>
                <input  type="text" placeholder="비밀번호를 입력하세요.">
              </th>
            </div>
          </tr>

            <input class="loginForm" type="submit" value="로그인">
            <input class="loginForm" type="button" value="뒤로가기">
          </div>
        </form>



      </div>

    </div>

    <div class="div-imgarea">

    </div>
  </div>
</div>

</body>
</html>
