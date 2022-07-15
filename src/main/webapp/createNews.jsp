<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Viết bài mới...</title>

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
                                <h5>Viết bài mới...</h5>
                                <!-- Write news form -->
                                <form action="createNews" method="post" enctype="multipart/form-data">
                                    <div class="column">
                                        <div class="col-12 col-md-12">
                                            <div class="group">
                                                <input type="text" name="title" id="name" required>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Tiêu đề bài viết...</label>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-12">
                                            <div class="group">
                                                <input type="text" name="description" required>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Mô tả bài viết...</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="group">
                                                <textarea style="height: 175px" name="content" id="message" required></textarea>
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Nội dung bài viết...</label>
                                            </div>
                                        </div>
                                        <div class="col-12" style="margin-bottom: 25px">
                                            <div class="">
                                                <input type="file" name="image" placeholder="Chọn ảnh cho bài viết" required>
                                            </div>
                                        </div>
                                        <input type="text" name="author" value="${sessionScope.acc.username}">
                                        <div class="col-12">
                                            <div class="">
                                            <label>Chọn thể loại cho bài viết</label>
                                            <select name="cateId">
                                                <option value="1">Thời sự</option>
                                                <option value="2">Công nghệ</option>
                                                <option value="3">Văn hóa</option>
                                                <option value="4">Giáo dục</option>
                                                <option value="5">Du lịch</option>
                                                <option value="6">Sức khỏe</option>
                                                <option value="7">Xe</option>
                                                <option value="8">Thế giới</option>
                                            </select><br>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button type="submit" class="btn world-btn">Tạo bài viết</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

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

    </body>

</html>
