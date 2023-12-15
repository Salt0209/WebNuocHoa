<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangdangky.aspx.cs" Inherits="myBTL.Trangdangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng ký tài khoản</title>
    <link rel="stylesheet" href="Style\Trangdangky.css" />
    <link rel="stylesheet" href="fonts/themify-icons/themify-icons.css" />
    <script src="script/Dangky.js"></script>
</head>
<body>
        <%--        Header--%>
        <div class="header">
            <div id="logo">
                <a href="index.aspx">
                    <img src="Image/Index/Header/logo.png" alt="logo" /></a>
            </div>
            <div class="search_field">
                <input type="text" name="tìm kiếm" placeholder="Nhập hãng sản phẩm muốn tìm ..." />
<%--                <asp:ImageButton ID="btnsearch" BorderWidth="1px" runat="server" ImageUrl="Image/Index/Header/search.png" CssClass="btnSearch" />--%>
                <img src="Image/Index/Header/search.png" alt=""/>
            </div>
            <div class="login" runat="server">
                <label class="user"></label>
                <a href="trangdangnhap.aspx">Đăng nhập</a>
            </div>
            <div class="giohang" runat="server">
                <a href="tranggiohang.aspx"><i class="ti-shopping-cart"></i>Giỏ hàng</a>
            </div>
        </div>
        <%--        NaviBar--%>
        <div id="menutop">
            <div class="navbar" id="topnav">
                <a href="nuochoanu.aspx">Nước hoa nữ</a>
                <a href="nuochoanam.aspx">Nước hoa nam</a>
                <div class="dropdown">
                    <button class="nut_dropdown">
                        Thương hiệu
                    </button>
                    <div class="noidung_dropdown">
                        <a href="#">Calvin Klein</a>
                        <a href="#">Givenchy</a>
                        <a href="#">Yves Saint Laurent</a>
                        <a href="#">Bvlgari</a>
                        <a href="#">Dolce & Gabbana</a>
                        <a href="#">Guerlain</a>
                    </div>
                </div>
            </div>
        </div>
        <%--Main--%>
        <div id="main">
            <div id="main1">
                <p><a href="index.aspx">Trang chủ&ensp;</a>><span>&ensp;Đăng ký tài khoản</span></p>
                <h4>THÔNG TIN CÁ NHÂN</h4>
            </div>
            <div id="main2">
                <form action="Trangdangky.aspx" method="post" runat="server">
                    <div class="form_dk">
                        <div>
                            <label>
                                Tên đăng nhập: 
                                <span style="color: red;">*
                                </span>
                                <br />
                            </label>
                            <input type="text" name="tendn" class="tendn" id="tendn" placeholder="Nhập tên đăng nhập..." /><br />
                            <p runat="server" id="loi_tendn" style="color: red;"></p>
                        </div>
                        <div>
                            <label>
                                Email: 
                                <span style="color: red;">*
                                </span>
                                <br />
                            </label>
                            <input type="text" name="email_dk" class="email_dk" id="email_dk" placeholder="Nhập email..." /><br />
                            <p style="color: red;"></p>
                        </div>
                        <div>
                            <label>
                                Số điện thoại: 
                                <span style="color: red;">*
                                </span>
                                <br />
                            </label>
                            <input type="text" name="sdt_dk" class="sdt_dk" id="sdt_dk" placeholder="Nhập số điện thoại..." /><br />
                            <p style="color: red;"></p>
                        </div>
                        <div class="main22">
                            <label>
                                Mật khẩu: 
                            <span style="color: red;">*
                            </span>
                                <br />
                            </label>
                            <input type="password" name="matkhau" class="matkhau" id="matkhau" placeholder="Nhập mật khẩu..." /><br />
                            <p style="color: red;"></p>
                        </div>
                        <div>
                            <label>
                                Nhập lại mật khẩu: 
                                <span style="color: red;">*
                                </span>
                                <br />
                            </label>
                            <input type="password" name="nlmatkhau_dk" class="nlmatkhau_dk" id="nlmatkhau_dk" placeholder="Nhập lại mật khẩu..." /><br />
                            <p style="color: red;"></p>
                        </div>
                        <p runat="server" id="btn_loi" style="color: red;"></p>
                        <button class="dangky_btn" id="btn_dangky">Đăng ký</button>
                    </div>
                    </div>
                        </div>
                    <%--Footer--%>
                    <div id="footer">
                        <div class="footer1">
                            <h3>Liên hệ</h3>
                            <p>Địa chỉ: 96 Định Công, Hoàng Mai ,Hà Nội</p>
                            <p>SĐT: 0341349999</p>
                            <p>Email: perfumeS@gmail.com</p>
                        </div>
                        <div class="footer2">
                            <h3>Hỗ trợ khách hàng</h3>
                            <p><a href="#">Tư vấn chọn hàng</a></p>
                            <p class="csbm"><a href="#">Chính sách bảo mật</a></p>
                            <p><a href="#">Thanh toán, giao nhận</a></p>
                        </div>
                    </div>
                </form>
    </div>
</body>
</html>
