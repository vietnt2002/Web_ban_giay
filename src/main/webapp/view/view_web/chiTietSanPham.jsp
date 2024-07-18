<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="jakarta.tags.functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> V - Sneaker </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--  favicon  -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

    <!--  Google Fonts  -->
    <link href='../../../fonts.googleapis.com/cssc9f6.css?family=Norican' rel='stylesheet' type='text/css'>
    <link href='../../../fonts.googleapis.com/csse3e5.css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='../../../fonts.googleapis.com/css4c5c.css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!--  Bootstrap CSS  -->
    <link rel="stylesheet" href="/temp_web/css/bootstrap.min.css">
    <!--  Bootstrap CSS -->
    <link rel="stylesheet" href="/temp_web/css/font-awesome.min.css">
    <!--  owl.carousel CSS  -->
    <link rel="stylesheet" href="/temp_web/css/owl.carousel.css">
    <link rel="stylesheet" href="/temp_web/css/owl.theme.css">
    <link rel="stylesheet" href="/temp_web/css/owl.transitions.css">
    <!--  jquery-ui CSS  -->
    <link rel="stylesheet" href="/temp_web/css/jquery-ui.css">
    <!--  meanmenu CSS  -->
    <link rel="stylesheet" href="/temp_web/css/meanmenu.min.css">
    <!--  nivoslider CSS  -->
    <link rel="stylesheet" href="/temp_web/lib/css/nivo-slider.css">
    <link rel="stylesheet" href="/temp_web/lib/css/preview.css">
    <!--  animate CSS  -->
    <link rel="stylesheet" href="/temp_web/css/animate.css">
    <!--  magic CSS  -->
    <link rel="stylesheet" href="/temp_web/css/magic.css">
    <!--  normalize CSS  -->
    <link rel="stylesheet" href="/temp_web/css/normalize.css">
    <!--  main CSS  -->
    <link rel="stylesheet" href="/temp_web/css/main.css">
    <!--  style CSS  -->
    <link rel="stylesheet" href="/temp_web/style.css">
    <!--  responsive CSS  -->
    <link rel="stylesheet" href="/temp_web/css/responsive.css">
    <!--  modernizr JS  -->
    <script src="/temp_web/js/vendor/modernizr-2.8.3.min.js"></script>
    <%--  Bootstrap icon  --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- SweetAlert2 JS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<!-- header area start -->
<header>
    <div class="top-link">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-md-offset-3 col-sm-9 hidden-xs">
                    <div class="call-support" style="display: flex">
                        <p>Gọi hỗ trợ miễn phí: <span> (+84) 123 456 789</span></p>
                        <p style="position: absolute; right: 0px; font-size: 15px">Xin chào: ${khachHang.hoTen}</p>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3">
                    <div class="dashboard">
                        <div class="account-menu">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="bi bi-person" style="font-size: 20px"></i>
                                    </a>
                                    <ul>
                                        <c:choose>
                                            <c:when test="${empty sessionScope.khachHang}">
                                                <li><a style="font-weight: bold;" href="/store-customer/dang-nhap-view">Đăng nhập</a></li>
                                                <li><a style="font-weight: bold;" href="/store-customer/dang-ky-view">Đăng ký</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><a href="/store-customer/tai-khoan-cua-toi">Tài khoản của tôi</a>
                                                </li>
                                                <li><a href="/store-customer/don-mua">Đơn mua</a></li>
                                                <li><a id="dang-xuat" href="/store-customer/dang-xuat">Đăng xuất</a></li>
                                            </c:otherwise>
                                        </c:choose>
                                    </ul>
                                </li>
                                <li class="search">
                                    <a href="#">
                                        <i class="fa fa-search"></i>
                                    </a>
                                    <ul class="search">
                                        <li>
                                            <form action="#">
                                                <input type="text">
                                                <button type="submit"><i class="fa fa-search"></i></button>
                                            </form>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="cart-menu">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="bi bi-cart2" style="font-size: 19px"></i> <span
                                            style="background: red; font-weight: bold">2</span>
                                    </a>
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
                                        <h3>Subtotal: <span> $951.00</span></h3>
                                        <a href="/store-customer/thanh-toan-view" class="checkout">Thanh toán</a>
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
                                <li class="mega-footwear"><a href="shop.html">Sản phẩm</a>
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
                                <li><a href="/store-customer/lien-he">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header area end -->
