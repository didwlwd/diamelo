<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="/css/crm/shoppingList.css"/>
    <link rel="stylesheet" href="/css/default.css"/>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <title>Title</title>
</head>
<body>
<jsp:include page="../common/crm/header.jsp"/>

<div id="list">
    <div id="list_header">
        <div><span>결제 페이지</span></div>
    </div>

    <form>
        <div id="list_content">
            <table>
                <tr id="table_header" class="table_header">
                    <td><span>사진</span></td>
                    <td><span>상품명</span></td>
                    <td><span id="totalPrice">총 구매 금액 : 0원</span></td>
                    <td><span id="totalQuantity">총 물품 개수 : 0개</span></td>
                    <td></td>
                </tr>
                <c:forEach var="cart" items="${cartList}">
                    <%-- 장바구니를 불러와서 아이디 값 비교 --%>
                    <c:if test="${cart.userId eq loginUser.userId}">
                        <c:forEach var="product" items="${productList}">
                            <%-- 제품을 불러와서 제품 번호와 장바구니의 제품 번호 값 비교 --%>
                            <c:if test="${cart.proNo eq product.proNo}">
                                <tr class="table_header">
                                    <td class="list_img">
                                        <img src="${product.changeName}" alt="${product.proName}">
                                    </td>
                                    <td>
                                        <span>${product.proName}</span>
                                        <input type="hidden" name="proName" value="${product.proName}"/>
                                    </td>
                                    <td><span>${product.proPrice} 원(개당)</span></td>
                                    <td>
                                        <span>
                                            <input type="number" placeholder="수량을 입력하세요" required name="proStock" min="0"
                                                   onchange="updateStock(${product.proPrice},this)" data-old="0">
                                        </span>
                                    </td>
                                    <td>
                                        <button>
                                            <img src="/image/delete_icon.png"/>
                                        </button>
                                    </td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </c:forEach>
            </table>
        </div>

        <div id="buy_button"><input type="submit" value="구매 확정"/></div>
    </form>
</div>


<%-- html이 다 그려지고 나서 실행되는 updatePwd.js --%>
<script src="/js/crm/shoppingList.js"></script>

<jsp:include page="../common/crm/footer.jsp"/>
</body>
</html>
