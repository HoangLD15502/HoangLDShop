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
            <a class="navbar-brand text-success logo" href="home">Shop</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="home"><i class="fa-solid fa-house"></i> Trang chủ</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about"><i class="fa-solid fa-circle-info"></i> Giới thiệu</a>
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

        <!-- content -->
        <div class="row">
            <div class="col-2">
                <div class="mt-2 mb-2">
                    <h5><i class="fa-solid fa-list"></i> Tất cả danh mục</h5>
                    <hr>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><a href="#" class="text-dark">iPhone</a></li>
                        <li class="list-group-item"><a href="#" class="text-dark">SamSung</a></li>
                        <li class="list-group-item"><a href="#" class="text-dark">Xiaomi</a></li>
                        <li class="list-group-item"><a href="#" class="text-dark">Oppo</a></li>
                        <li class="list-group-item"><a href="#" class="text-dark">Asus</a></li>
                        <li class="list-group-item"><a href="#" class="text-dark">Oneplus</a></li>
                        <li class="list-group-item"><a href="#" class="text-dark">Redmi</a></li>
                        <li class="list-group-item"><a href="#" class="text-dark">Realme</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-9">
                <div class="mt-2 mb-2">
                    <form action="">
                        <div class="form-inline">
                            <input type="text" class="form-control mr-sm-3" style="width: 350px;" name="" id="" placeholder="Nhập tên sản phẩm...">
                            <button type="submit" class="btn btn-success"><i class="fa-solid fa-magnifying-glass"></i> Tìm kiếm</button>
                        </div>
                    </form>
                    
                    <div class="mt-2 mb-2">
                        <span class="mt-2 mb-2">Sắp xếp theo: </span>
                        <div class="row">
                            <div class="col-3">
                                <form action="">
                                    <select class="form-control" name="" id="">
                                        <option class="form-control" value="">Giá từ thấp đến cao</option>
                                        <option class="form-control" value="">Giá từ cao đến thấp</option>
                                    </select>
                                </form>
                            </div>
                            <div class="col-3">
                                <form action="">
                                    <select class="form-control" name="" id="">
                                        <option class="form-control" value="">Từ A đến Z</option>
                                        <option class="form-control" value="">Từ Z đến A</option>
                                    </select>
                                </form>
                            </div>
                        </div>
                        
                    </div>

                    <div class="row mt-2 mb-2">
                        <div class="col-3 mt-2 mb-2">
                            <a href="detail">
                                <div class="card">
                                    <div class="card-body">
                                        <img class="card-img" src="images/iPhone.jpg" alt="">
                                        <div class="text-center text-dark">iPhone 13 Pro Max</div>
                                        <div class="text-center text-dark">$999</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content -->

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