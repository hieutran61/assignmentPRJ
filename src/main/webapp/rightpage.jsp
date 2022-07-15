<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-12 col-md-8 col-lg-4">
    <div class="post-sidebar-area wow fadeInUpBig" data-wow-delay="0.2s">
        <!-- Widget Area -->
        <div class="sidebar-widget-area">
            <h5 class="title">About World</h5>
            <div class="widget-content">
                <p>Các sinh vật đang sống trên địa cầu này, dù là con người hay con vật, là để cống hiến, theo cách riêng của mình, cho cái đẹp và sự thịnh vượng của thế giới.</p>
            </div>
        </div>
        <!-- Widget Area -->
        <div class="sidebar-widget-area">
            <h5 class="title">Top Stories</h5>
            <div class="widget-content">
                <c:forEach items="${aTopStories}" var="i">                              
                <!-- Single Blog Post -->
                <div class="single-blog-post post-style-2 d-flex align-items-center widget-post">
                    <!-- Post Thumbnail -->
                    <div class="post-thumbnail">
                        <img src="images/${i.image}" alt="">
                    </div>
                    <!-- Post Content -->
                    <div class="post-content">
                        <a href="#" class="headline">
                            <h5 class="mb-0">${i.title}</h5>
                        </a>
                    </div>
                </div>
                </c:forEach>  
            </div>
        </div>
        <!-- Widget Area -->
        <div class="sidebar-widget-area">
            <h5 class="title">Stay Connected</h5>
            <div class="widget-content">
                <div class="social-area d-flex justify-content-between">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                    <a href="#"><i class="fa fa-vimeo"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-google"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
