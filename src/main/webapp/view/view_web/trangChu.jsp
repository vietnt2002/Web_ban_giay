<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="jakarta.tags.functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> V - Sneaker </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- favicon
        ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="/temp_web/img/favicon.ico">

    <!-- Bootstrap CSS
        ============================================ -->
    <%--    <link rel="stylesheet" href="/temp_web/css/bootstrap.min.css">--%>
    <!-- Bootstrap CSS
        ============================================ -->
    <%--    <link rel="stylesheet" href="/temp_web/css/font-awesome.min.css">--%>
    <!-- owl.carousel CSS
        ============================================ -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <link rel="stylesheet" href="/temp_web/css/owl.carousel.css">
    <link rel="stylesheet" href="/temp_web/css/owl.theme.css">
    <link rel="stylesheet" href="/temp_web/css/owl.transitions.css">
    <!-- jquery-ui CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/css/jquery-ui.css">
    <!-- meanmenu CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/css/meanmenu.min.css">
    <!-- nivoslider CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/lib/css/nivo-slider.css">
    <link rel="stylesheet" href="/temp_web/lib/css/preview.css">
    <!-- animate CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/css/animate.css">
    <!-- magic CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/css/magic.css">
    <!-- normalize CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/css/normalize.css">
    <!-- main CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/css/main.css">
    <!-- style CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/style.css">
    <!-- responsive CSS
        ============================================ -->
    <link rel="stylesheet" href="/temp_web/css/responsive.css">
    <!-- modernizr JS
        ============================================ -->
    <script src="/temp_web/js/vendor/modernizr-2.8.3.min.js"></script>

</head>
<body>
<!-- Add your site or application content here -->
<!-- header area start -->
<header>
    <div class="top-link">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-md-offset-3 col-sm-9 hidden-xs">
                    <div class="call-support" style="margin-left: 305px">
                        <p>Gọi hỗ trợ miễn phí: <span> (+84) 123 456 789</span></p>
                    </div>
                </div>
                <div class="col-md-2" style="display: flex; align-items: center; position: relative">
                    <span style="position: absolute; right: -45px">Nguyễn Việt</span>
                </div>
                <div class="col-md-2 col-sm-3">
                    <div class="dashboard">
                        <div class="account-menu">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="bi bi-person" style="font-size: x-large"></i>
                                    </a>
                                    <ul>
                                        <li><a href="/store-customer/tai-khoan-cua-toi">Tài khoản của tôi</a></li>
                                        <li><a href="/store-customer/don-mua">Đơn mua</a></li>
                                        <li><a href="/store-customer/dang-nhap-view">Đăng nhập</a></li>
                                    </ul>
                                </li>
                                <li class="search">
                                    <a href="#">
                                        <i class="bi bi-search" style="font-size: 18px"></i>
                                    </a>
                                    <ul class="search">
                                        <li>
                                            <form action="#">
                                                <input type="text">
                                                <button type="submit"><i class="bi bi-search"></i></button>
                                            </form>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="cart-menu">
                            <ul>
                                <li><a href="#"> <i class="bi bi-cart" style="font-size: 20px"></i> <span
                                        style="background: red; font-weight: bold">2</span> </a>
                                    <div class="cart-info">
                                        <ul>
                                            <li>
                                                <div class="cart-img">
                                                    <img src="/temp_web/img/cart/1.png" alt="">
                                                </div>
                                                <div class="cart-details">
                                                    <a href="#">Fusce aliquam</a>
                                                    <p>1 x $174.00</p>
                                                </div>
                                                <div class="btn-edit"></div>
                                                <div class="btn-remove"></div>
                                            </li>
                                            <li>
                                                <div class="cart-img">
                                                    <img src="/temp_web/img/cart/2.png" alt="">
                                                </div>
                                                <div class="cart-details">
                                                    <a href="#">Fusce aliquam</a>
                                                    <p>1 x $777.00</p>
                                                </div>
                                                <div class="btn-edit"></div>
                                                <div class="btn-remove"></div>
                                            </li>
                                        </ul>
                                        <h3>Tổng tiền: <span> $951.00</span></h3>
                                        <a href="checkout.html" class="checkout">Thanh toán</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mainmenu-area product-items">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="logo">
                        <a href="index.html">
                            <img src="/temp_web/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="/store-customer/trang-chu">Trang chủ</a>
                                </li>
                                <li class="mega-footwear"><a href="" id="san-pham-view">Sản phẩm</a>
                                    <div class="mega-menu footwear">
                                                <span>
                                                    <a href="#">Footwear Man</a>
                                                </span>
                                        <span>
                                                    <a href="#">Footwear Womens</a>
                                                </span>
                                    </div>
                                </li>
                                <li><a href="/store-customer/gioi-thieu">Giới thiệu</a></li>
                                <li><a href="/store-customer/lien-he">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="mobile-menu">
                        <nav>
                            <ul>
                                <li><a href="/store-customer/trang-chu">Trang chủ</a>
                                </li>
                                <li><a href="shop.html">Sản phẩm</a>
                                    <ul>
                                        <li><a href="#">footwear men</a>

                                        </li>
                                        <li><a href="#">footwear women</a>

                                        </li>
                                    </ul>
                                </li>
                                <li><a href="/store-customer/gioi-thieu">Giới thiệu</a></li>
                                <li><a href="/store-customer/liein-he">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header area end -->
