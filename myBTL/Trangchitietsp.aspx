<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchitietsp.aspx.cs" Inherits="myBTL.Trangchitietsanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" href="images/icon.jpeg"/>
    <link rel="stylesheet" href="Style/Trangchitietsp.css" />
    <link rel="stylesheet" href="fonts/themify-icons/themify-icons.css"/>
    <title>Chi tiết sản phẩm</title>
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
                <asp:ImageButton ID="btnsearch" BorderWidth="1px" runat="server" ImageUrl="Image/Index/Header/search.png" CssClass="btnSearch" />
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
                        <a href="#NuochoaCalvin">Calvin Klein</a>
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
                <p><a href="index.aspx">Trang chủ&ensp;</a>><span>&ensp;Chi tiết sản phẩm</span></p>
<%--                    <hr width="90%"/><br />--%>
            </div>

        <div id="sp">
            <asp:ListView ID="thongtinsp" runat="server" >
			<ItemTemplate>
				<div class="sp_detail">
                <img src="<%# Eval("Images") %>"/>
            </div>
            <div class="detail">
                <h1><%# Eval("Name") %></h1><br />
                <p><%# Eval("Price") %> <u>đ</u></p><br />
                <p class="theloai"> by <u><%# Eval("Brand")%></u></p>
                <p class="theloai">Nước hoa cho <%# Eval("Category")%></p><br />
<%--                <div class="status">
                    <span>Mô tả đang cập nhật</span>
                </div><br /> --%>  
                <div class="button">
<%--                        <button type="submit" class="btn_add_cart" runat="server" ID="AddToCartButton1" onserverclick="AddToCartButton">
                            Cho vào giỏ hàng
                        </button>--%>
                <button  class="btn_add_cart" id="AddToCartButton1" onclick = "moMessageBox()">
                            Cho vào giỏ hàng
                        </button>
                </div>
            </div>
				</ItemTemplate>
		</asp:ListView> 
            <p class="Themgio" name="Themgio" runat="server" id="Themgio"></p> 
        </div>
            <br />

        <div id="sp_tab">
                <h2 class="thongtinsp">Thông tin sản phẩm</h2><br />
            <div class="thongtin">
                <p>Phong cách thời trang nam giới nói riêng luôn có sự thay đổi theo thời gian. 
                   Tuy nhiên, những trang phục thuộc diện thì vẫn có được chỗ đứng cho mình trong 
                   lòng công chúng. Món đồ mà chúng tôi đang muốn nói đến ở đây là áo sơ mi trắng. 
                   Cho dù phong cách ăn mặc của các chàng trai là đơn giản hay phức tạp, lịch lãm 
                   hay bụi bặm thì áo phông trắng luôn là món đồ mà bạn không thể bỏ qua.</p>&nbsp;

                <p>Nam giới từ xưa đến nay vẫn được hưởng ưu ái "mặc thế nào cũng được". Chính vì 
                   điều này mà đôi khi phái mạnh trở nên cẩu thả với chính mình. Nhưng ngày nay, 
                   mọi thứ đã thay đổi. Việc cẩu thả trong ăn mặc sẽ khiến bạn trở thành một anh 
                   chàng lôi thôi, luộm thuộm trong mắt mọi người. Mặc sơmi trắng khiến các chàng trai trở lên thanh lịch và nam tính hơn bao giờ hết. Có nhiều cách "hay ho" để chúng ta biến tầu trang phục này.</p>
                            </div>
        </div> <br />
  
    </div>    
<div id="idBox" class="modal">
            <span onclick="document.getElementById('idBox').style.display='none'" class="close" title="Close Modal">×</span>
            <div class="modal-content">
                <div class="container">
                    <h1>Bạn có chắc muốn thêm không ?</h1>

                    <div class="clearfix">
                        <button type="submit" class="btn_add_cart" runat="server" ID="AddToCartButton1" onserverclick="AddToCartButton">
                            Cho vào giỏ hàng
                        </button>
                        <button type="button" onclick="document.getElementById('idBox').style.display='none'" class="cancelbtn">Hủy</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script language="javascript" src="script/Xacnhan.js"></script>
</body>
</html>