<!-- single product area start -->
<div class="Single-product-location home2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="location">
                    <ul>
                        <li><a href="/store-customer/trang-chu" title="go to homepage">Trang chủ<span>/</span></a>  </li>
                        <li><strong> Chi tiết sản phẩm</strong></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- single product area end -->
<!-- single product details start -->
<div class="single-product-details">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="container-fluid">
                    <div id="my-pics" class="carousel slide" data-ride="carousel" style="max-width: 100%;margin:auto;">
                        <ol class="carousel-indicators">
                            <li data-target="#my-pics" data-slide-to="0" class="active"></li>
                            <li data-target="#my-pics" data-slide-to="1"></li>
                            <li data-target="#my-pics" data-slide-to="2"></li>
                            <li data-target="#my-pics" data-slide-to="3"></li>
                        </ol>

                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img id="hinhAnh1" src="/image_product/${chiTietSanPham.hinhAnh1}" alt="Sunset over beach">
                            </div>

                            <div class="item">
                                <img id="hinhAnh2" src="/image_product/${chiTietSanPham.hinhAnh2}" alt="Rob Roy Glacier">
                            </div>

                            <div class="item">
                                <img id="hinhAnh3" src="/image_product/${chiTietSanPham.hinhAnh3}" alt="Longtail boats at Phi Phi">
                            </div>

                            <div class="item">
                                <img id="hinhAnh4" src="/image_product/${chiTietSanPham.hinhAnh4}" alt="Longtail boats at Phi Phi">
                            </div>
                        </div>

                        <a class="left carousel-control" href="#my-pics" role="button" data-slide="prev" style="background-image: none">
                            <span class="icon-prev" aria-hidden="true" style="display: flex; justify-content: center; align-items: center; font-size: 55px"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#my-pics" role="button" data-slide="next" style="background-image: none">
                            <span class="icon-next" aria-hidden="true" style="display: flex; justify-content: center; align-items: center; font-size: 55px"></span>
                            <span class="sr-only">Next</span>
                        </a>

                    </div>

                </div>
            </div>
            <div class="col-sm-6">
                <div class="single-product-details">
                    <a href="#" class="product-name">${chiTietSanPham.tenSP} - ${chiTietSanPham.maSP}</a>
                    <div class="item-price">
                        <span id="giaBan"><fmt:formatNumber value="${chiTietSanPham.giaBan}" type="currency" currencySymbol="đ" groupingUsed="true"/> </span>
                    </div>
                    <div class="single-product-info">
                        <p> ${chiTietSanPham.moTa} </p>
                    </div>
                    <div class="select-catagory">
                        <div class="color-select">
                            <label class="required">
                                <em>*</em> Màu sắc
                            </label>
                            <div class="input-box" style="display: flex">
                                <c:forEach varStatus="i" items="${listMauSac}" var="mauSac">
                                    <div class="form-check form-check-inline" style="margin-right: 15px">
                                        <input class="form-check-input" onchange="onchangeByMauSac('${mauSac.tenMS}')" type="radio" name="mauSac" id="${mauSac.idMS}" value="${mauSac.tenMS}" <c:if test="${i.index==0}">checked</c:if>>
                                        <label class="form-check-label" for="${mauSac.idMS}">${mauSac.tenMS}</label>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="size-select">
                            <label class="required">
                                <em>*</em> Kích thước
                            </label>
                            <div class="input-box" style="display: flex">
                                <c:forEach varStatus="i" items="${listKichThuoc}" var="kichThuoc">
                                    <div class="form-check form-check-inline kichThuocOption" style="margin-right: 15px">
                                        <input class="form-check-input" onchange="onchangeByKichThuoc('${kichThuoc.tenKT}')" type="radio" name="kichThuoc" id="${kichThuoc.idKT}" value="${kichThuoc.tenKT}" <c:if test="${i.index==0}">checked</c:if>>
                                        <label class="form-check-label" for="${kichThuoc.idKT}">${kichThuoc.tenKT}</label>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="soLuongTon" style="margin-top: 24px">
                            <em style="color: red">*</em>
                            <span style="font-size: 16px; margin-right: 10px">Số lượng tồn: </span>
                            <span style="font-weight: bold" id="soLuongTon">${chiTietSanPham.soLuong}</span>
                        </div>
                    </div>
                    <div class="cart-item">
                        <div class="price-box" style="display: flex">
                            <span style="margin-right: 20px">Tổng tiền: </span>
                            <span id="tongTien"> <fmt:formatNumber value="${chiTietSanPham.giaBan}" type="currency" currencySymbol="đ" groupingUsed="true"/> </span>
                        </div>
                        <div class="single-cart">
                            <div class="cart-plus-minus">
                                <label>Qty: </label>
                                <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1">
                            </div>
                            <button class="cart-btn">Thêm giỏ hàng</button>
                            <a href="/store-customer/trang-chu"><button class="huy-btn">Hủy</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- single product details end -->

