<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>World - Blog &amp; Magazine Template</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader Start -->
    <div id="preloader">
        <div class="preload-content">
            <div id="world-load"></div>
        </div>
    </div>
    <!-- Preloader End -->

    <!-- ***** Header Area Start ***** -->
    <jsp:include page="Header.jsp"></jsp:include>
    <!-- ***** Header Area End ***** -->

    <!-- ********** Hero Area Start ********** -->
    <div class="hero-area height-400 bg-img background-overlay" style="background-image: url(img/blog-img/bg4.jpg);"></div>
    <!-- ********** Hero Area End ********** -->

    <section class="contact-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Contact Form Area -->
                <div class="col-12 col-md-10 col-lg-8">
                    <div class="contact-form">
                        <h3 style="color: blue">Cập nhật tài khoản</h3><br>
                        <!-- Contact Form -->
                        <form action="updateAccount" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <input type="text" name="mk" value="${acc.password}" hidden>
                                <div class="col-12">
                                    <div class="group">
                                        <input type="text" class="form-control" name="username" placeholder="Tên đăng nhập" value="${acc.username}" readonly>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>                                       
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group">
                                        <input type="text" class="form-control" name="fullname" placeholder="Cập nhật họ và tên"value="${acc.fullname}">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập họ và tên</label>
                                    </div>
                                </div>
                                <div class="col-12 ">
                                    <div class="group">
                                        <input type="password" class="form-control" name="old-password" placeholder="Mật khẩu cũ">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập mật khẩu cũ</label>
                                    </div>
                                </div>
                                <div class="col-12 ">
                                    <div class="group">
                                        <input type="password" class="form-control" name="new-password" placeholder="Mật khẩu mới">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập mật khẩu mới</label>
                                    </div>
                                </div>
                                <div class="col-12 ">
                                    <div class="group">
                                        <input type="password" class="form-control" name="re-password" placeholder="Nhập lại mật khẩu">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập lại mật khẩu</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group" >
                                        <h5 style="color: red">Trạng thái</h5>
                                         <select name="status">
                                         <option value="1" ${acc.status==true ? "selected":""}>Active</option>
                                         <option value="0" ${acc.status==false ? "selected":""}>Inactive</option>
                                         </select><br>                                    
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group" >
                                        <h5>Quyền</h5>
                                        <select name="role">
                                        <option value="0" ${acc.role==0 ? "selected":""}>Admin</option>
                                        <option value="1" ${acc.role==1 ? "selected":""}>Writer</option>
                                        <option value="2" ${acc.role==2 ? "selected":""}>User</option>
                                        </select><br>
                                        </select>                                      
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="" >
                                        <h5>Ảnh đại diện</h5>
                                          <input type="file" class="form-control" name="avatar" placeholder="Cập nhật ảnh đại diện">                
                                    </div>
                                </div>
                                <div class="col-12" style="margin-left: 250px">
                                    <button type="submit" class="btn world-btn">Cập nhật</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Google Maps: If you want to google map, just uncomment below codes -->
    <!--
    <div class="map-area">
        <div id="googleMap" class="googleMap"></div>
    </div>
    -->

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- ***** Footer Area End ***** -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
    <!-- Google Maps: If you want to google map, just uncomment below codes -->
    <!--
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwuyLRa1uKNtbgx6xAJVmWy-zADgegA2s"></script>
    <script src="js/map-active.js"></script>
    -->

</body>

</html>
