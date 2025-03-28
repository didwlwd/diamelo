<%--
  Created by IntelliJ IDEA.
  User: user1
  Date: 25. 3. 25.
  Time: 오후 5:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" href="/resources/css/crm/mainpage.css" />
    <link rel="stylesheet" href="/resources/css/default.css">

    <title>Title</title>
</head>
<body>
<jsp:include page="../common/crm/header.jsp"/>

<div id="content">
    <div id="ad">
        <img src="/resources/image/productImgae/ad.png" alt="" onclick="location.href='${pageContext.servletContext.contextPath}'">
    </div>
    <div id="ad_inner">
        <div class="ad_inner">
            <span class="ad_inner_title">요즘 주목받는 상품</span>
            <br>
            <div class="another"><span><a href="">더보기></a></span></div>
            <table>
                <tr>
                    <td><img src="/resources/image/productImgae/product1.png" alt="product1" onclick="location.href='${pageContext.servletContext.contextPath}'"></td>
                    <td><img src="/resources/image/productImgae/product2.png" alt="product2" onclick="location.href='${pageContext.servletContext.contextPath}'"></td>
                </tr>
                <tr>
                    <td><img src="/resources/image/productImgae/product3.png" alt="product3" onclick="location.href='${pageContext.servletContext.contextPath}'"></td>
                    <td><img src="/resources/image/productImgae/product4.png" alt="product4" onclick="location.href='${pageContext.servletContext.contextPath}'"></td>
                </tr>
            </table>
        </div>

        <div id="line"></div>

        <div class="ad_inner">
            <span class="ad_inner_title">고객님을 위한 추천 상품</span>
            <br>
            <div class="another"><span><a href="">더보기></a></span></div>
            <table>
                <tr>
                    <td><img src="/resources/image/productImgae/product5.png" alt="product5" onclick="location.href='${pageContext.servletContext.contextPath}'"></td>
                    <td><img src="/resources/image/productImgae/product6.png" alt="product6" onclick="location.href='${pageContext.servletContext.contextPath}'"></td>
                </tr>
                <tr>
                    <td><img src="/resources/image/productImgae/product7.png" alt="product7" onclick="location.href='${pageContext.servletContext.contextPath}'"></td>
                    <td><img src="/resources/image/productImgae/product8.png" alt="product8" onclick="location.href='${pageContext.servletContext.contextPath}'"></td>
                </tr>
            </table>
        </div>
    </div>
</div>

<jsp:include page="../common/crm/footer.jsp"/>
</body>
</html>
