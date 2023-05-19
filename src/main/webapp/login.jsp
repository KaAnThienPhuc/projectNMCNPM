<%--
  Created by IntelliJ IDEA.
  User: thien
  Date: 11/5/2022
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="UTF-8">
    <title>Đăng nhập</title>

    <%--    <link rel="stylesheet" type="text/css" href="main.css"><link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet">--%>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="fontawesome-free-6.2.0-web/css/all.min.css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/login.css">
    <style>
        *, *::after, *::before {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            user-select: none;
        }

        /* Generic */
        #abc {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: "Montserrat", sans-serif;
            font-size: 12px;
            background-color: var(--main-color);
            color: #a0a5a8;
        }

        /**/
        .main {
            position: relative;
            width: 1000px;
            min-width: 1000px;
            min-height: 600px;
            height: 600px;
            padding: 25px;
            background-color: #ecf0f3;
            box-shadow: 10px 10px 10px #d1d9e6, -10px -10px 10px #f9f9f9;
            border-radius: 12px;
            overflow: hidden;
        }
        /*@media (max-width: 1200px) {*/
        /*    .main {*/
        /*        transform: scale(0.7);*/
        /*    }*/
        /*}*/
        /*@media (max-width: 1000px) {*/
        /*    .main {*/
        /*        transform: scale(0.6);*/
        /*    }*/
        /*}*/
        /*@media (max-width: 800px) {*/
        /*    .main {*/
        /*        transform: scale(0.5);*/
        /*    }*/
        /*}*/
        /*@media (max-width: 600px) {*/
        /*    .main {*/
        /*        transform: scale(0.4);*/
        /*    }*/
        /*}*/

        #abc .container {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            width: 600px;
            height: 100%;
            padding: 25px;
            background-color: #ecf0f3;
            /*transition: 1.25s;*/
        }

        .form {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
            height: 100%;
        }
        .form__icon {
            object-fit: contain;
            width: 30px;
            margin: 0 5px;
            opacity: 0.5;
            /*transition: 0.15s;*/
        }
        .form__icon:hover {
            opacity: 1;
            /*transition: 0.15s;*/
            cursor: pointer;
        }
        .form__input {
            width: 350px;
            height: 40px;
            margin: 4px 0;
            padding-left: 25px;
            font-size: 13px;
            letter-spacing: 0.15px;
            border: none;
            outline: none;
            font-family: "Montserrat", sans-serif;
            background-color: #ecf0f3;
            /*transition: 0.25s ease;*/
            border-radius: 8px;
            box-shadow: inset 2px 2px 4px #d1d9e6, inset -2px -2px 4px #f9f9f9;
        }
        .passButton{
            position: absolute;
            cursor: pointer;
            color: var(--main-color);
            margin-left: 290px;
            margin-bottom: 300px;
            padding-bottom: 300px;
            /*padding-left: 308px;*/
            /*padding-top: 61px;*/
        }
        .form__input:focus {
            box-shadow: inset 4px 4px 4px #d1d9e6, inset -4px -4px 4px #f9f9f9;
        }
        .form__span {
            margin-top: 30px;
            margin-bottom: 12px;
        }
        .form__link {
            color: #181818;
            font-size: 15px;
            margin-top: 25px;
            border-bottom: 1px solid #a0a5a8;
            line-height: 2;
        }

        .title {
            font-size: 34px;
            font-weight: 700;
            line-height: 3;
            color: #181818;
        }

        .description {
            font-size: 14px;
            letter-spacing: 0.25px;
            text-align: center;
            line-height: 1.6;
        }

        .button {
            width: 180px;
            height: 50px;
            border-radius: 25px;
            margin-top: 50px;
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1.15px;
            background-color: var(--main-color);
            color: #f9f9f9;
            box-shadow: 8px 8px 16px #d1d9e6, -8px -8px 16px #f9f9f9;
            border: none;
            outline: none;
        }

        /**/
        .a-container {
            z-index: 100;
            left: calc(100% - 600px );
        }

        .b-container {
            left: calc(100% - 600px );
            z-index: 0;
        }

        .switch {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 400px;
            padding: 50px;
            z-index: 200;
            transition: 1.25s;
            background-color: #ecf0f3;
            overflow: hidden;
            box-shadow: 4px 4px 10px #d1d9e6, -4px -4px 10px #f9f9f9;
        }
        .switch__circle {
            position: absolute;
            width: 500px;
            height: 500px;
            border-radius: 50%;
            background-color: #ecf0f3;
            box-shadow: inset 8px 8px 12px #d1d9e6, inset -8px -8px 12px #f9f9f9;
            bottom: -60%;
            left: -60%;
            transition: 1.25s;
        }
        .switch__circle--t {
            top: -30%;
            left: 60%;
            width: 300px;
            height: 300px;
        }
        .switch__container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            position: absolute;
            width: 400px;
            padding: 50px 55px;
            transition: 1.25s;
        }
        .switch__button {
            cursor: pointer;
        }
        .switch__button:hover {
            box-shadow: 6px 6px 10px #d1d9e6, -6px -6px 10px #f9f9f9;
            transform: scale(0.985);
            transition: 0.25s;
        }
        .switch__button:active, .switch__button:focus {
            box-shadow: 2px 2px 6px #d1d9e6, -2px -2px 6px #f9f9f9;
            transform: scale(0.97);
            transition: 0.25s;
        }

        /**/
        .is-txr {
            left: calc(100% - 400px );
            transition: 1.25s;
            transform-origin: left;
        }

        .is-txl {
            left: 0;
            transition: 1.25s;
            transform-origin: right;
        }

        .is-z200 {
            z-index: 200;
            transition: 1.25s;
        }

        .is-hidden {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            transition: 1.25s;
        }

        .is-gx {
            animation: is-gx 1.25s;
        }

        @keyframes is-gx {
            0%, 10%, 100% {
                width: 400px;
            }
            30%, 50% {
                width: 500px;
            }
        }

    </style>

