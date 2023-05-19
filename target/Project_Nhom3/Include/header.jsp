<%@ page import="vn.edu.hcmuaf.fit.model.Cart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
    body {
        font-family: 'Poppins', sans-serif;
        font-size: 14px;
        line-height: 23px;
        font-weight: 400;
        background: #FFFFFF;
        color: black;
    }

    .container, .container-sm, .container-md, .container-lg, .container-xl {
        max-width: 1270px;
    }


    :root {
        --main-color: #c4946d;
    }

    -- Header
    #header-top {
        width: 100%;
        padding-top: 15px;
    }

    #header-top {
        background-image: url("../images/bannerheadercoffee.png");
    }

    .search {
        width: 100%;
        display: flex;
    }

    .img-fluid {
        text-align: center;
        margin-top: 10px;
    }

    .searchTerm {
        width: 100%;
        border: 2px solid var(--main-color);
        border-right: none;
        padding: 5px;
        height: 50px;
        border-radius: 20px;
        outline: none;
        margin-top: 20px;
        color: #9DBFAF;
    }

    .searchTerm:focus {
        color: #000000;
    }

    .searchButton {
        position: absolute;
        right: 30px;
        padding: 5px;
        text-align: center;
        border-radius: 20px;
        color: #ffffff;
        border: 2px solid var(--main-color);
        background: var(--main-color);
        cursor: pointer;
        top: 10px;
        margin-top: 20px;
    }

    .header-right {
        display: flex;
        justify-content: space-evenly;
    }

    .header-right ul {
        list-style: none;
        display: flex;
    }

    .header-right ul li {
        margin-top: 5px;
    }

    .header-right ul a {
        color: white;
        font-weight: 500;
    }

    .header-right .sign ul li {
        margin-top: 30px;
    }

    .header-right .head-avt ul {
        margin-top: 30px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        /*align-items: center;*/
    }

    .header-right .head-avt ul li {
        margin-right: 10px;
    }

    #header-top .header-right .cart {
        background: #B57949;
        border: 2px solid var(--main-color);
        border-radius: 15px;
        padding: 5px 3px;
        margin-top: 20px;
        margin-bottom: 15px;
        text-decoration: none;
    }

    .header-right .cart ul {
        margin: 0;
        padding: 0;
    }

    .header-right .cart ul li {
        margin-right: 10px;
        color: #ffffff;
        /*margin-bottom: -20px;*/

    }


    .header-right .cart:hover {
        background: #28a745;
        cursor: pointer;
        border: 2px solid #28a745;
    }

    .header-right .cart:hover .drop-cart {
        display: block;

    }

    .drop-cart {
        display: none;
        position: absolute;
        width: 400px;
        left: 60px;
        bottom: -15px;
        color: #000000;
        border-radius: 5px;
        box-shadow: 5px 10px rgba(156, 156, 156, 0.14);
        z-index: 10000;
    }

    .drop-cart:before {
        content: '';
        position: absolute;
        top: -10px;
        right: 40px;
        width: 0;
        height: 0;
        border-style: solid;
        border-width: 0 7.5px 10px 7.5px;
        border-color: transparent transparent #ffffff transparent;
    }


    .cart .dropcart-item {
        text-align: center;
        padding: 10px 15px;
        background: white;
    }

    .cart .dropdown:hover .dropdown-menu {
        display: block;
    }

    #navbarNav ul li {
        font-size: 18px;
        margin-left: 40px;
    }

    #navbarNav ul li:hover .nav-link, .active .nav-link {
        border-bottom: 5px solid #28a745;
    }

    #navbarNav ul li:hover .nav-link, #navbarNav .navbar-nav .active .nav-link {
        color: #28a745;
    }

    .nav-header {
        padding: 0;
    }

    .nav-main {
        background-color: #B57949;
    }

    .navbar-light .navbar-nav .nav-link {
        color: #ffffff;
    }

    /*.bg-breadcrumb{*/
    /*    background: #f3f3f3;*/

    /*}*/

    #bread-bg {
        background-color: #2c9700;
    }

    .breadcrumb {
        background-color: #2c9700;
    }

    .breadcrumb .disabled-link {
        color: #c5c5c5;
        pointer-events: none;
        cursor: default;
    }

    .breadcrumb-item a {
        color: #ffffff;
    }


    --Footer
    #footer-main {

    }

    #footer-main {
        background-color: #F6F6F6;
        padding-top: 70px;
        padding-bottom: 0;
    }

    .footer__about {
        margin-bottom: 30px;
        margin: 0 50px;
    }

    .footer__about ul li {
        font-size: 16px;
        color: #1c1c1c;
        line-height: 36px;
        list-style: none;
    }

    .footer__about__logo {
        margin-bottom: 15px;
    }

    .footer__about__logo a {
        display: inline-block;
    }

    .footer__widget {
        margin-bottom: 30px;
        padding-left: 0;
        overflow: hidden;
    }

    .footer__widget h5 {
        position: relative;
        font-weight: 500;
        margin-bottom: 15px;
    }

    .footer__widget h5:before {
        content: '';
        position: absolute;
        bottom: -5px;
        left: 0;
        width: 50px;
        height: 2px;
        background: var(--main-color);
    }

    .footer__widget ul {
        width: 50%;
        float: left;
    }

    .footer__widget ul li {
        list-style: none;
    }

    .footer__contact ul {
        list-style-type: none;
    }

    .footer__contact ul h5 {
        position: relative;
        font-weight: 500;
        margin-bottom: 15px;
    }

    .footer__contact ul h5:before {
        content: '';
        position: absolute;
        bottom: -5px;
        left: 0;
        width: 50px;
        height: 2px;
        background: var(--main-color);
    }

    .footer__widget ul li a {
        color: #1c1c1c;
        font-size: 14px;
        line-height: 32px;
    }

    .footer__widget p {
        font-size: 14px;
        color: #1c1c1c;
        margin-bottom: 30px;
    }

    .footer__widget form {
        position: relative;
        margin-bottom: 30px;
    }

    .footer__widget form input {
        width: 70%;
        font-size: 16px;
        padding-left: 10px;
        color: black;
        height: 30px;
        border: 5px solid white;
        width: 66%;
    }

    .footer__widget form input::placeholder {
        color: #1c1c1c;
    }

    .footer__widget form button {
        position: absolute;
        background-color: var(--main-color);
        right: 0;
        top: 0;
        padding: 0 26px;
        height: 30px;

    }

    .footer__widget .footer__widget__social a {
        display: inline-block;
        height: 41px;
        width: 41px;
        font-size: 16px;
        color: #404040;
        border: 1px solid #ededed;
        border-radius: 50%;
        line-height: 38px;
        text-align: center;
        background: gray;
        -webkit-transition: all, 0.3s;
        -moz-transition: all, 0.3s;
        -ms-transition: all, 0.3s;
        -o-transition: all, 0.3s;
        transition: all, 0.3s;
        margin-right: 10px;
    }

    .footer__widget .footer__widget__social a i {
        margin-right: 0;
        margin-top: 10px;
    }

    .footer__widget .footer__widget__social a {
        background: var(--main-color);
        color: #ffffff;
        border-color: var(--main-color);
    }

    .footer__copyright {
        border-top: 1px solid gray;
        padding: 15px 0;
        overflow: hidden;
        margin-top: 20px;
        text-align: center;
    }

    .footer__copyright__text {
        font-size: 14px;
        color: #1c1c1c;
        /* float: left; */
        line-height: 25px;
    }


    .footer__copyright__payment {
        float: right;
    }

    --Menu
    #menu {
    }

    #menu .menu-title {
        background-color: var(--main-color);
        color: #ffffff;
        font-weight: 700;
        font-size: 18px;
        padding: 10px 0 10px 15px;
        cursor: pointer;
        text-transform: uppercase;
    }

    #menu .menu-drop {
        position: relative;
        margin-top: 0;
        left: 0;
        width: 100%;
        padding: 0;
        background: #fff;
        border: 1px solid #ddd;
        border-top: none;
        z-index: 1;
    }

    #menu .menu-item {
        list-style: none;
        border-bottom: 1px solid #dddddd;
        padding: 5px 15px;
        position: relative;
    }

    #menu .menu-drop .menu-item:last-child {
        border: none;
    }

    #menu .menu-drop .menu-item a {
        color: #333333;
    }

    #menu .menu-drop .menu-item .menu-arrow:after {
        content: '';
        position: absolute;
        right: 0;
        margin-top: -3px;
        height: 0;
        width: 0;
        border: 5px solid transparent;
        border-top-color: #5f5a5a;
    }

    #menu > .menu-drop > .menu-item > .menu-arrow:after {
        margin-top: 6px;
        margin-right: 3px;
        border-color: transparent;
        border-left-color: rgba(51, 47, 47, .5);
    }

    #menu .menu-drop .menu-item:hover {
        background: rgba(245, 243, 243, 0.86);
    }

    #menu .menu-drop .menu-item a:hover {
        color: var(--main-color);
    }


    .menu-drop a {
        display: block;
        position: relative;
        padding: 0.55em 1em;
        text-decoration: none;
        zoom: 1;
    }

    .menu-drop {
        display: block;
    }

    .sub-menu {
        display: none;
    }

    #menu .menu-drop .menu-item:hover .sub-menu {
        display: block;
    }

    #menu .menu-drop .menu-item .sub-menu {
        background: #ffffff;
        padding: 0;
        position: absolute;
        right: -116px;
        z-index: 1;
        top: 0;
    }

    #cart-sidebar {
        padding: 8px 15px 0 15px;
        margin: 0px;
        max-height: 380px;
        overflow: scroll;
        display: block;
    }


    .item {
        border-bottom: 1px solid #eee;
        margin: 5px 0px 10px;
        overflow: hidden;
        padding: 0px 0px 10px 0px;
        background: transparent !Important;
    }

    .product-image {
        float: left;
    }

    .detail-item {
        margin-left: 92px;
    }

    .product-details {
        color: #333333;
        position: relative;
        text-align: left;
        padding-right: 20px;
    }

    .fa-remove, .fa-pencil {
        color: #999;
        font-size: 12px;
    }

    .fa-remove {
        position: absolute;
        right: 0px;
    }

    .product-name {
        margin: 0;
        width: 150px;
        line-height: 1;
        padding: 0 0 5px 0;
    }

    #header-top .product-details a {
        color: #C4946DFF !important;
    }

    .product-details-bottom .price {
        color: #C4946DFF;
        font-size: 12px;
        display: list-item;
        margin-bottom: 5px;
        margin-right: 5px;
        font-size: 16px;
        font-weight: bold;
        text-transform: uppercase;
    }

    .top-subtotal {
        color: #333333;
        font-size: 16px;
        font-weight: normal;
        padding: 12px 15px;
        text-align: left;
        text-transform: none;
        border-bottom: 1px #ddd solid;
        border-top: 1px #ddd solid;
    }

    .actions {
        padding: 15px;
        margin: 0;
        overflow: hidden;
        background: #f5f5f5;
        padding-top: 15px;
    }

    .actions .view-cart {
        background: #82cd47;
        color: #fff;
        font-size: 11px;
        padding: 8px 13px;
        font-family: 'Open Sans', sans-serif;
        text-align: left;
        cursor: pointer;
        text-decoration: none;
        float: left;
        transition: color 300ms ease-in-out 0s, background-color 300ms ease-in-out 0s, background-position 300ms ease-in-out 0s;
        border: 1px solid #fff;
        font-weight: bold;
        text-transform: uppercase;
    }

    .top-cart-content {
        display: none;
        width: 300px;
        position: absolute;
        top: 72px;
        background: #fff;
        padding: 0;
        text-align: left;
        box-shadow: 0 0 15px -5px rgb(0 0 0 / 40%);
        z-index: 10000;
    }

    .top-cart-content:before {
        content: '';
        position: absolute;
        top: -10px;
        right: 40px;
        width: 0;
        height: 0;
        border-style: solid;
        border-width: 0 7.5px 10px 7.5px;
        border-color: transparent transparent #ffffff transparent;
    }

    .actions .btn-checkout {
        background: #C4946DFF;
        color: #fff;
        font-size: 11px;
        padding: 8px 16px;
        font-family: 'Open Sans', sans-serif;
        text-align: left;
        cursor: pointer;
        text-decoration: none;
        float: right;
        transition: color 300ms ease-in-out 0s, background-color 300ms ease-in-out 0s, background-position 300ms ease-in-out 0s;
        border: 1px solid #fff;
        font-weight: bold;
        text-transform: uppercase;
    }