<!-- slider area start -->
<div class="slider-area home1">
    <div class="bend niceties preview-2">
        <div id="nivoslider" class="slides">
            <img src="/temp_web/img/slider/slider-1.jpg" alt="" title="#slider-direction-1"/>
            <img src="/temp_web/img/slider/slider-2.jpg" alt="" title="#slider-direction-2"/>
        </div>
        <!-- direction 1 -->
        <div id="slider-direction-1" class="t-cn slider-direction">
            <div class="slider-progress"></div>
            <div class="slider-content t-lfl s-tb slider-1">
                <div class="title-container s-tb-c title-compress">
                    <h1 class="title1">Sale products</h1>
                    <h2 class="title2">nike Ari max 2015</h2>
                    <h3 class="title3">Lorem Ipsum is simply dummy text of the printing</h3>
                    <a href="#"><span>read more</span></a>
                </div>
            </div>
        </div>
        <!-- direction 2 -->
        <div id="slider-direction-2" class="slider-direction">
            <div class="slider-progress"></div>
            <div class="slider-content t-lfl s-tb slider-2">
                <div class="title-container s-tb-c">
                    <h1 class="title1">Sale products</h1>
                    <h2 class="title2">GET UP TO 50% SALE</h2>
                    <h3 class="title3">Lorem Ipsum is simply dummy text of the printing</h3>
                    <a href="#"><span>read more</span></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider area end -->
<!-- banner area start -->
<div class="banner-area">
    <div class="single-banner">
        <div class="part-1">
            <div class="box-1 box">
                <h4>nike ari max 2015</h4>
                <h2>air superiority</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                <a href="#">shopping now</a>
            </div>
            <div class="box-2">
                <a href="#">
                    <img src="/temp_web/img/banner/banner-2.jpg" alt="">
                </a>
            </div>
        </div>
        <div class="part-2">
            <div class="search-box">
                <form action="#">
                    <input type="text">
                    <button type="submit">
                        <i class="fa fa-search"></i>
                    </button>
                </form>
            </div>
            <div class="box-3">
                <a href="#">
                    <img src="/temp_web/img/banner/banner-1.jpg" alt="">
                </a>
            </div>
            <div class="box-4 box">
                <h4>nike ari max 2015</h4>
                <h2>air superiority</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                <a href="#">shopping now</a>
            </div>
            <div class="box-5">
                <a href="#">
                    <img src="/temp_web/img/banner/banner-3.jpg" alt="">
                </a>
            </div>
            <div class="box-6">
                <a href="#">
                    <img src="/temp_web/img/banner/banner-4.jpg" alt="">
                </a>
            </div>
        </div>
    </div>
</div>
<!-- banner area end -->

