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
            <a class="navbar-brand text-success logo" href="account">Shop</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                  <a class="nav-link active" href="account"><i class="fa-solid fa-users"></i> Tài khoản</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="category"><i class="fa-solid fa-list"></i> Danh mục</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product"><i class="fa-solid fa-cart-shopping"></i> Sản phẩm</a>
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
                    	</c:otherwise>
                    </c:choose>
                  </div>
                </li>
            </div>
        </nav>
        <!-- navbar -->
		
		<c:choose>
			<c:when test="${empty sessionScope.account}">
				<div class="text-center h3">Vui lòng đăng nhập để tiếp tục</div>
			</c:when>
			<c:otherwise>
				<!-- content -->
		        <div class="container mt-2 mb-2">
		            <div class="text-success logo h3 mt-2">Quản lý tài khoản</div>
		            <div class="text-center mt-2 mb-2">
						<c:if test="${not empty message}">
							<div class="alert alert-success">${message}</div>
						</c:if>
						<c:if test="${not empty error}">
							<div class="alert alert-danger">${error}</div>
						</c:if>
					</div>
		            <div class="mt-2">
		                <ul class="nav nav-tabs" id="myTab" role="tablist">
		                    <li class="nav-item" role="presentation">
		                      <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" 
		                        role="tab" aria-controls="home" aria-selected="true">Danh sách</a>
		                    </li>
		                    <li class="nav-item" role="presentation">
		                      <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" 
		                        aria-controls="profile" aria-selected="false">Chỉnh sửa</a>
		                    </li>
		                  </ul>
		                  <div class="tab-content" id="myTabContent">
		                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
		                        <table class="table table-bordered">
		                            <tr>
		                                <th>Tên người dùng</th>
		                                <th>Mật khẩu</th>
		                                <th>Họ và tên</th>
		                                <th>Điện thoại</th>
		                                <th>Email</th>
		                                <th>Quyền</th>
		                                <th>Ngày đăng ký</th>
		                                <th></th>
		                            </tr>
		                            <c:forEach var="item" items="${items}">
			                           	<tr>
			                                <td>${item.username}</td>
		                                    <td>${item.password}</td>
			                                <td>${item.name}</td>
			                                <td>${item.phone}</td>
			                                <td>${item.email}</td>
		                                    <td>${item.role ? "Adminstrator" : "User"}</td>
			                                <td>${item.signUpDate}</td>
			                                <td>
			                                    <a href="account/edit/${item.username}">Chỉnh sửa</a>
			                                    <a href="account/delete/${item.username}">Xóa</a>
			                                </td>
			                            </tr>
		                            </c:forEach>
		                        </table>
		                    </div>
		                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
		                        <form class="" action="" method="">
		                            <div class="row">
		                                <div class="col form-group">
		                                    <label for="">Tên người dùng</label>
		                                    <input type="text" class="form-control" name="username" 
		                                    	placeholder="Tên người dùng" value="${item.username}">
		                                </div>
		                                <div class="col form-group">
		                                    <label for="">Mật khẩu</label>
		                                    <input type="password" class="form-control" name="password" 
		                                        placeholder="Mật khẩu" value="${item.password}">
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col form-group">
		                                    <label for="">Họ và tên</label>
		                                    <input type="text" class="form-control" name="name" 
		                                    	placeholder="Họ và tên" value="${item.name}">
		                                </div>
		                                <div class="col form-group">
		                                    <label for="">Điện thoại</label>
		                                    <input type="text" class="form-control" name="phone" 
		                                    	placeholder="Điện thoại" value="${item.phone}">
		                                </div>
		                            </div>
		
		                            <div class="row">
		                                <div class="col form-group">
		                                    <label for="">Email</label>
		                                    <input type="text" class="form-control" name="email" 
		                                    	placeholder="Email" value="${item.email}">
		                                </div>
		                                <div class="col form-group">
		                                    <label for="">Quyền</label>
		                                    <select class="form-control" name="role" id="">
		                                        <option value="true">Adminstrator</option>
		                                        <option value="false">User</option>
		                                    </select>
		                                </div>
		                            </div>
		        
		                            
		        
		                            <div class="form-group">
		                                <button type="submit" class="btn btn-primary"
		                                	formaction="account/save">Lưu</button>
		                               	<button type="submit" class="btn btn-warning"
		                                	formaction="account/update/${item.username}">Chỉnh sửa</button>
		                                <button type="submit" class="btn btn-danger"
		                                	formaction="account/delete/${item.username}">Xóa</button>
		                                <button type="submit" class="btn btn-success"
		                                	formaction="account">Hủy</button>
		                            </div>
		                        </form>
		                    </div>
		                </div>
		            </div>
		        </div>
		        <!-- content -->
			</c:otherwise>
		</c:choose>

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