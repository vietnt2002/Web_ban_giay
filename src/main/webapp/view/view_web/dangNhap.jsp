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

    <!-- favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/temp_web/img/favicon.ico">

    <!-- Google Fonts -->
    <link href='../../../fonts.googleapis.com/cssc9f6.css?family=Norican' rel='stylesheet' type='text/css'>
    <link href='../../../fonts.googleapis.com/csse3e5.css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='../../../fonts.googleapis.com/css4c5c.css?family=Open+Sans:400,300,600,700,800' rel='stylesheet'
          type='text/css'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/temp_web/css/bootstrap.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/temp_web/css/font-awesome.min.css">
    <!-- owl.carousel CSS -->
    <link rel="stylesheet" href="/temp_web/css/owl.carousel.css">
    <link rel="stylesheet" href="/temp_web/css/owl.theme.css">
    <link rel="stylesheet" href="/temp_web/css/owl.transitions.css">
    <!-- jquery-ui CSS -->
    <link rel="stylesheet" href="/temp_web/css/jquery-ui.css">
    <!-- meanmenu CSS -->
    <link rel="stylesheet" href="/temp_web/css/meanmenu.min.css">
    <!-- nivoslider CSS -->
    <link rel="stylesheet" href="/temp_web/lib/css/nivo-slider.css">
    <link rel="stylesheet" href="/temp_web/lib/css/preview.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="/temp_web/css/animate.css">
    <!-- magic CSS -->
    <link rel="stylesheet" href="/temp_web/css/magic.css">
    <!-- normalize CSS -->
    <link rel="stylesheet" href="/temp_web/css/normalize.css">
    <!-- main CSS -->
    <link rel="stylesheet" href="/temp_web/css/main.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="/temp_web/style.css">
    <!-- responsive CSS -->
    <link rel="stylesheet" href="/temp_web/css/responsive.css">
    <!-- modernizr JS -->
    <script src="/temp_web/js/vendor/modernizr-2.8.3.min.js"></script>

    <%--  Bootstrap icon  --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- SweetAlert2 JS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
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
                                                <li><a style="font-weight: bold;" href="/store-customer/dang-nhap-view">Đăng
                                                    nhập</a></li>
                                                <li><a style="font-weight: bold;" href="/store-customer/dang-ky-view">Đăng
                                                    ký</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><a href="/store-customer/tai-khoan-cua-toi">Tài khoản của tôi</a>
                                                </li>
                                                <li><a href="/store-customer/don-mua">Đơn mua</a></li>
                                                <li><a id="dang-xuat" href="/store-customer/dang-xuat">Đăng xuất</a>
                                                </li>
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
<!-- cart item area start -->
<div class="shopping-cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="location">
                    <ul>
                        <li><a href="/store-customer/trang-chu" title="go to homepage">Trang chủ<span>/</span></a></li>
                        <li><strong>Đăng nhập</strong></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="login-area">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <div class="login">
                    <div class="login-form-container">
                        <div class="login-text">
                            <h2>Đăng nhập</h2>
                        </div>
                        <div class="login-form">
                            <form method="post" action="/store-customer/dang-nhap" id="dangNhapForm">
                                <input type="text" id="taiKhoan" name="taiKhoan" placeholder="Tài khoản">
                                <div id="error-taiKhoan" style="color: red"></div>

                                <input type="password" id="matKhau" name="matKhau" placeholder="Mật khẩu"
                                       style="margin-top: 25px">
                                <div id="error-matKhau" style="color: red"></div>

                                <div style="float: right">
                                    <a href="#">Quên mật khẩu?</a>
                                </div>
                                <div class="button-box">
                                    <div class="login-toggle-btn">
                                        <input type="checkbox" id="remember">
                                        <label for="remember">Nhớ mật khẩu</label>
                                    </div>
                                    <div>
                                        <span style="float: right; padding-top: 20px">Bạn chưa có tài khoản?  <a
                                                style="color: red" id="dang-ky" href="/store-customer/dang-ky-view"> Đăng ký</a></span>
                                    </div>
                                    <button type="submit" class="default-btn">Đăng nhập</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

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
                            <li><a href="/store-customer/lien-he">Contact Us</a></li>
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
                            <li><a href="/store-customer/gioi-thieu">About Us</a></li>
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
<!-- jquery -->
<script src="/temp_web/js/vendor/jquery-1.12.1.min.js"></script>
<!-- bootstrap JS -->
<script src="/temp_web/js/bootstrap.min.js"></script>
<!-- wow JS -->
<script src="/temp_web/js/wow.min.js"></script>
<!-- price-slider JS -->
<script src="js/jquery-price-slider.js"></script>
<!-- nivoslider JS -->
<script src="/temp_web/lib/js/jquery.nivo.slider.js"></script>
<script src="/temp_web/lib/home.js"></script>
<!-- meanmenu JS -->
<script src="/temp_web/js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS -->
<script src="/temp_web/js/owl.carousel.min.js"></script>
<!-- elevatezoom JS -->
<script src="/temp_web/js/jquery.elevatezoom.js"></script>
<!-- scrollUp JS -->
<script src="/temp_web/js/jquery.scrollUp.min.js"></script>
<!-- plugins JS -->
<script src="/temp_web/js/plugins.js"></script>
<!-- main JS -->
<script src="/temp_web/js/main.js"></script>
</body>

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
    //Chuyển danh sách khách hàng java -> js
    var listKhachHang = [];
    <c:forEach varStatus="i" items="${ListKhachHang}" var="khachHang">
    var KhachHang = {};
    KhachHang.taiKhoan = '${khachHang.taiKhoan}';
    KhachHang.matKhau = '${khachHang.matKhau}';
    listKhachHang.push(KhachHang);
    </c:forEach>

    document.getElementById('dangNhapForm').addEventListener('submit', function (event) {
        event.preventDefault();
        const taiKhoan = document.getElementById('taiKhoan').value.trim();
        const matKhau = document.getElementById('matKhau').value.trim();

        let hasError = false;
        if (!taiKhoan) {
            document.getElementById('error-taiKhoan').textContent = 'Không được để trống tài khoản!';
            document.getElementById('taiKhoan').style.border = '1px solid red';
            hasError = true;
        } else {
            document.getElementById('error-taiKhoan').textContent = '';
            document.getElementById('taiKhoan').style.border = '';
        }

        if (!matKhau) {
            document.getElementById('error-matKhau').textContent = 'Không được để trống mật khẩu!';
            document.getElementById('matKhau').style.border = '1px solid red';
            hasError = true;
        } else {
            document.getElementById('error-matKhau').textContent = '';
            document.getElementById('matKhau').style.border = '';
        }

        if (hasError) {
            return;
        }


        if (listKhachHang.some(khachHang => khachHang.taiKhoan == taiKhoan)) {
            document.getElementById('error-taiKhoan').textContent = '';
            document.getElementById('taiKhoan').style.border = '';
            if (listKhachHang.some(khachHang => khachHang.taiKhoan == taiKhoan && khachHang.matKhau == matKhau)) {
                document.getElementById('error-matKhau').textContent = '';
                document.getElementById('matKhau').style.border = '';
                document.getElementById('dangNhapForm').submit();
            } else {
                document.getElementById('error-matKhau').textContent = 'Mật khẩu nhập vào không chính xác!';
                document.getElementById('matKhau').style.border = '1px solid red';
            }
        } else {
            document.getElementById('error-taiKhoan').textContent = 'Tài khoản không tồn tại!';
            document.getElementById('taiKhoan').style.border = '1px solid red';
        }
    });

    //Sự kiện khi input tài khoản có dữ liệu thì xóa báo lỗi
    document.getElementById("taiKhoan").addEventListener("blur", function () {
        var taiKhoan = document.getElementById("taiKhoan");
        if (taiKhoan.value.trim() !== "") {
            taiKhoan.style.border = "";
            document.getElementById("error-taiKhoan").textContent = "";
        }
    });

    //Sự kiện khi input mật khẩu có dữ liệu thì xóa báo lỗi
    document.getElementById("matKhau").addEventListener("blur", function () {
        var matKhau = document.getElementById("matKhau");
        if (matKhau.value.trim() !== "") {
            matKhau.style.border = "";
            document.getElementById("error-matKhau").textContent = "";
        }
    });
</script>

</html>

