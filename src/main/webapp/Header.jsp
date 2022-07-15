<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg">
                        <!-- Logo -->
                        <a class="navbar-brand" href="home"><img src="images/logo.png" alt="Logo"></a>
                        <!-- Navbar Toggler -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#worldNav" aria-controls="worldNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <!-- Navbar -->
                        <div class="collapse navbar-collapse" id="worldNav">
                            <ul class="navbar-nav ml-auto">
                                <c:if test="${sessionScope.acc != null}" >
                                <li class="nav-item active" >
                                    <a class="nav-link" href="createNews">Viết Bài</a>
                                </li>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}" >
                                <li class="nav-item active" >
                                    <a class="nav-link" href="login">Đăng nhập</a>
                                </li>
                                </c:if>
                            </ul>
                            <c:if test="${sessionScope.acc != null}" >
                            <div class="btn-group">
                                <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                    <img width="35" class="rounded-circle" src="images/6.png" alt="">
                                    <i class="fa fa-angle-down ml-2 opacity-8" style="color: white;"></i>
                                </a>
                                <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">                                
                                    <button type="button" tabindex="0" class="dropdown-item" ><a href="updateAccount?username=${i.username}">Cài đặt tài khoản</a></button>
                                    <div tabindex="-1" class="dropdown-divider"></div>
                                    <button type="button" tabindex="0" class="dropdown-item" href="logout"><a href="logout">Đăng xuất</a></button>
                                </div>
                            </div>
                            </c:if>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>