<!-- products area start -->
<div class="product-main-items">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="location">
                    <ul>
                        <li><a href="/store-customer/trang-chu" title="go to homepage">Trang chủ<span>/</span></a></li>
                        <li><strong> Sản phẩm</strong></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-3">
                <div class="product-sidebar">
                    <div class="sidebar-title">
                        <h2 style="display: flex; align-items: center">
                            <i class="bi bi-list-nested" style="font-size: 25px; margin-right: 13px"></i>
                            Lựa chọn mua sắm
                        </h2>
                    </div>
                    <div class="single-sidebar">
                        <div class="single-sidebar-title">
                            <h3>Dòng sản phẩm</h3>
                        </div>
                        <div class="single-sidebar-content">
                            <ul>
                                <li><a href="#">Dresses (4)</a></li>
                                <li><a href="#">shoes (6)</a></li>
                                <li><a href="#">Handbags (1)</a></li>
                                <li><a href="#">Clothing (3)</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="single-sidebar">
                        <div class="single-sidebar-title">
                            <h3>Màu sắc</h3>
                        </div>
                        <div class="single-sidebar-content">
                            <ul>
                                <li><a href="#">Black (2)</a></li>
                                <li><a href="#">Blue (2)</a></li>
                                <li><a href="#">Green (4)</a></li>
                                <li><a href="#">Grey (2)</a></li>
                                <li><a href="#">Red (2)</a></li>
                                <li><a href="#">White (2)</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="single-sidebar">
                        <div class="single-sidebar-title">
                            <h3>Kích thước</h3>
                        </div>
                        <div class="single-sidebar-content">
                            <ul>
                                <li><a href="#">Calvin Klein (2)</a></li>
                                <li><a href="#">Diesel (2)</a></li>
                                <li><a href="#">option value (1)</a></li>
                                <li><a href="#">Polo (2)</a></li>
                                <li><a href="#">store view (4)</a></li>
                                <li><a href="#">Tommy Hilfiger (2)</a></li>
                                <li><a href="#">will be used (1)</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="single-sidebar price">
                        <div class="single-sidebar-title">
                            <h3>Đơn giá</h3>
                        </div>
                        <div class="single-sidebar-content">
                            <div class="price-range">
                                <div class="price-filter">
                                    <div id="slider-range"></div>
                                    <div class="price-slider-amount">
                                        <input type="text" id="amount" name="price" placeholder="Add Your Price"/>
                                    </div>
                                </div>
                                <button type="submit"><span>Tìm kiếm</span></button>
                            </div>
                        </div>
                    </div>
                    <div class="banner-left">
                        <a href="#">
                            <img src="/temp_web/img/product/banner_left.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>


            <%--     Hiển thí sản phẩm       --%>
            <div class="col-sm-9">
                <div class="product-bar">
                    <div class="sort-by">
                        <label>Sort By</label>
                        <select name="sort">
                            <option value="#" selected>Position</option>
                            <option value="#">Name</option>
                            <option value="#">Price</option>
                        </select>
                        <a href="#" title="Set Descending Direction">
                            <img src="/temp_web/img/product/i_asc_arrow.gif" alt="">
                        </a>
                    </div>
                    <div class="limit-product">
                        <label>Show</label>
                        <select name="show">
                            <option value="#" selected>9</option>
                            <option value="#">12</option>
                            <option value="#">24</option>
                            <option value="#">36</option>
                        </select>
                        per page
                    </div>
                </div>


                <div class="row">
                    <div class="col-4">
                        <div class="single-product">
                            <div class="level-pro-new">
                                <span>new</span>
                            </div>
                            <div class="product-img">
                                <a href="/store-customer/chi-tiet-san-pham" style="background: rgba(80, 78, 78, 0.1)">
                                    <img src="/temp_web/img/product/25.png" alt="" class="primary-img">
                                    <img src="/temp_web/img/product/26.png" alt="" class="secondary-img">
                                </a>
                            </div>
                            <div class="product-name text-center">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating text-center">
                                <span class="old-price">$700.00</span>
                                <span>$800.00</span>
                            </div>
                            <div class="actions">
                                <button type="submit" class="cart-btn" title="Add to cart">Chi tiết sản phẩm</button>
                                <ul class="add-to-link">
                                    <li>
                                        <a class="modal-view" data-target="#productModal" data-toggle="modal" href="#">
                                            <i class="bi bi-eye-fill"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">
                        <div class="single-product">
                            <div class="level-pro-new">
                                <span>new</span>
                            </div>
                            <div class="product-img">
                                <a href="single-product.html">
                                    <img src="/temp_web/img/product/25.png" alt="" class="primary-img">
                                    <img src="/temp_web/img/product/26.png" alt="" class="secondary-img">
                                </a>
                            </div>
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span class="old-price">$700.00</span>
                                <span>$800.00</span>
                                <div class="ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                            </div>
                            <div class="actions">
                                <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                                <ul class="add-to-link">
                                    <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                            class="fa fa-search"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">
                        <div class="single-product">
                            <div class="level-pro-new">
                                <span>new</span>
                            </div>
                            <div class="product-img">
                                <a href="single-product.html">
                                    <img src="/temp_web/img/product/25.png" alt="" class="primary-img">
                                    <img src="/temp_web/img/product/26.png" alt="" class="secondary-img">
                                </a>
                            </div>
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span class="old-price">$700.00</span>
                                <span>$800.00</span>
                                <div class="ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                            </div>
                            <div class="actions">
                                <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                                <ul class="add-to-link">
                                    <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                            class="fa fa-search"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">
                        <div class="single-product">
                            <div class="level-pro-new">
                                <span>new</span>
                            </div>
                            <div class="product-img">
                                <a href="single-product.html">
                                    <img src="/temp_web/img/product/25.png" alt="" class="primary-img">
                                    <img src="/temp_web/img/product/26.png" alt="" class="secondary-img">
                                </a>
                            </div>
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span class="old-price">$700.00</span>
                                <span>$800.00</span>
                                <div class="ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                            </div>
                            <div class="actions">
                                <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                                <ul class="add-to-link">
                                    <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                            class="fa fa-search"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">
                        <div class="single-product">
                            <div class="level-pro-new">
                                <span>new</span>
                            </div>
                            <div class="product-img">
                                <a href="single-product.html">
                                    <img src="/temp_web/img/product/25.png" alt="" class="primary-img">
                                    <img src="/temp_web/img/product/26.png" alt="" class="secondary-img">
                                </a>
                            </div>
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span class="old-price">$700.00</span>
                                <span>$800.00</span>
                                <div class="ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                            </div>
                            <div class="actions">
                                <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                                <ul class="add-to-link">
                                    <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                            class="fa fa-search"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">
                        <div class="single-product">
                            <div class="level-pro-new">
                                <span>new</span>
                            </div>
                            <div class="product-img">
                                <a href="single-product.html">
                                    <img src="/temp_web/img/product/25.png" alt="" class="primary-img">
                                    <img src="/temp_web/img/product/26.png" alt="" class="secondary-img">
                                </a>
                            </div>
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span class="old-price">$700.00</span>
                                <span>$800.00</span>
                                <div class="ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                            </div>
                            <div class="actions">
                                <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                                <ul class="add-to-link">
                                    <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                            class="fa fa-search"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                    <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="toolbar-bottom">
                            <ul>
                                <li><span>Pages:</span></li>
                                <li class="current"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#"> <img src="/temp_web/img/product/pager_arrow_right.gif" alt=""> </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- products area end -->