</style>
<header class="header">
    <%
        String uri = (String) request.getAttribute(RequestDispatcher.FORWARD_REQUEST_URI);
        String prmt = (String) request.getAttribute(RequestDispatcher.FORWARD_QUERY_STRING);
        prmt = (prmt == null) ? "" : prmt.replaceAll("&", "-");
        String url = uri + "?" + prmt;
        if (request.getSession().getAttribute("cart") == null) {
            request.getSession().setAttribute("cart", new Cart());
        }
    String user_name=(String)request.getParameter("user_name");
        String user_email=(String)request.getParameter("user_email");
    %>

    <div id="header-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 mt-2">
                    <div class="header-logo">
                        <a href="/LoadControl"><img src="../images/logocoffee.png" alt style="margin-left: 50px"></a>
                    </div>
                </div>
                <div class="col-lg-4 mt-2">
                    <div class="wrap">
                        <form action="search" class="search" method="post">
                            <input name="txt" type="text" class="searchTerm" placeholder="Bạn muốn tìm gì?">
                            <button type="submit" class="searchButton">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 mt-2">
                    <div class="header-right">
                        <c:set var="auth" value="${sessionScope.auth}"/>
                        <c:if test="${auth==null}">
                            <div class="sign">
                                <ul>
                                    <li><a href="login.jsp">Đăng nhập</a></li>
                                    <li><a href="#">/</a></li>
                                    <li><a href="signup.jsp">Đăng ký</a></li>
                                </ul>
                            </div>
                        </c:if>
                        <c:if test="${auth !=null}">
                            <div class="head-avt">
                                <ul>

                                    <li><a href="/UserProfile">Xin chào ${auth.name}</a></li>



                                    <li><a href="Logout">Đăng xuất</a></li>
                                </ul>
                            </div>
                        </c:if>
                        <a href="/ShoppingCart" class="cart">
                            <ul style="">
                                <li><i class="fa-solid fa-cart-shopping"></i></li>
                                <li>GIỎ HÀNG</li>
                                <li>${sessionScope.cart.quanity}</li>
                            </ul>
                            <c:if test="${sessionScope.cart.quanity == 0}">
                                <div class="drop-cart">
                                    <div class="dropcart-item">Không có sản phẩm nào.</div>
                                </div>
                            </c:if>
                        </a>
                        <c:if test="${sessionScope.cart.quanity != 0}">
                            <div class="top-cart-content">
                                <ul id="cart-sidebar" class="mini-products-list">
                                    <c:forEach items="${sessionScope.item}" var="i">
                                        <li class="item"><a href="detail?pid=${i.product.id}&idW=${i.weight.id}"
                                                            class="product-image"><img src="${i.getUrlPic()}"
                                                                                       width="80"></a>
                                            <div class="detail-item">
                                                <div class="product-details"><a href="javascript:void(0);"
                                                                                title="Xóa"
                                                                                onclick="Bizweb.removeItem(19391963)"
                                                                                class="fa fa-remove">&nbsp;</a>
                                                    <p class="product-name">
                                                        <a href="detail?pid=${i.product.id}&idW=${i.weight.id}">
                                                                ${i.product.name}
                                                        </a>
                                                    </p>
                                                </div>
                                                <div class="product-details-bottom"><span
                                                        class="price">${i.price}</span>
                                                    <span class="title-desc">Số lượng:</span>
                                                    <strong>${i.quanity}</strong>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                    <li>
                                        <div class="top-subtotal">Tổng cộng: <span
                                                class="price">${sessionScope.cart.total}</span>
                                        </div>
                                    </li>
                                    <li style="margin-left:-15px;margin-right:-15px;">
                                        <div class="actions">
                                            <button class="btn-checkout" type="button"
                                                    onclick="window.location.href='/CheckOut'">
                                                <span>Thanh toán</span></button>
                                            <button class="view-cart" type="button"
                                                    onclick="window.location.href='/ShoppingCart'"><span>Giỏ hàng</span>
                                            </button>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-main">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-9">

                    <div class="nav-header navbar navbar-expand-lg navbar-light">
                        <div class="collapse navbar-collapse " id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="/LoadControl">Trang chủ <span
                                            class="sr-only">(current)</span></a>
                                </li>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="aboutus.jsp">Giới thiệu</a>--%>
<%--                                </li>--%>
                                <li class="nav-item">
                                    <a class="nav-link" href="/ListProduct">Cửa hàng</a>
                                </li>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="news.jsp">Tin tức thực phẩm</a>--%>
<%--                                </li>--%>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.jsp">Liên hệ</a>
                                </li>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="DiscountControl">Ưu đãi</a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="NewProductControl">Mới</a>--%>
<%--                                </li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
