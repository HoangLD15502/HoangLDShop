<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
    <base href="/">
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
                <li class="nav-item">
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
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
                    data-toggle="dropdown" aria-expanded="false">
                    <i class="fa-solid fa-user"></i>
                    <c:choose>
                    	<c:when test="${empty sessionScope.account}">
                    		Tài khoản
                    	</c:when>
                    	<c:otherwise>
                    		${sessionScope.account.username}
                    	</c:otherwise>
                    </c:choose>
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  	<c:choose>
                    	<c:when test="${empty sessionScope.account}">
                    		<a class="dropdown-item" href="sign-in">
                    			<i class="fa-solid fa-right-to-bracket"></i> Đăng nhập
                   			</a>
                   			<a class="dropdown-item" href="sign-up">
                    			<i class="fa-solid fa-right-to-bracket"></i> Đăng ký
                   			</a>
                    		<a class="dropdown-item" href="forgot">
                    			<i class="fa-solid fa-key"></i> Quên mật khẩu
                    		</a>
                    	</c:when>
                    	<c:otherwise>
                    		<a class="dropdown-item" href="sign-out">
                    			<i class="fa-solid fa-right-from-bracket"></i> Đăng xuất
                   			</a>
                    		<a class="dropdown-item" href="change">
                    			<i class="fa-solid fa-rotate"></i> Đổi mật khẩu
                   			</a>
                   			<a class="dropdown-item" href="profile">
                    			<i class="fa-solid fa-rotate"></i> Hồ sơ
                   			</a>
                    	</c:otherwise>
                    </c:choose>
                  </div>
                </li>
               </ul>
              </div>
        </nav>
        <!-- navbar -->

        <!-- content -->
        <div class="container py-5">
            <div class="row py-5">
                <form class="col-md-5 m-auto">
                    <div class="logo h1 text-success">Đổi mật khẩu</div>
                    <div class="form-group mb-3">
                        <label for="">Mật khẩu hiện tại</label>
                        <input type="password" class="form-control mt-2" name="password" 
                        	placeholder="Mật khẩu hiện tại" value="${sessionScope.account.password}">
                    </div>
    
                    <div class="mb-3">
                        <label for="">Mật khẩu mới</label>
                        <input type="password" class="form-control mt-2" name="newpassword" 
                        	placeholder="Mật khẩu mới">
                    </div>
                    <div class="mb-3">
                        <label for="">Xác nhận mật khẩu</label>
                        <input type="password" class="form-control mt-2" name="confirm" 
                        	placeholder="Xác nhận mật khẩu">
                    </div>

                    <div class="row">
                        <div class="col text-end mt-2">
                            <button type="submit" class="btn btn-success" formaction="update/${sessionScope.account.username}">Lưu</button>
                        </div>
                    </div>
    
                </form>
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