<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật thông tin</title>
        <link rel="stylesheet" type="text/css" href="css/registerCSS.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <div class="sidenav">
            <div class="login-main-text">
                <h2>Báo LD<br>Trang cập nhật</h2>
                <p>Cập nhật thông tin của người dùng</p>
            </div>
        </div>
        <div class="main">
            <div class="col-md-6 col-sm-12">
                <div class="login-form">
                    <form>
                        <div class="form-group">
                            <input type="hidden" name="username" value="">
                        </div>
                        <div style="margin-top: 10px" class="form-group">
                            <label>Mật khẩu mới</label>
                            <input type="password" class="form-control" placeholder="Mật khẩu mới">
                        </div>
                        <div class="form-group">
                            <label>Nhập lại mật khẩu mới</label>
                            <input type="password" class="form-control" placeholder="Nhập lại mật khẩu mới">
                        </div>
                        <div class="form-group">
                            <label>Cập nhật họ và tên</label>
                            <input type="text" class="form-control" placeholder="Cập nhật họ và tên">
                        </div>
                        <div class="form-group">
                            <label>Cập nhật ảnh đại diện</label>
                            <input type="file" class="form-control" placeholder="Cập nhật ảnh đại diện">
                        </div>
                        <div class="form-group">
                            <label>Cập nhật chức năng người dùng</label>
                            <select name="role">
                                <option value="admin">Quản trị viên</option>
                                <option value="journalist">Nhà báo</option>
                                <option value="reader">Người đọc</option>
                            </select><br>
                        </div>
                        <div class="form-group">
                            <label>Cập nhật tình trạng người dùng</label>
                            <select name="status">
                                <option value="Enable">Mở</option>
                                <option value="Disable">Chặn</option>
                            </select><br>
                        </div>
                        <button style="background-color: black" type="submit" class="btn btn-secondary">Cập nhật</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
