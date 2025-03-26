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

                    <div id="loginFormdiv">
                        <input class="loginForm" type="submit" value="개인 정보 변경">

                        <input class="loginForm" type="submit" value="비밀번호 변경">

                        <input class="loginForm" id="userDelete" type="button" value="회원탈퇴">

                        <input class="loginForm" type="button" value="뒤로가기">
                    </div>
                </form>

            </div>
        </div>
        <div class="div-imgarea1">
        </div>
    </div>
</div>

<!-- 회원 탈퇴 모달 -->
<div id="deleteModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h3>회원 탈퇴</h3>
            <p>계정을 삭제하려면 현재 사용중인 비밀번호를 입력하세요</p>
        </div>

            <input id="thPwd" placeholder="비밀번호 입력해주세요.">
            <label>
                <input type="checkbox" id="confirmCheck"> 동의합니다.
            </label>


        <div class="modal-footer">
            <button id="confirmDelete" class="modal-button btn-danger" type="submit">탈퇴하기</button>
            <button id="cancelDelete" class="modal-button btn-cancel">취소</button>
        </div>

    </div>
</div>

<script>
    // 모달 요소 가져오기
    const modal = document.getElementById("deleteModal");
    const deleteBtn = document.getElementById("userDelete");
    const confirmDelete = document.getElementById("confirmDelete");
    const cancelDelete = document.getElementById("cancelDelete");
    const confirmCheck = document.getElementById("confirmCheck"); // 체크박스
    const passwordInput = document.getElementById("thPwd"); // 비밀번호 입력창

    // 회원 탈퇴 버튼 클릭 시 모달 표시
    deleteBtn.onclick = function () {
        modal.style.display = "block";
        confirmDelete.disabled = true; // 기본적으로 비활성화
    };

    // 체크박스 상태 감지하여 버튼 활성화/비활성화
    confirmCheck.onchange = function () {
        confirmDelete.disabled = !this.checked; // 체크박스가 체크되면 버튼 활성화
    };

    // 취소 버튼 클릭 시 모달 닫기
    cancelDelete.onclick = function () {
        modal.style.display = "none";
    };

    // 탈퇴 버튼 클릭 시 탈퇴 처리
    confirmDelete.onclick = function () {
        if (passwordInput.value.trim() === "") {
            alert("비밀번호를 입력해주세요.");
            return;
        }

        alert("회원 탈퇴가 완료되었습니다."); // 실제 탈퇴 로직으로 대체 가능
        modal.style.display = "none";
    };

    // 모달 외부 클릭 시 닫기
    window.onclick = function (event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    };

</script>
</body>
</html>
