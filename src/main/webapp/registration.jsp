<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng kí</title>
        <link rel="stylesheet" type="text/css" href="css/registerCSS.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <div class="sidenav">
            <div class="login-main-text">
                <h2>Báo LD<br>Trang đăng kí</h2>
                <p>Đăng kí để truy cập vào trang web</p>
            </div>
        </div>
        <div class="main">
            <div class="col-md-6 col-sm-12">
                <div class="login-form">
                    <form>
                        <div style="margin-top: 10px" class="form-group">
                            <label>Tên người dùng</label>
                            <input type="text" class="form-control" placeholder="Tên người dùng">
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label>
                            <input type="password" class="form-control" placeholder="Nhập mật khẩu">
                        </div>
                        <div class="form-group">
                            <label>Nhập lại mật khẩu</label>
                            <input type="password" class="form-control" placeholder="Nhập lại mật khẩu">
                        </div>
                        <div class="form-group">
                            <label>Họ và tên</label>
                            <input type="text" class="form-control" placeholder="Họ và tên">
                        </div>
<!--                        <div class="form-group">
                            <label>Avatar</label>
                            <input type="file" class="form-control" placeholder="Avatar">
                        </div>-->
                        <button style="background-color: black" type="submit" class="btn btn-secondary">Đăng kí</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