<!-- jQuery library -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<!-- Initialize Bootstrap functionality -->
<script>
    // Initialize tooltip component
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

    // Initialize popover component
    $(function () {
        $('[data-toggle="popover"]').popover()
    })
</script>


<!-- related product area start-->
<div class="related-product home2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-title">
                    <h2>related products</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="related-slider">
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/25.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/26.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-price">
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span>$170.00</span>
                            </div>
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
                        <div class="product-price">
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span>$170.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/21.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/22.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-price">
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span>$170.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/19.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/20.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-price">
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span>$170.00</span>
                            </div>
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
                        <div class="product-price">
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span>$170.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/15.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/16.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-price">
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span>$170.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/13.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/14.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-price">
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span>$170.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="single-product.html">
                                <img src="/temp_web/img/product/11.png" alt="" class="primary-img">
                                <img src="/temp_web/img/product/12.png" alt="" class="secondary-img">
                            </a>
                        </div>
                        <div class="product-price">
                            <div class="product-name">
                                <a href="single-product.html" title="Fusce aliquam">Fusce aliquam</a>
                            </div>
                            <div class="price-rating">
                                <span>$170.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- related product area end-->
<!-- footer top area start -->
<div class="footer-top-area">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4">
                <div class="footer-contact">
                    <img src="/temp_web/img/logo-white.png" alt="">
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
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
                                <p>Raboda Fashion #Magento #Theme comes up with pure white and grey, which great show your products. Check it: </p>
                                <a href="#">https://t.co/iu0OYBwti8</a>
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
                                <p>Raboda Fashion #Magento #Theme comes up with pure white and grey, which great show your products. Check it: </p>
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
<!-- footer cuối -->
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
<!--          footer             -->

<!--  jquery  -->
<script src="/temp_web/js/vendor/jquery-1.12.1.min.js"></script>
<!-- bootstrap JS  -->
<script src="/temp_web/js/bootstrap.min.js"></script>
<!--  wow JS  -->
<script src="/temp_web/js/wow.min.js"></script>
<!-- price-slider JS -->
<script src="/temp_web/js/jquery-price-slider.js"></script>
<!--  nivoslider JS  -->
<script src="/temp_web/lib/js/jquery.nivo.slider.js"></script>
<script src="/temp_web/lib/home.js"></script>
<!--  meanmenu JS  -->
<script src="/temp_web/js/jquery.meanmenu.js"></script>
<!--  owl.carousel JS  -->
<script src="/temp_web/js/owl.carousel.min.js"></script>
<!--  elevatezoom JS  -->
<script src="/temp_web/js/jquery.elevatezoom.js"></script>
<!--  scrollUp JS  -->
<script src="/temp_web/js/jquery.scrollUp.min.js"></script>
<!--  plugins JS  -->
<script src="/temp_web/js/plugins.js"></script>
<!--  main JS   -->
<script src="/temp_web/js/main.js"></script>
</body>

