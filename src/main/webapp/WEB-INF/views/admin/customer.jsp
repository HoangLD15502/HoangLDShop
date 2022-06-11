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
    <base href="/admin/">
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/6268c39ed8.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid">
        <!-- navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand text-success logo" href="customer">Shop</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                  <a class="nav-link active" href="customer"><i class="fa-solid fa-users"></i> Khách hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="category"><i class="fa-solid fa-list"></i> Danh mục</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product"><i class="fa-solid fa-cart-shopping"></i> Sản phẩm</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa-solid fa-user"></i> Tài khoản
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="sign-in"><i class="fa-solid fa-right-to-bracket"></i> Đăng nhập</a>
                    <a class="dropdown-item" href="forgot"><i class="fa-solid fa-key"></i> Quên mật khẩu</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="sign-in"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
                    <a class="dropdown-item" href="change"><i class="fa-solid fa-rotate"></i> Đổi mật khẩu</a>
                    <a class="dropdown-item" href="profile"><i class="fa-solid fa-address-card"></i> Cập nhật hồ sơ</a>
                  </div>
                </li>
            </div>
        </nav>
        <!-- navbar -->

        <!-- content -->
        <div class="container mt-2 mb-2">
            <div class="text-success logo h3 mt-2 mb-2">Quản lý khách hàng</div>
            <div class="">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Danh sách</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Chỉnh sửa</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <form action="">
                            <div class="form-inline mt-2 mb-2">
                                <input type="text" class="form-control mr-sm-3" style="width: 350px;" name="" placeholder="Nhập tên khách hàng">
                                <button type="submit" class="btn btn-success"><i class="fa-solid fa-magnifying-glass"></i> Tìm kiếm</button>
                            </div>
                        </form>
                        <table class="table table-bordered">
                            <tr>
                                <th>ID khách hàng</th>
                                <th>Họ và tên</th>
                                <th>Số điện thoại</th>
                                <th>Email</th>
                                <th>Mật khẩu</th>
                                <th>Trạng thái</th>
                                <th></th>
                            </tr>
                            <c:forEach var="item" items="${customers}">
	                           	<tr>
	                                <td>${item.customerID}</td>
	                                <td>${item.name}</td>
	                                <td>${item.phone}</td>
	                                <td>${item.email}</td>
	                                <td>${item.password}</td>
	                                <td>${item.status}</td>
	                                <td>
	                                    <a href="customer/edit/${item.customerID}">Chỉnh sửa</a>
	                                    <a href="customer/delete/${item.customerID}">Xóa</a>
	                                </td>
	                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <form class="" action="">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="">ID khách hàng</label>
                                    <input type="text" class="form-control" name="customerID" id="" placeholder="ID khách hàng" disabled="disabled">
                                </div>
                                <div class="col form-group">
                                    <label for="">Họ và tên</label>
                                    <input type="text" class="form-control" name="name" id="" placeholder="Họ và tên">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col form-group">
                                    <label for="">Số điện thoại</label>
                                    <input type="text" class="form-control" name="phone" id="" placeholder="Số điện thoại">
                                </div>
                                <div class="col form-group">
                                    <label for="">Email</label>
                                    <input type="text" class="form-control" name="email" id="" placeholder="Email">
                                </div>
                            </div>
        
                            <div class="form-group">
                                <label for="">Mật khẩu</label>
                                <input type="password" class="form-control" name="password" id="" placeholder="Mật khẩu">
                            </div>
        
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary"
                                	formaction="customer/save">Lưu</button>
                               	<button type="submit" class="btn btn-warning"
                                	formaction="customer/update/${item.customerID}">Update</button>
                                <button type="submit" class="btn btn-danger"
                                	formaction="customer/delete/${item.customerID}">Xóa</button>
                                <button type="submit" class="btn btn-success"
                                	formaction="customer">Hủy</button>
                            </div>
                        </form>
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