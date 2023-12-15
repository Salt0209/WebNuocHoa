<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangdangnhap.aspx.cs" Inherits="myBTL.Trangdangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng nhập tài khoản</title>
    <link rel="stylesheet" href="Style\Trangdangnhap.css" />
    <link rel="stylesheet" href="fonts/themify-icons/themify-icons.css" />


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
                <a href="Trangdangnhap.aspx">Đăng nhập</a>
            </div>
            <div class="giohang" runat="server">
                <a href="Tranggiohang.aspx"><i class="ti-shopping-cart"></i>Giỏ hàng</a>
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
        
<%--        Main--%>
        <div id="main">
            <div id="main1">
                <p><a href="Index.aspx">Trang chủ&ensp;</a>><span>&ensp;Đăng nhập</span></p>  
                <h4>THÔNG TIN ĐĂNG NHẬP</h4>   
            </div>
            <div id="main2">
                <div class="main21">
                    <form action="Trangdangnhap.aspx" method="post" runat="server">
                        <div>
                            <label>
                            Tên đăng nhập: 
                            <span style="color: red;">
                                *
                            </span> <br/>
                        </label>
                        <input type="text" name="tendn_dn" class="tendn_dn" id="tendn_dn" onchange="usernameChanged();" placeholder="Nhập tên đăng nhập..."/>                      
                        </div>                 
                        <div>
                            <label>
                            Mật khẩu: 
                            <span style="color: red;">
                                *
                            </span> <br/>
                        </label>
                        <input type="text" name="matkhau_dn" class="matkhau_dn" id="matkhau_dn" onchange="passwordChanged();" placeholder="Nhập mật khẩu..."/>
                        </div>     
                        <p id="loi_dn" style=" color:red" runat="server"></p>
                        <button class="dangnhap_btn" id="btn_dangnhap" runat="server" >Đăng nhập</button>
<%--                        <button class="dangnhap_btn" id="Button1" onclick="button_click()" >Đăng nhập 2</button>--%>
<%--                        <span><a >Quên mật khẩu?</a></span>--%>
                    </form>
                </div>
                <div class="main22">
                    <h4>BẠN CHƯA CÓ TÀI KHOẢN?</h4>
                    <p>Đăng ký tài khoản ngay để có thể mua hàng nhanh chóng và dễ dàng hơn ! Ngoài ra còn có rất nhiều chính sách và ưu đãi cho các khách hàng thân thiết.</p>
                    <div class="btndk_dn">
                        <a href="Trangdangky.aspx">Đăng ký</a>
                    </div>
                </div>
            </div>
        </div>
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
</body>
        <script src="script/Dangnhap.js"></script>
</html>
