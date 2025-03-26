<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>enroll</title>
    <link rel="stylesheet" href="styles.css">
    <%-- Noto Sans KR Font--%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;700;900&display=swap" rel="stylesheet">

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const employeeButton = document.getElementById("employee-btn");
            const personalCompanyButton = document.getElementById("personal-company-btn");
            const companyInputContainer = document.getElementById("company-input-container");

            companyInputContainer.style.display = "none"; // 처음에는 숨김

            personalCompanyButton.addEventListener("click", function (event) {
                event.preventDefault();
                companyInputContainer.style.display = "block";
            });

            employeeButton.addEventListener("click", function (event) {
                event.preventDefault();
                companyInputContainer.style.display = "none";
            });
        });
    </script>

    <style>
        * {
            box-sizing: border-box;
            font-family: "Noto Sans KR", sans-serif;
            font-style: normal;
        }
        body {
            background: #F8F8F8;
        }

        .container {
            width: 90%;
            max-width: 500px;
            margin: 0 auto;
            background: #F8F8F8;
            overflow: hidden;
            position: relative;
            padding: 12px;

        }

        .form-container {
            width: 100%;
            max-width: 480px;
            margin: 120px auto 0;
            overflow: hidden;
            border-radius: 15px;
            position: relative;
        }

        .logo{

            display: flex;
            justify-content: center;
        }
        img{
            width: 175px;
            height: 155px;
        }

        .title {
            text-align: center;
            font-size: 20px;

            font-weight: 500;
            color: black;
            margin-bottom: 12px;
        }

        .input-boxs  {
            width: 100%;
            max-width: 400px;
        }

        .input-box {
            width: 100%;
            max-width: 400px;
            height: 45px;
            background: white;
            border-radius: 15px;
            border: 2px solid #529471;
            display: flex;
            align-items: center;
            font-size: 16px;
            font-weight: 500;
            color: #000000;
            margin: 20px 0px 0px 0px;
            padding-left: 5px;

        }



        .error-message {
            width: 100%;
            max-width: 460px;
            color: #FF0000;
            font-size: 16px;
            font-weight: 500;
            margin-top: 6px;
        }

        .button {
            width: 100%;
            height: 45px;
            background: #529471;
            box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
            text-align: center;
            font-size: 16px;

            font-weight: 500;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 12px;
            cursor: pointer;
        }

        .button-group {
            display: flex;
            width: 100%;
            justify-content: space-between;
            gap: 6px;
            margin-top: 12px;
        }

        .small-button {
            width: 48%;
            height: 45px;
            background: #529471;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
            text-align: center;
            font-size: 16px;

            font-weight: 500;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }

        .logo {
            width: 120px;
            height: 110px;
            margin: 25px auto;
        }

        button {
            border: none;
        }

        /* 반응형 스타일 */

        @media screen and (max-width: 1024px) {
            .container {
                width: 95%;
            }
            .form-container {
                max-width: 460px;
            }
            .input-box, .button, .small-button {
                font-size: 14px;
                height: 42px;
            }
        }

        @media screen  {
            .container {
                width: 100%;
            }
            .form-container {
                max-width: 400px;
                margin-top: 80px;
            }
            .title {
                font-size: 16px;
            }
            .input-box {
                font-size: 14px;
                height: 40px;
            }
            .button, .small-button {
                font-size: 14px;
                height: 40px;
            }
        }
    </style>
</head>
<body>
<form action="">
    <div class="container">
        <div class="logo">
            <img src="/resources/image/etc/logo.png" alt="로고이미지">
        </div>
        <div class="form-container">
            <div class="title">회원가입 정보를 입력해주세요!</div>

            <div class="input-boxs">
                <input class="input-box" type="text" placeholder="아이디"></input>
                <div class="error-message">사용할 수 없는 아이디입니다.</div>
                <input class="input-box" type="text" placeholder="비밀번호"></input>
                <input class="input-box" type="text" placeholder="비밀번호 확인"></input>
                <input class="input-box" type="text" placeholder="이름"></input>
                <input class="input-box" type="text" placeholder="전화번호 ( '-' 제외)"></input>
                <input class="input-box" type="text" placeholder="이메일"></input>
            </div>

            <div class="buttons">
                <div class="button-group">
                    <button id="employee-btn" class="small-button">직원</button>
                    <button id="personal-company-btn" class="small-button">개인 / 기업</button>
                </div>
                <div id="company-input-container">
                    <input class="input-box" type="text" placeholder="개인/기업명"></input>
                </div>

                <button class="button" type="submit">가입하기</button>
                <button class="button">뒤로가기</button>
            </div>

        </div>
    </div>
</form>
</body>

</html>