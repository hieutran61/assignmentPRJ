<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
        <link rel="stylesheet" type="text/css" href="css/loginCSS.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <div class="sidenav">
            <div class="login-main-text">
                <h2>Lại Đọc Báo<br>Trang đăng nhập</h2>
                <p>Đăng nhập hoặc đăng kí để tiếp tục</p>
            </div>
        </div>
        <div class="main">
            <div class="col-md-6 col-sm-12">
                <div class="login-form">
                    <form>
                        <div style="margin-top: 10px" class="form-group">
                            <label>Tên người dùng</label>
                            <input type="text" name="username" class="form-control" placeholder="Tên người dùng">
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label>
                            <input type="password" name="password" class="form-control" placeholder="Mật khẩu">
                        </div>
                        <button type="submit" class="btn btn-black">Đăng nhập</button>
                        <button type="submit" class="btn btn-secondary">Đăng kí</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