</head>
<body id="abc" style="background-color: #C4946DFF">
<%
    String error = (String) request.getAttribute("error");
    String email = request.getParameter("name");
    String pass = request.getParameter("pass");
    error = (error == null) ? "" : error;

%>
<div class="main">
    <div class="container b-container" id="b-container">
        <form class="form" id="b-form" method="post" action="/Login">
            <h2 class="form_title title">Đăng nhập</h2>
<%--            <div class="form__icons"><fb:login-button scope="public_profile,email" onlogin="checkLoginState();">--%>
<%--            </fb:login-button></div>--%>

<%--            <div id="status">--%>
<%--            </div>--%>
<%--            <span class="form__span">hoặc dùng tài khoản email</span>--%>
            <input class="form__input" name="email" type="email" placeholder="Email">
            <input class="form__input" name="pass" type="password" id="password" placeholder="Mật khẩu">
<%--            <i style="padding-top: 580px; color: #C4946DFF" id="show" type="submit"  class="fa-solid fa-eye passButton"></i>--%>
<%--            <a href="forgetpass.jsp" class="form__link">Quên mật khẩu?</a>--%>
            <p style="color: red;font-size: 18px"><%=error%></p>
            <input type="submit" class="form__button button submit user-link"  style="background-color: #C4946DFF" value="ĐĂNG NHẬP">
        </form>
    </div>



    <div class="switch" id="switch-cnt">
        <div class="switch__circle"></div>
        <div class="switch__circle switch__circle--t"></div>
        <div class="switch__container" id="switch-c1">
            <h2 class="switch__title title">Đăng ký ngay !</h2>
<%--            <p class="switch__description description">Bạn chưa có tài khoản? Hãy đăng ký ngay để có tài khoản miễn phí.</p>--%>
            <a href="signup.jsp"><button class="switch__button button switch-btn" style="background-color: #C4946DFF">ĐĂNG KÝ</button></a>
        </div>
    </div>
</div>

<script>
    // This is called with the results from from FB.getLoginStatus().
    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        // The response object is returned with a status field that lets the
        // app know the current login status of the person.
        // Full docs on the response object can be found in the documentation
        // for FB.getLoginStatus().
        if (response.status === 'connected') {
            // Logged into your app and Facebook.
            testAPI();
        } else if (response.status === 'not_authorized') {
            // The person is logged into Facebook, but not your app.
            document.getElementById('status').innerHTML = 'Login with Facebook ';
        } else {
            // The person is not logged into Facebook, so we're not sure if
            // they are logged into this app or not.
            document.getElementById('status').innerHTML = 'Login with Facebook ';
        }
    }
    // This function is called when someone finishes with the Login
    // Button. See the onlogin handler attached to it in the sample
    // code below.
    function checkLoginState() {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    }
    window.fbAsyncInit = function() {
        FB.init({
            appId : '590399655968529',
            cookie : true, // enable cookies to allow the server to access
            // the session
            xfbml : true, // parse social plugins on this page
            version : 'v2.2' // use version 2.2
        });
        // Now that we've initialized the JavaScript SDK, we call
        // FB.getLoginStatus(). This function gets the state of the
        // person visiting this page and can return one of three states to
        // the callback you provide. They can be:
        //
        // 1. Logged into your app ('connected')
        // 2. Logged into Facebook, but not your app ('not_authorized')
        // 3. Not logged into Facebook and can't tell if they are logged into
        // your app or not.
        //
        // These three cases are handled in the callback function.

        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    };
    // Load the SDK asynchronously
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    // Here we run a very simple test of the Graph API after login is
    // successful. See statusChangeCallback() for when this call is made.
    function testAPI() {
        console.log('Welcome! Fetching your information.... ');
        FB.api('/me?fields=name,email', function(response) {
            console.log('Successful login for: ' + response.name);

            document.getElementById("status").innerHTML = '<p>Welcome '+response.name+'! <a href=/LoadControl?user_name='+ response.name.replace(" ", "_") +'&user_email='+ response.email +'>Continue with facebook login</a></p>'
        });
    }
</script>


<script type="text/javascript">
</script>
<%--<% String user_name=(String)request.getParameter("user_name");--%>
<%--    String user_email=(String)request.getParameter("user_email"); %>--%>



<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<script src="js/main.js"></script>
<script src="js/login.js"></script>
</body>
</html>