<%--        js       --%>
<script>
    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });

    <c:if test="${not empty error}">
    Toast.fire({
        icon: "error",
        title: "${error}"
    });
    </c:if>

    <c:if test="${not empty success}">
    Toast.fire({
        icon: "success",
        title: "${success}"
    });
    </c:if>
</script>
<script>
    //Đăng xuất
    document.getElementById('dang-xuat').addEventListener('click', function (event) {
        event.preventDefault();

        Swal.fire({
            title: "Bạn có chắc chắn muốn đăng xuất không?",
            text: "Bạn sẽ không thể hoàn tác hành động này!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            cancelButtonText: "Hủy",
            confirmButtonText: "Đăng xuất!"
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire({
                    title: "Đã đăng xuất!",
                    text: "Bạn đã đăng xuất thành công.",
                    icon: "success"
                }).then(() => {
                    // Điều hướng tới URL đăng xuất sau khi người dùng xác nhận
                    // window.location.href = "/store-customer/trang-chu";
                    window.location.href = document.getElementById('dang-xuat').getAttribute('href');
                });
            }
        });
    });
</script>

<script>
    var listMauSize = [];
    <c:forEach varStatus="i" items="${listMauSize}" var="mauSize">
    var MauSize = {};
    MauSize.tenMS = '${mauSize.tenMS}'
    MauSize.tenKT = '${mauSize.tenKT}'
    MauSize.soLuong = '${mauSize.soLuong}'
    MauSize.hinhAnh1 = '${mauSize.hinhAnh1}'
    MauSize.hinhAnh2 = '${mauSize.hinhAnh2}'
    MauSize.hinhAnh3 = '${mauSize.hinhAnh3}'
    MauSize.hinhAnh4 = '${mauSize.hinhAnh4}'
    listMauSize.push(MauSize);
    </c:forEach>
    console.log(listMauSize);

    //Chọn màu sắc theo hình ảnh hiển thị
    debugger
    listMauSac = document.getElementsByName("mauSac");
    listKichThuoc = document.getElementsByName("kichThuoc");
    tenKThuoc = listKichThuoc.item(0).value;
    var tenMauSacHienThi = "";
    var hinhAnhHienThi = "${chiTietSanPham.hinhAnh1}";
    listMauSize.forEach(mauSize => {
        if (mauSize.hinhAnh1 == hinhAnhHienThi && mauSize.tenKT == tenKThuoc){
            tenMauSacHienThi = mauSize.tenMS;
        }
    })
    for (var i=0; i<listMauSac.length; i++){
        if (listMauSac.item(i).value == tenMauSacHienThi){
            document.getElementsByName("mauSac").item(i).checked = true;
            break
        }
    }

    //Hiển thị số lượng tồn
    var tenMS = "";
    for (var i=0; i<listMauSac.length; i++){
        if (listMauSac.item(i).checked){
            tenMS = listMauSac.item(i).value;
            break
        }
    }
    var sl = 0;
    listMauSize.forEach(mauSize =>{
        if (mauSize.tenMS == tenMS && mauSize.tenKT == tenKThuoc){
            sl = mauSize.soLuong;
        }
    })
    if (sl < 0 || sl == null){
        sl = 0;
    }
    document.getElementById("soLuongTon").textContent = sl;
    //-------------------------------------------------------


    //Hiển thị số lượng tồn sản phẩm và kích thước theo màu sắc
    function onchangeByMauSac(tenMauSac){
        debugger
        tenKichThuoc = "";
        for (var i=0; i<listKichThuoc.length; i++){
            if (listKichThuoc.item(i).checked){
                tenKichThuoc = listKichThuoc.item(i).value;
                break
            }
        }

        getSoLuongHinhAnhByMauSacKichThuoc(tenMauSac, tenKichThuoc);
        filterKichThuocByMauSac(tenMauSac);
    }

    //Lấy ra số lượng và hình ảnh theo màu sắc và kích thước
    function getSoLuongHinhAnhByMauSacKichThuoc(tenMauSac, tenKichThuoc){
        var soLuong = 0;
        var hinhAnh1 = "";
        var hinhAnh2 = "";
        var hinhAnh3 = "";
        var hinhAnh4 = "";
        listMauSize.forEach(mauSize =>{
            if (mauSize.tenMS == tenMauSac && mauSize.tenKT == tenKichThuoc){
                soLuong = mauSize.soLuong;
                hinhAnh1 = mauSize.hinhAnh1;
                hinhAnh2 = mauSize.hinhAnh2;
                hinhAnh3 = mauSize.hinhAnh3;
                hinhAnh4 = mauSize.hinhAnh4;
            }
        })
        if (soLuong < 0 || soLuong == null){
            soLuong = 0;
        }
        document.getElementById("soLuongTon").textContent = soLuong;
        document.getElementById("hinhAnh1").src = "/image_product/"+hinhAnh1;
        document.getElementById("hinhAnh2").src = "/image_product/"+hinhAnh2;
        document.getElementById("hinhAnh3").src = "/image_product/"+hinhAnh3;
        document.getElementById("hinhAnh4").src = "/image_product/"+hinhAnh4;
    }

    // Lọc các tùy chọn kích thước dựa trên màu sắc
    function filterKichThuocByMauSac(tenMauSac) {
        var kichThuocOptions = document.querySelectorAll('.kichThuocOption');
        var currentCheckedInput = document.querySelector('input[name="kichThuoc"]:checked');
        var currentCheckedValue = currentCheckedInput ? currentCheckedInput.value : null;
        var isCurrentCheckedDisabled = true;
        kichThuocOptions.forEach(option => {
            var input = option.querySelector('input[name="kichThuoc"]');
            var isMatch = listMauSize.some(item => item.tenMS === tenMauSac && item.tenKT === input.value);
            input.disabled = !isMatch;
            if (input.value === currentCheckedValue && isMatch) {
                isCurrentCheckedDisabled = false;
            }
        });
        // Nếu không tìm thấy kích thước theo màu sắc thì sẽ check và hiển thị thằng đầu tiên
        var visibleOptions = Array.from(kichThuocOptions).filter(option => !option.querySelector('input[name="kichThuoc"]').disabled);
        if (isCurrentCheckedDisabled){
            if (visibleOptions.length > 0) {
                if (currentCheckedValue){
                    currentCheckedInput.checked = true;
                    getSoLuongHinhAnhByMauSacKichThuoc(tenMauSac, currentCheckedValue);
                }
                if (currentCheckedInput){
                    listKichThuoc.item(0).checked = true;
                    getSoLuongHinhAnhByMauSacKichThuoc(tenMauSac, listKichThuoc.item(0).value);
                }
            }
        }
    }

    //Hiển thị số lượng tồn sản phẩm theo kích thước
    function onchangeByKichThuoc(tenKichThuoc){
        tenMauSac = "";
        for (var i=0; i<listMauSac.length; i++){
            if (listMauSac.item(i).checked){
                tenMauSac = listMauSac.item(i).value;
                break
            }
        }

        var soLuong;
        listMauSize.forEach(mauSize => {
            if (mauSize.tenKT == tenKichThuoc && mauSize.tenMS == tenMauSac){
                soLuong = mauSize.soLuong;
            }
        })

        if (soLuong < 0 || soLuong == null){
            soLuong = 0;
        }
        document.getElementById("soLuongTon").textContent = soLuong;
    }
</script>
</html>