<!-- another banner area start -->
<div class="another-banner-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="big-banner">
                    <a href="#">
                        <img src="/temp_web/img/banner/banner-10.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- another banner area end -->
<!-- new products area start -->
<div class="new-products-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h2>NEW PRODUCTS</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="new-product-slider">
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="level-pro-new">
                            <span>new</span>
                        </div>
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/25.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/26.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-name">
                            <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                        </div>
                        <div class="price-rating">
                            <span class="old-price">$700.00</span>
                            <span>$800.00</span>
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                        </div>
                        <div class="actions">
                            <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                            <ul class="add-to-link">
                                <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                        class="fa fa-search"></i></a></li>
                                <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="level-pro-sale">
                            <span>sale</span>
                        </div>
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/3.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/4.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-name">
                            <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                        </div>
                        <div class="price-rating">
                            <span class="old-price">$700.00</span>
                            <span>$800.00</span>
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                        </div>
                        <div class="actions">
                            <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                            <ul class="add-to-link">
                                <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                        class="fa fa-search"></i></a></li>
                                <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="level-pro-sale">
                            <span>sale</span>
                        </div>
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/2.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/8.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-name">
                            <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                        </div>
                        <div class="price-rating">
                            <span class="old-price">$700.00</span>
                            <span>$800.00</span>
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                        </div>
                        <div class="actions">
                            <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                            <ul class="add-to-link">
                                <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                        class="fa fa-search"></i></a></li>
                                <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="level-pro-sale">
                            <span>sale</span>
                        </div>
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/1.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/2.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-name">
                            <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                        </div>
                        <div class="price-rating">
                            <span class="old-price">$700.00</span>
                            <span>$800.00</span>
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                        </div>
                        <div class="actions">
                            <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                            <ul class="add-to-link">
                                <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                        class="fa fa-search"></i></a></li>
                                <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/17.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/18.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-name">
                            <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                        </div>
                        <div class="price-rating">
                            <span class="old-price">$700.00</span>
                            <span>$800.00</span>
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                        </div>
                        <div class="actions">
                            <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                            <ul class="add-to-link">
                                <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                        class="fa fa-search"></i></a></li>
                                <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="level-pro-new">
                            <span>new</span>
                        </div>
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/19.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/20.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-name">
                            <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                        </div>
                        <div class="price-rating">
                            <span class="old-price">$700.00</span>
                            <span>$800.00</span>
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                        </div>
                        <div class="actions">
                            <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                            <ul class="add-to-link">
                                <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                        class="fa fa-search"></i></a></li>
                                <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="level-pro-sale">
                            <span>sale</span>
                        </div>
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/21.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/22.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-name">
                            <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                        </div>
                        <div class="price-rating">
                            <span class="old-price">$700.00</span>
                            <span>$800.00</span>
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                        </div>
                        <div class="actions">
                            <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                            <ul class="add-to-link">
                                <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                        class="fa fa-search"></i></a></li>
                                <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/23.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/24.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-name">
                            <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                        </div>
                        <div class="price-rating">
                            <span class="old-price">$700.00</span>
                            <span>$800.00</span>
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                        </div>
                        <div class="actions">
                            <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                            <ul class="add-to-link">
                                <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i
                                        class="fa fa-search"></i></a></li>
                                <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- new products area end -->


