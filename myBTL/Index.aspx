<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="myBTL.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trang chủ</title>
    <link rel="stylesheet" href="Style\index.css" />
    <link rel="stylesheet" href="fonts/themify-icons/themify-icons.css" />
</head>
<body>
    <form id="form1" runat="server">
<%--        Header--%>
        <div class="header">
            <div id="logo">
                <a href="index.aspx">
                    <img src="Image/Index/Header/logo.png" alt="logo" /></a>
            </div>
            <div class="search_field">
                <asp:TextBox ID="txtsearch" runat="server" CssClass="searchbox" placeholder="Nhập hãng sản phẩm muốn tìm ..."> </asp:TextBox>
                <asp:ImageButton ID="btnsearch" BorderWidth="1px" runat="server" ImageUrl="Image/Index/Header/search.png" CssClass="btnSearch" OnClick="btnsearch_Click"/>
            </div>
            <div class="login" id="login" runat="server">
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
                        <a href="NuochoaCalvin.aspx">Calvin Klein</a>
                        <a href="#">Givenchy</a>
                        <a href="#">Yves Saint Laurent</a>
                        <a href="#">Bvlgari</a>
                        <a href="#">Dolce & Gabbana</a>
                        <a href="#">Guerlain</a>
                    </div>
                </div>
            </div>
        </div>
<%--        Banner quang cao--%>
        <div class="banner">
            <input id="indicator-1" class="banner-indicator" type="radio" name="indicator" checked />
            <img class="banner-image" src="image/index/banner/banner1.jpg" alt="banner1" />
            <label for="indicator-1" class="carousel-button"></label>

            <input id="indicator-2" class="banner-indicator" type="radio" name="indicator" />
            <img class="banner-image" src="image/index/banner/banner2.jpg" alt="banner2" />
            <label for="indicator-2" class="carousel-button"></label>

            <input id="indicator-3" class="banner-indicator" type="radio" name="indicator" />
            <img class="banner-image" src="image/index/banner/banner3.png" alt="banner3" />
            <label for="indicator-3" class="carousel-button"></label>
        </div>
<%--        Noi dung mat hang--%>
        <div id="main">
            <h2 id="h2" runat="server">Sản phẩm mới

            </h2>
            <hr id="hr1"/>
            <div id="sanpham1">
                <asp:ListView ID="dssanpham1" runat="server">
                    <ItemTemplate>
                        <div class="sp">
                            <a href="Trangchitietsp.aspx?id=<%# Eval("Id") %>">
                                <img src="<%# Eval("Images") %>" alt="ảnh lỗi" />
                                <hr style="border-color:grey"/>
                                <div class="sp_text">
                                    <h3><%# Eval("Name") %></h3>
                                    <br />
                                    <p><%# Eval("Price") %> <u>đ</u></p>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
            <h2>Sản phẩm nổi bật
                    <hr width="85%">
            </h2>
            <div id="sanpham2">
                <asp:ListView ID="dssanpham2" runat="server">
                    <ItemTemplate>
                        <div class="sp">
                            <a href="Trangchitietsp.aspx?id=<%# Eval("Id") %>">
                                <img src="<%# Eval("Images") %>" alt="ảnh lỗi" />
                                <hr style="border-color:grey"/>
                                <div class="sp_text">
                                    <h3><%# Eval("Name") %></h3>
                                    <br />
                                    <p><%# Eval("Price") %> <u>đ</u></p>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
<%--        <table>
    <tr>
        <td><label>Tổng số lượt truy cập</label></td>
        <td><%=Application["count_visit"].ToString() %></td>
        </tr>
        <tr>
            <td><label>Số người đang online:</label></td>
            <td><%=Session["online"].ToString() %></td>
        </tr>
        <tr>
    </table> --%>

<%--        footer--%>
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
</body>
</html>
