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
                                        <li><a href="/store-customer/dang-nhap">Đăng nhập</a></li>
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


<!-- Chi tiết sản phẩm -->
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
                <div class="single-product-img tab-content">
                    <div class="single-pro-main-image tab-pane active" id="pro-large-img-1">
                        <a href="#"><img class="optima_zoom" src="/temp_web/img/product/7.png" data-zoom-image="/temp_web/img/product/7.png" alt="optima" style="width: 650px;position:absolute; left: 0px; left: 80px; top: 165px"/></a>
                    </div>
                    <div class="single-pro-main-image tab-pane" id="pro-large-img-2">
                        <a href="#"><img class="optima_zoom" src="/temp_web/img/product/2.png" data-zoom-image="/temp_web/img/product/2.png" alt="optima"/></a>
                    </div>
                    <div class="single-pro-main-image tab-pane" id="pro-large-img-3">
                        <a href="#"><img class="optima_zoom" src="/temp_web/img/product/8.png" data-zoom-image="/temp_web/img/product/8.png" alt="optima"/></a>
                    </div>
                    <div class="single-pro-main-image tab-pane" id="pro-large-img-4">
                        <a href="#"><img class="optima_zoom" src="/temp_web/img/product/1.png" data-zoom-image="/temp_web/img/product/1.png" alt="optima"/></a>
                    </div>
                    <div class="single-pro-main-image tab-pane" id="pro-large-img-5">
                        <a href="#"><img class="optima_zoom" src="/temp_web/img/product/9.png" data-zoom-image="/temp_web/img/product/9.png" alt="optima"/></a>
                    </div>
                </div>
                <div class="product-page-slider">
                    <div class="single-product-slider">
                        <a href="#pro-large-img-1" data-toggle="tab">
                            <img src="/temp_web/img/product/28.png" alt="">
                        </a>
                    </div>
                    <div class="single-product-slider">
                        <a href="#pro-large-img-2" data-toggle="tab">
                            <img src="/temp_web/img/product/30.png" alt="">
                        </a>
                    </div>
                    <div class="single-product-slider">
                        <a href="#pro-large-img-3" data-toggle="tab">
                            <img src="/temp_web/img/product/29.png" alt="">
                        </a>
                    </div>
                    <div class="single-product-slider">
                        <a href="#pro-large-img-4" data-toggle="tab">
                            <img src="/temp_web/img/product/31.png" alt="">
                        </a>
                    </div>
                    <div class="single-product-slider">
                        <a href="#pro-large-img-5" data-toggle="tab">
                            <img src="/temp_web/img/product/29.png" alt="">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="single-product-details">
                    <a href="#" class="product-name">Fusce aliquam</a>
                    <div class="list-product-info">
                        <div class="price-rating">
                            <div class="ratings">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                                <a href="#" class="review">1 Review(s)</a>
                                <a href="#" class="add-review">Add Your Review</a>
                            </div>
                        </div>
                    </div>
                    <div class="avalable">
                        <p>Availability:<span> In stock</span></p>
                    </div>
                    <div class="item-price">
                        <span>$800.00</span>
                    </div>
                    <div class="single-product-info">
                        <p>Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis. </p>
                        <div class="share">
                            <img src="/temp_web/img/product/share.png" alt="">
                        </div>
                    </div>
                    <div class="action">
                        <ul class="add-to-links">
                            <li>
                                <a href="#">
                                    <i class="fa fa-heart"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-refresh"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-envelope"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="select-catagory">
                        <div class="color-select">
                            <label class="required">
                                <em>*</em> Color
                            </label>
                            <div class="input-box">
                                <select id="select-1">
                                    <option value="">-- Please Select --</option>
                                    <option value="">black +$2.00</option>
                                    <option value="">blue +$1.00</option>
                                    <option value="">yellow +$1.00</option>
                                </select>
                            </div>
                        </div>
                        <div class="size-select">
                            <label class="required">
                                <em>*</em> Size
                            </label>
                            <div class="input-box">
                                <select id="select-2">
                                    <option value="">-- Please Select --</option>
                                    <option value="">L +$2.00</option>
                                    <option value="">M +$1.00</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="cart-item">
                        <div class="price-box">
                            <span>$170</span>
                        </div>
                        <div class="single-cart">
                            <div class="cart-plus-minus">
                                <label>Qty: </label>
                                <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1">
                            </div>
                            <button class="cart-btn">Thêm giỏ hàng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- single product details end -->
<!-- single product tab start -->
<div class="single-product-tab-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="single-product-tab">
                    <ul class="single-product-tab-navigation" role="tablist">
                        <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Product Description</a></li>
                        <li role="presentation"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">reviews</a></li>
                        <li role="presentation"><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">product tag</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content single-product-page">
                        <div role="tabpanel" class="tab-pane fade in active" id="tab1">
                            <div class="single-p-tab-content">
                                <p>Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis. </p>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab2">
                            <div class="single-p-tab-content">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="product-review">
                                            <p> <a href="#"> plaza</a> <span>Review by</span> plaza </p>
                                            <div class="product-rating-info">
                                                <p>value</p>
                                                <div class="ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                </div>
                                            </div>
                                            <div class="product-rating-info">
                                                <p>Quality</p>
                                                <div class="ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                </div>
                                            </div>
                                            <div class="product-rating-info">
                                                <p>Price</p>
                                                <div class="ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                </div>
                                            </div>
                                            <div class="review-date">
                                                <p>plaza <em> (Posted on 8/27/2015)</em></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="rate-product hidden-xs">
                                            <div class="rate-product-heading">
                                                <h3>You're reviewing: Fusce aliquam</h3>
                                                <h3>How do you rate this product? <em>*</em></h3>
                                            </div>
                                            <form action="#">
                                                <table class="product-review-table">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>1 star</th>
                                                        <th>2 star</th>
                                                        <th>3 star</th>
                                                        <th>4 star</th>
                                                        <th>5 star</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <th>Price</th>
                                                        <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Value</th>
                                                        <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Quality</th>
                                                        <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                        <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                                <ul class="form-list">
                                                    <li>
                                                        <label> nickname <em>*</em> </label>
                                                        <input type="text">
                                                    </li>
                                                    <li>
                                                        <label> Summary of Your Review <em>*</em> </label>
                                                        <input type="text">
                                                    </li>
                                                    <li>
                                                        <label> Review <em>*</em> </label>
                                                        <textarea cols="3" rows="5"></textarea>
                                                    </li>
                                                </ul>
                                                <button type="submit"> submit review</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab3">
                            <div class="single-p-tab-content">
                                <div class="add-tab-title">
                                    <p> add your tag </p>
                                </div>
                                <div class="add-tag">
                                    <form action="#">
                                        <input type="text">
                                        <button type="submit">add tags</button>
                                    </form>
                                </div>
                                <p class="tag-rules">Use spaces to separate tags. Use single quotes (') for phrases.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- single product tab end -->
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
<!-- Chi tiết sản phẩm -->


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
