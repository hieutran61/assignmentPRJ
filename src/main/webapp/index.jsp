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
    <title>Trang chủ</title>

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
   <div class="hero-area">

        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img background-overlay" style="background-image: url(images/bg2.gif);"></div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img background-overlay" style="background-image: url(images/bg1.png);"></div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img background-overlay" style="background-image: url(images/bg3.png);"></div>
        </div>

        <!-- Hero Post Slide -->
        <div class="hero-post-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="hero-post-slide">
                            <!-- Single Slide -->
                            <div class="single-slide d-flex align-items-center">
                                <div class="post-title">
                                    <a href="#">WEBSITE - LẠI ĐỌC BÁO </a>
                                </div>
                            </div>
                            <!-- Single Slide -->
                            <div class="single-slide d-flex align-items-center">
                                <div class="post-title">
                                    <a href="#">Tin tức 24h, đọc báo, cập nhật tin nóng online Việt Nam và thế giới mới nhất trong ngày</a>
                                </div>
                            </div>
                            <!-- Single Slide -->
                            <div class="single-slide d-flex align-items-center">
                                <div class="post-title">
                                    <a href="#">Tin nhanh thời sự, chính trị, xã hội hôm nay, tin tức, top news ...</a>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ********** Hero Area End ********** -->

    <div class="main-content-wrapper section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <!-- ============= Post Content Area Start ============= -->
                <div class="col-12 col-lg-8">
                    <div class="post-content-area mb-50">
                        <!-- Catagory Area -->
                        <div class="world-catagory-area">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="title">Đừng bỏ lỡ</li>
                                <li class="nav-item">
                                    <a class="nav-link active" id="tab1" data-toggle="tab" href="#world-tab-1" role="tab" aria-controls="world-tab-1" aria-selected="true">All</a>
                                </li>
                                <c:forEach items="${aAllCategory}" var="i" varStatus="status" begin="0" end="4">
                                <li class="nav-item">
                                    <a class="nav-link" id="tab${status.count+1}" data-toggle="tab" href="#world-tab-${status.count+1}" role="tab" aria-controls="world-tab-${status.count+1}" aria-selected="false">${i.cateName}</a>
                                </li>
                                </c:forEach>

                                                      
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">More</a>
                                    <div class="dropdown-menu">
                                        <c:forEach items="${aAllCategory}" var="i" varStatus="status" begin="5"> 
                                        <a class="nav-link" id="tab${status.count+6}" data-toggle="tab" href="#world-tab-${status.count+6}" role="tab" aria-controls="world-tab-${status.count+6}" aria-selected="false">${i.cateName}</a>
                                        </c:forEach>
                                    </div>
                                </li>
                            </ul>

                            <div class="tab-content" id="myTabContent">
                                <%-- Các bài Article của tab "All" --%>
                                <div class="tab-pane fade show active" id="world-tab-1" role="tabpanel" aria-labelledby="tab1">
                                    <div class="row">
                                        <div class="col-12 col-md-6">
                                            <div class="world-catagory-slider owl-carousel wow fadeInUpBig" data-wow-delay="0.1s">
                                                <c:forEach items="${aArticle3Days}" var="i" begin="0" end="2">
                                                <!-- Single Blog Post -->
                                                <div class="single-blog-post">
                                                    <!-- Post Thumbnail -->
                                                    <div class="post-thumbnail">
                                                        <img src="images/${i.image}" alt="" style="width: 350px; height:190px">
                                                    </div>
                                                    <!-- Post Content -->
                                                    <div class="post-content">
                                                        <a href="#" class="headline">
                                                            <h5>${i.title}</h5>
                                                        </a>
                                                        <p>${i.description}</p>
                                                        <!-- Post Meta -->
                                                        <div class="post-meta">
                                                            <p><a href="#" class="post-author">${i.author}</a> on <a href="#" class="post-date">${i.timePost}</a></p>
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:forEach>
                                            </div>
                                        </div>

                                        <div class="col-12 col-md-6">
                                            <c:forEach items="${aArticle3Days}" var="i" begin="3" end="7">                                         
                                            <!-- Single Blog Post -->
                                            <div class="single-blog-post post-style-2 d-flex align-items-center wow fadeInUpBig" data-wow-delay="0.2s">
                                                <!-- Post Thumbnail -->
                                                <div class="post-thumbnail">
                                                    <img src="images/${i.image}" alt="" style="width: 97px; height: 97px">
                                                </div>
                                                <!-- Post Content -->
                                                <div class="post-content">
                                                    <a href="#" class="headline">
                                                        <h5>${i.title}</h5>
                                                    </a>
                                                    <!-- Post Meta -->
                                                    <div class="post-meta">
                                                        <p><a href="#" class="post-author">${i.author}</a> on <a href="#" class="post-date">${i.timePost}</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            </c:forEach>
                                        </div>
                                    </div>

                                    <div class="row mt-50">
                                        <div class="col-12">
                                            <div class="world-catagory-slider2 owl-carousel wow fadeInUpBig" data-wow-delay="0.4s">
                                                ${(aArticle3Days.size()/6)+1}
                                                <c:forEach begin="1" end="${(aArticle3Days.size()/6)+1}" >
                                                <!-- ========= Single Catagory Slide ========= -->
                                                <div class="single-cata-slide">
                                                    <div class="row">
                                                    <c:set var="dem" value="8"/>
                                                        <c:forEach items="${aArticle3Days}" var="i" begin="${dem}" end="${((dem+5) < aArticle3Days.size()) ? (dem+5):aArticle3Days.size()}" >
                                                        <div class="col-12 col-md-6">
                                                            <!-- Single Blog Post -->
                                                            <div class="single-blog-post post-style-2 d-flex align-items-center mb-1">
                                                                <!-- Post Thumbnail -->
                                                                <div class="post-thumbnail">
                                                                    <img src="images/1.jpg" alt="">
                                                                </div>
                                                                <!-- Post Content -->
                                                                <div class="post-content">
                                                                    <a href="#" class="headline">
                                                                        <h5>${i.title}</h5>
                                                                    </a>
                                                                    <!-- Post Meta -->
                                                                    <div class="post-meta">
                                                                        <p><a href="#" class="post-author">${i.author}</a> on <a href="#" class="post-date">Sep 29, 2017 at 9:48 am</a></p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <c:set var="dem" value="${dem+1}"/>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                                </c:forEach>                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <%-- Các bài của Catagory --%>
                                <c:forEach items="${aAllCategory}" var="i" varStatus="status"> 
                                <div class="tab-pane fade" id="world-tab-${status.count+1}" role="tabpanel" aria-labelledby="tab${status.count+1}">
                                    <div class="row">
                                        <c:set var="check" value="0"/>
                                        <c:set var="numberOfArticle" value="0"/>
                                        <c:forEach items="${aArticle3Days}" var="a">
                                            <c:if test="${a.cateId == i.cateId}">
                                                <c:set var="numberOfArticle" value="${numberOfArticle+1}"/>
                                                <c:if test="${check==0}" >
                                                    <div class="col-12 col-md-6">
                                                        <!-- Single Blog Post -->
                                                        <div class="single-blog-post">
                                                            <!-- Post Thumbnail -->
                                                            <div class="post-thumbnail">
                                                                <img src="images/${a.image}" alt="">
                                                            </div>
                                                            <!-- Post Content -->
                                                            <div class="post-content">
                                                                <a href="#" class="headline">
                                                                    <h5>${a.title}</h5>
                                                                </a>
                                                                <p>${a.description}</p>
                                                                <!-- Post Meta -->
                                                                <div class="post-meta">
                                                                    <p><a href="#" class="post-author">${a.author}</a> lúc <a href="#" class="post-date">${a.timePost}</a></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <c:set var="check" value="1"/>
                                                    <c:set var="IDFirstArticle" value="${a.articleId}"/>
                                                </c:if>
                                            </c:if> 
                                        </c:forEach>

                                        <div class="col-12 col-md-6">
                                            <c:set var="dem" value="0"/>
                                            <c:set var="lastIdx" value="0"/>
                                            <c:forEach items="${aArticle3Days}" var="a" varStatus="status2">
                                                <c:if test="${(a.cateId == i.cateId) && (a.articleId != IDFirstArticle) && (dem<5)}" >
                                                    <!-- Single Blog Post -->
                                                    <div class="single-blog-post post-style-2 d-flex align-items-center">
                                                        <!-- Post Thumbnail -->
                                                        <div class="post-thumbnail">
                                                            <img src="images/${a.image}" alt="">
                                                        </div>
                                                        <!-- Post Content -->
                                                        <div class="post-content">
                                                            <a href="#" class="headline">
                                                                <h5>${a.title}</h5>
                                                            </a>
                                                            <!-- Post Meta -->
                                                            <div class="post-meta">
                                                                <p><a href="#" class="post-author">${a.author}</a> lúc <a href="#" class="post-date">${a.timePost}</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <c:set var="dem" value="${dem+1}"/>
                                                </c:if>
                                                <c:if test="${dem==5}" >
                                                    <c:set var="dem" value="${status2.count}"/>
                                                </c:if>
                                            </c:forEach>
                                        </div>

                                        <div class="row mt-50">
                                            <div class="col-12">
                                                <div class="world-catagory-slider2 owl-carousel wow fadeInUpBig" data-wow-delay="0.4s">
                                                    <c:forEach begin="1" end="${(numberOfArticle/6)+1}" >
                                                    <!-- ========= Single Catagory Slide ========= -->
                                                    <div class="single-cata-slide">
                                                        <div class="row">
                                                        
                                                            <c:forEach items="${aArticle3Days}" var="i" begin="${dem}" end="${((dem+6) < numberOfArticle) ? (dem+6):numberOfArticle}" >
                                                            <div class="col-12 col-md-6">
                                                                <!-- Single Blog Post -->
                                                                <div class="single-blog-post post-style-2 d-flex align-items-center mb-1">
                                                                    <!-- Post Thumbnail -->
                                                                    <div class="post-thumbnail">
                                                                        <img src="images/${i.image}" alt="">
                                                                    </div>
                                                                    <!-- Post Content -->
                                                                    <div class="post-content">
                                                                        <a href="#" class="headline">
                                                                            <h5>${i.title}</h5>
                                                                        </a>
                                                                        <!-- Post Meta -->
                                                                        <div class="post-meta">
                                                                            <p><a href="#" class="post-author">${i.author}</a> on <a href="#" class="post-date">Sep 29, 2017 at 9:48 am</a></p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                    </c:forEach>                                            
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                </c:forEach>
                                
                            </div>


                        </div>

                    </div>
                </div>

                <!-- ========== right page ========== -->
                <jsp:include page="rightpage.jsp"></jsp:include>
            </div>


            <div class="world-latest-articles">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="title">
                            <h5>Latest Articles</h5>
                        </div>
                        <c:forEach items="${aArticleLatest}" var="i">
                        <!-- Single Blog Post -->
                        <div class="single-blog-post post-style-4 d-flex align-items-center wow fadeInUpBig" data-wow-delay="0.2s">
                            <!-- Post Thumbnail -->
                            <div class="post-thumbnail">
                                <img src="images/${i.image}" alt="">
                            </div>
                            <!-- Post Content -->
                            <div class="post-content">
                                <a href="#" class="headline">
                                    <h5>${i.title}</h5>
                                </a>
                                <p>${i.description}</p>
                                <!-- Post Meta -->
                                <div class="post-meta">
                                    <p><a href="#" class="post-author">${i.author}</a> on <a href="#" class="post-date">${i.timePost}</a></p>
                                </div>
                            </div>
                        </div>
                        </c:forEach>

                    </div>

                </div>
            </div>

        </div>
    </div>

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
