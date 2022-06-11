<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/6268c39ed8.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid">
        <!-- navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand text-success logo" href="index.html">Shop</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                  <a class="nav-link" href="home"><i class="fa-solid fa-house"></i> Trang chủ</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="about"><i class="fa-solid fa-circle-info"></i> Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact"><i class="fa-solid fa-phone"></i> Liên hệ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa-solid fa-user"></i> Tài khoản
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="sign-in"><i class="fa-solid fa-right-to-bracket"></i> Đăng nhập</a>
                    <a class="dropdown-item" href="sign-up"><i class="fa-solid fa-user-plus"></i> Đăng ký</a>
                    <a class="dropdown-item" href="forgot"><i class="fa-solid fa-key"></i> Quên mật khẩu</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="sign-in"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
                    <a class="dropdown-item" href="change"><i class="fa-solid fa-rotate"></i> Đổi mật khẩu</a>
                    <a class="dropdown-item" href="profile"><i class="fa-solid fa-address-card"></i> Cập nhật hồ sơ</a>
                  </div>
                </li>
               </ul>
            </div>
        </nav>
        <!-- navbar -->

        <!-- star banner -->
        <section class="bg-success py-5">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-md-8 text-white">
                        <h1>Về chúng tôi</h1>
                        <p>
                            Công ty cổ phần đầu tư Shop là hệ thống cửa hàng bán lẻ điện thoại, laptop
                            với mạng lưới cửa hàng trải dài trên toàn quốc.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Close Banner -->
    
        <!-- Start Section -->
        <section class="container py-5">
            <div class="row text-center pt-5 pb-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Dịch vụ của chúng tôi</h1>
                </div>
            </div>
            <div class="row">
    
                <div class="col-md-6 col-lg-3 pb-5">
                    <div class="h-100 py-5 services-icon-wap shadow">
                        <div class="h1 text-success text-center"><i class="fa fa-truck fa-lg"></i></div>
                        <h2 class="h5 mt-4 text-center">Dịch vụ vận chuyển</h2>
                    </div>
                </div>
    
                <div class="col-md-6 col-lg-3 pb-5">
                    <div class="h-100 py-5 services-icon-wap shadow">
                        <div class="h1 text-success text-center"><i class="fas fa-exchange-alt"></i></div>
                        <h2 class="h5 mt-4 text-center">Vận chuyển & giao hàng</h2>
                    </div>
                </div>
    
                <div class="col-md-6 col-lg-3 pb-5">
                    <div class="h-100 py-5 services-icon-wap shadow">
                        <div class="h1 text-success text-center"><i class="fa fa-percent"></i></div>
                        <h2 class="h5 mt-4 text-center">Khuyến mãi</h2>
                    </div>
                </div>
    
                <div class="col-md-6 col-lg-3 pb-5">
                    <div class="h-100 py-5 services-icon-wap shadow">
                        <div class="h1 text-success text-center"><i class="fa fa-user"></i></div>
                        <h2 class="h5 mt-4 text-center">Dịch vụ 24 giờ</h2>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Section -->
    
        <!-- Start Brands -->
        <section class="bg-light py-5">
            <div class="container my-4">
                <div class="row text-center py-3">
                    <div class="col-lg-6 m-auto">
                        <h1 class="h1">Nhãn hiệu của chúng tôi</h1>
                    </div>
                    <div class="col-lg-9 m-auto tempaltemo-carousel">
                        <div class="row d-flex flex-row">
                            <!--Controls-->
                            <div class="col-1 align-self-center">
                                <a class="h1" href="#templatemo-slide-brand" role="button" data-bs-slide="prev">
                                    <i class="text-light fas fa-chevron-left"></i>
                                </a>
                            </div>
                            <!--End Controls-->
    
                            <!--Carousel Wrapper-->
                            <div class="col">
                                <div class="carousel slide carousel-multi-item pt-2 pt-md-0" id="templatemo-slide-brand" data-bs-ride="carousel">
                                    <!--Slides-->
                                    <div class="carousel-inner product-links-wap" role="listbox">
    
                                        <!--First slide-->
                                        <div class="carousel-item active">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="images/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="images/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="images/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="images/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End First slide-->
    
                                        <!--Second slide-->
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Second slide-->
    
                                        <!--Third slide-->
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Third slide-->
    
                                    </div>
                                    <!--End Slides-->
                                </div>
                            </div>
                            <!--End Carousel Wrapper-->
    
                            <!--Controls-->
                            <div class="col-1 align-self-center">
                                <a class="h1" href="#templatemo-slide-brand" role="button" data-bs-slide="next">
                                    <i class="text-light fas fa-chevron-right"></i>
                                </a>
                            </div>
                            <!--End Controls-->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Brands-->

        <!-- footer -->
        <footer class="bg-light text-center text-lg-start align-bottom">
            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
              © 2022 Copyright Shop. Designed by HoàngLD
            </div>
            <!-- Copyright -->
        </footer>
        <!-- footer -->
    </div>
    <!-- script -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <!-- script -->
</body>
</html>