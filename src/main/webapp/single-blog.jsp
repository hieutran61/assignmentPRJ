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
    <!-- Like Button CSS -->
    <link rel="stylesheet" href="css/likeButton.css">

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
    <div class="hero-area height-600 bg-img background-overlay" style="background-image: url(images/${article.image});">
        <div class="container h-100">
            <div class="row h-100 align-items-center justify-content-center">
                <div class="col-12 col-md-8 col-lg-6">
                    <div class="single-blog-title text-center">
                        <h3>${article.title}</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ********** Hero Area End ********** -->

    <div class="main-content-wrapper section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <!-- ============= Post Content Area ============= -->
                <div class="col-12 col-lg-8">
                    <div class="single-blog-content mb-100">
                        <!-- Post Meta -->
                        <div class="post-meta">
                            <p><a href="#" class="post-author">${article.author}</a> lúc <a href="#" class="post-date">${article.timePost}</a></p>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <blockquote class="mb-30">
                                <h6>${article.description}</h6>
                            </blockquote>
                            <h6>${article.content}</h6>
                            
                            <!-- Post Meta -->
                            <div class="post-meta second-part">
                                <p class="likebtn">
                                    <a href="likes?articleId=${article.articleId}&username=${sessionScope.acc.username}" title="Love it" class="btn btn-counter ${isLike ? "active":""}" data-count="${article.likes}"><span>&#x2764;</span> Love it</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ========== right page  ========== -->
                <jsp:include page="rightpage.jsp"></jsp:include>
                   
            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="post-a-comment-area mt-70">
                        <h5>Bình luận</h5>
                        <!-- Comment Form -->
                        <form action="read" method="post">
                            <input type="text" value="${sessionScope.acc.username}" name="username" hidden>
                            <input type="text" name="articleId" value="${article.articleId}" hidden>
                            <div class="row">
                                <div class="col-12">
                                    <div class="group">
                                        <textarea name="cmt" id="message" required></textarea>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nhập bình luận</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn world-btn">Post comment</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-12 col-lg-8">
                    <!-- Comment Area Start -->
                    <div class="comment_area clearfix mt-70">
                        <ol>
                            <c:forEach items="${aComment}" var="i">
                            <!-- Single Comment Area -->
                            <li class="single_comment_area">
                                <!-- Comment Content -->
                                <div class="comment-content">
                                    <!-- Comment Meta -->
                                    <div class="comment-meta d-flex align-items-center justify-content-between">
                                        <p><a href="#" class="post-author">${i.username}</a> lúc <a href="#" class="post-date">${i.timeComment}</a></p>
                                    </div>
                                    <p>${i.comment}</p>
                                </div>
                            </li>
                            </c:forEach>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ***** Footer Area Start ***** -->
    <jsp:include page="footer.jsp"></jsp:include>
    </footer>
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
    <!-- Like Button js -->
    <%-- <script src="js/likeButton.js"></script> --%>
</body>

</html>
