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
                        <h3 style="color: blue">Tạo tài khoản</h3><br>
                        <!-- Contact Form -->
                        <form action="createAcc" method="post">
                            <div class="row">
                                <div class="col-12">
                                    <div class="group">
                                        <input type="text" name="username" id="username" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập tên đăng nhập của bạn</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group">
                                        <input type="text" name="name" id="name" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập họ và tên</label>
                                    </div>
                                </div>
                                <div class="col-12 ">
                                    <div class="group">
                                        <input type="password" name="password" id="password" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập mật khẩu</label>
                                    </div>
                                </div>
                                <div class="col-12 ">
                                    <div class="group">
                                        <input type="password" name="re_password" id="re_password" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập lại mật khẩu</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group" >
                                        <h5 style="color: red">Trạng thái</h5>
                                        <select name="status" class="form-select">
                                        <option value="1">Active</option>
                                        <option value="0">Inactive</option>
                                        </select>                                      
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group" >
                                        <h5>Quyền</h5>
                                        <select name="status" class="form-select">
                                        <option value="0">admin</option>
                                        <option value="1">writer</option>
                                        <option value="2">user</option>
                                        </select>                                      
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="" >
                                        <h5>Ảnh đại diện</h5>
                                         <input class="form-control" type="file" name="image" placeholder="Default input" aria-label="default input example" required>                
                                    </div>
                                </div>
                                <div class="col-12" style="margin-left: 250px">
                                    <button type="submit" class="btn world-btn">Đăng kí</button>
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
