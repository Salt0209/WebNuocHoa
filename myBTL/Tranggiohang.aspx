<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tranggiohang.aspx.cs" Inherits="myBTL.Tranggiohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Giỏ hàng của bạn</title>
    <link rel="stylesheet" href="Style\Tranggiohang.css" />
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
    <div class="main">
		<p class="sogiohang" id="sogiohang" runat="server"></p>
		<div class="cart_product">
			<table class="bang">
						<tr>
							<th>Ảnh</th>
							<th>Tên sản phẩm</th>
							<th>Giá</th>
							<th>Tác vụ</th>
						</tr>
			<asp:ListView ID="ListViewCart" runat="server">
				<ItemTemplate>
						<tr>
							<td class="td1"><img src= "<%# Eval("Images") %>" class="anh" /></td>
							<td><p><%# Eval("Name") %></p></td>
							<td><p id="Gia"><%# Eval("Price") %> <u>đ</u></p></td>
							<td><a href="Xoagiohang.aspx?id=<%#Eval("Id")%>" class="xoa"><button class="xoa">Xóa</button></a></td>
						</tr>
				</ItemTemplate>
			</asp:ListView>
			</table>
		</div>
		<div class="cart_price">
			<div class="cart--right">
                    <h2 class="cart__title--right">Đơn hàng<br/></h2>
                    <div class="cart__products-total-price">
                        <p>Tổng tiền sản phẩm</p>
                        <p runat="server" id="products_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <div class="cart__delivery-price">
                        <p>Tổng phí giao hàng</p>
                        <p runat="server" id="delivery_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <hr/>
                    <div class="cart__order-total">
                        <p>Tổng cộng: </p>
                        <p runat="server" id="order_total_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    
                    <div class="cart__buttons--right">
                        <button class="purchase-button" type="button">Thanh toán</button>
                    </div>
                </div>
		</div>
	</div>


    <%--Footer--%>
    <div id="footer">
            <div class="footer1">
                <h3>Liên hệ</h3>
                <p>Địa chỉ : 96 Định Công, Hoàng Mai ,Hà Nội</p>
                <p>SĐT :0386268286</p>
                <p>Email : fashionpro@gmail.com</p>
            </div>
            <div class="footer2">
                <h3>Hỗ trợ khách hàng</h3>
                <p><a href="#">Hướng dẫn chọn size</a></p>
                <p class="csbm"><a href="#">Chính sách bảo mật</a></p>
                <p><a href="#">Thanh toán, giao nhận</a></p>
            </div>
        </div>
</body>
</html>
