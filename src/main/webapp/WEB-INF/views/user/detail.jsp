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
            <a class="navbar-brand text-success logo" href="#">Shop</a>
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
        <section class="bg-light">
            <div class="container pb-5">
                <div class="row">
                    <div class="col-lg-5 mt-5">
                        <div class="card mb-3">
                            <img class="card-img img-fluid" src="images/iPhone.jpg" alt="Card image cap" id="product-detail">
                        </div>
                    </div>
                    <!-- col end -->
                    <div class="col-lg-7 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h1 class="h2">iPhone 13 Pro Max</h1>
                                <p class="h3 py-2">$999</p>
    
                                <h6>Mô tả:</h6>
                                <p>Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.</p>
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <h6>Trạng thái :</h6>
                                    </li>
                                    <li class="list-inline-item">
                                        <p class="text-dark">Còn hàng</p>
                                    </li>
                                </ul>
    
                                <form action="">
                                    <input type="hidden" name="product-title" value="Activewear">
                                    <div class="row">
                                        <div class="col-auto">
                                            <ul class="list-inline pb-3">
                                                <li class="list-inline-item text-right">
                                                    Số lượng
                                                    <input type="hidden" name="product-quanity" id="product-quanity" value="1">
                                                </li>
                                                <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
                                                <li class="list-inline-item"><span class="btn bg-secondary" id="var-value">1</span></li>
                                                <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row pb-3">
                                        <div class="col d-grid">
                                            <button type="submit" class="btn btn-success" name="submit" value="buy">Mua ngay</button>
                                            <button type="submit" class="btn btn-success" name="submit" value="addtocard">Thêm vào giỏ hàng</button>
                                        </div>
                                    </div>
                                </form>
    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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

    <!-- quantity script -->
    <script>
        'use strict';
        $(document).ready(function() {
            // Product detail
            $('.product-links-wap a').click(function(){
                var this_src = $(this).children('img').attr('src');
                $('#product-detail').attr('src',this_src);
                return false;
            });

            $('#btn-minus').click(function(){
                var val = $("#var-value").html();
                val = (val=='1')?val:val-1;
                $("#var-value").html(val);
                $("#product-quanity").val(val);
                return false;
            });

            $('#btn-plus').click(function(){
                var val = $("#var-value").html();
                val++;
                $("#var-value").html(val);
                $("#product-quanity").val(val);
                return false;
            });

            $('.btn-size').click(function(){
                var this_val = $(this).html();
                $("#product-size").val(this_val);
                $(".btn-size").removeClass('btn-secondary');
                $(".btn-size").addClass('btn-success');
                $(this).removeClass('btn-success');
                $(this).addClass('btn-secondary');
                return false;
            });
            // End product detail
        });
    </script>
    <!-- quantity script -->
</body>
</html>