<!-- newsleter area start -->
<div class="newsleter-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="newsleter">
                    <h3>newsletter</h3>
                    <p>Subscribe to the james mailing list to receive updates on new arrivals, special offers and other
                        discount information.</p>
                    <div class="Subscribe">
                        <form action="#">
                            <input type="text" title="Sign up">
                            <button type="submit" title="Subscribe">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="follow">
                    <h3>follow</h3>
                    <p>Subscribe to the james mailing list to receive updates on new arrivals, special offers and other
                        discount information.</p>
                    <ul class="follow-link">
                        <li><a href="#"> <i class="fa fa-facebook"></i> </a></li>
                        <li><a href="#"> <i class="fa fa-rss"></i> </a></li>
                        <li><a href="#"> <i class="fa fa-twitter"></i> </a></li>
                        <li><a href="#"> <i class="fa fa-google-plus"></i> </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- newsleter area end -->
<!-- footer top area start -->
<div class="footer-top-area">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4">
                <div class="footer-contact">
                    <img src="/temp_web/img/logo-white.png" alt="">
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod
                        tincidunt.</p>
                    <ul class="address">
                        <li>
                            <span class="fa fa-fax"></span>
                            (800) 123 456 789
                        </li>
                        <li>
                            <span class="fa fa-phone"></span>
                            (800) 123 456 789
                        </li>
                        <li>
                            <span class="fa fa-envelope-o"></span>
                            admin@bootexperts.com
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 hidden-sm">
                <div class="footer-tweets">
                    <div class="footer-title">
                        <h3>Latest tweets</h3>
                    </div>
                    <div class="twitter-feed">
                        <div class="twitter-article">
                            <div class="twitter-img">
                                <a href="#">
                                    <img src="/temp_web/img/twitter/twitter-1.png" alt="">
                                </a>
                            </div>
                            <div class="twitter-text">
                                <p>Raboda Fashion #Magento #Theme comes up with pure white and grey, which great show
                                    your products. Check it: </p>
                                <a href="#" class="back-to-top">https://t.co/iu0OYBwti8</a>
                                <div class="twitter-time">
                                    <a href="#">16h</a>
                                </div>
                            </div>
                        </div>
                        <div class="twitter-article">
                            <div class="twitter-img">
                                <a href="#">
                                    <img src="/temp_web/img/twitter/twitter-1.png" alt="">
                                </a>
                            </div>
                            <div class="twitter-text">
                                <p>Raboda Fashion #Magento #Theme comes up with pure white and grey, which great show
                                    your products. Check it: </p>
                                <a href="#">https://t.co/iu0OYBwti8</a>
                                <div class="twitter-time">
                                    <a href="#">16h</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-4">
                <div class="footer-support">
                    <div class="footer-title">
                        <h3>Our support</h3>
                    </div>
                    <div class="footer-menu">
                        <ul>
                            <li><a href="#">Sitemap</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Your Account</a></li>
                            <li><a href="#">Advanced Search</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-4">
                <div class="footer-info">
                    <div class="footer-title">
                        <h3>Our information</h3>
                    </div>
                    <div class="footer-menu">
                        <ul>
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="#">Customer Service</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Orders and Returns</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- footer top area end -->
<!-- footer area start -->
<footer class="footer-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="footer-copyright">
                    <p>Copyright &copy; 2016 <a href="#"> Bootexperts</a>. All Rights Reserved</p>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="payment-icon">
                    <img src="/temp_web/img/payment.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <a href="#" id="scrollUp"><i class="fa fa fa-arrow-up"></i></a>
