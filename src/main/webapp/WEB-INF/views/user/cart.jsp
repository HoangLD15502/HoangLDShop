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
                  <a class="nav-link" href="about"><i class="fa-solid fa-circle-info"></i> Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact"><i class="fa-solid fa-phone"></i> Liên hệ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="cart"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a>
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
        <div class="row mt-2 mb-2">
            <div class="container">
                <div class="text-success logo h3 mb-2">Giỏ hàng</div>
                <table class="table table-bordered">
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Đơn giá</th>
                        <th>Số lượng</th>
                        <th>Số tiền</th>
                        <th></th>
                    </tr>
                    <c:forEach var="item" items="${items}">
                    	<tr>
	                        <td>${item.name}</td>
	                        <td>${item.price}</td>
	                        <td class="text-center">
	                        	<form action="cart/update">
	                        		<input type="hidden" name="productID" value="${item.productID}">
	                            	<input type="number" class="form-control" name="quantity"
	                            		value="${item.quantity}" onblur="this.form.submit()">
	                        	</form>
	                        </td>
	                        <td>${item.price * item.quantity}</td>
	                        <td>
	                            <a href="cart/remove/${item.productID}">Xóa</a>
	                        </td>
	                    </tr>
                    </c:forEach>
                </table>
                <div class="form-inline">
                    <h3>Tổng tiền thanh toán: ${total}</h3>
                    <button class="btn btn-primary ml-2">Thanh toán</button>
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