</footer>
<!-- footer area end -->
<!-- quickview product start -->
<div id="quickview-wrapper">
    <!-- Modal -->
    <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="modal-product">
                        <div class="product-images">
                            <div class="main-image images">
                                <img alt="" src="/temp_web/img/product/3.png">
                            </div>
                        </div>

                        <div class="product-info">
                            <h1>Diam quis cursus</h1>
                            <div class="price-box">
                                <p class="price"><span class="special-price"><span class="amount">$132.00</span></span>
                                </p>
                            </div>
                            <a href="shop.html" class="see-all">See all features</a>
                            <div class="quick-add-to-cart">
                                <form method="post" class="cart">
                                    <div class="numbers-row">
                                        <input type="number" id="french-hens" value="1">
                                    </div>
                                    <button class="single_add_to_cart_button" type="submit">Add to cart</button>
                                </form>
                            </div>
                            <div class="quick-desc">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est
                                    tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis
                                    justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id
                                    nulla.</p>
                            </div>
                            <div class="share-post">
                                <div class="share-title">
                                    <h3>share this product</h3>
                                </div>
                                <div class="share-social">
                                    <ul>
                                        <li><a href="#"> <i class="fa fa-facebook"></i> </a></li>
                                        <li><a href="#"> <i class="fa fa-twitter"></i> </a></li>
                                        <li><a href="#"> <i class="fa fa-pinterest"></i> </a></li>
                                        <li><a href="#"> <i class="fa fa-google-plus"></i> </a></li>
                                        <li><a href="#"> <i class="fa fa-linkedin"></i> </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- quickview product start -->
<!-- jquery
        ============================================ -->
<script src="/temp_web/js/vendor/jquery-1.12.1.min.js"></script>
<!-- bootstrap JS
        ============================================ -->
<script src="/temp_web/js/bootstrap.min.js"></script>
<!-- wow JS
        ============================================ -->
<script src="/temp_web/js/wow.min.js"></script>
<!-- price-slider JS
        ============================================ -->
<script src="/temp_web/js/jquery-price-slider.js"></script>
<!-- nivoslider JS
        ============================================ -->
<script src="/temp_web/lib/js/jquery.nivo.slider.js"></script>
<script src="/temp_web/lib/home.js"></script>
<!-- meanmenu JS
        ============================================ -->
<script src="/temp_web/js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS
        ============================================ -->
<script src="/temp_web/js/owl.carousel.min.js"></script>
<!-- elevatezoom JS
        ============================================ -->
<script src="/temp_web/js/jquery.elevatezoom.js"></script>
<!-- scrollUp JS
        ============================================ -->
<script src="/temp_web/js/jquery.scrollUp.min.js"></script>
<!-- plugins JS
        ============================================ -->
<script src="/temp_web/js/plugins.js"></script>
<!-- main JS
        ============================================ -->
<script src="/temp_web/js/main.js"></script>
</body>
</html>
