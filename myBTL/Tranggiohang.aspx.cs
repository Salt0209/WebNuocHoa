using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myBTL
{
    public partial class Tranggiohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tendn"] != null)
            {
                int soluot = Convert.ToInt32(Application["sogiohang"]);

                login.InnerHtml = "<label class='User'>Xin chào, " + Session["tendn"].ToString() + "</label>" +
                                  "<div><a href = 'Trangdangxuat.aspx'> |Đăng xuất </a></div>";

                if (Request.Cookies["giohang"] != null)
                {
                    List<NuocHoa> cartList = new List<NuocHoa>();
                    List<NuocHoa> productList = (List<NuocHoa>)Application["ProductList"];
                    string[] productsID = Request.Cookies["giohang"].Value.Split(',');
                    foreach (string productID in productsID)
                    {
                        foreach (NuocHoa sp1 in productList)
                        {
                            if (sp1.Id == productID)
                            {
                                soluot++;
                                cartList.Add(sp1);

                            }
                        }
                        //sogiohang.InnerHtml = "<p> Số sản phẩm trong giỏ hàng là: " + soluot +"</p>";
                    }
                    ListViewCart.DataSource = cartList;
                    ListViewCart.DataBind();

                    //Display products price toan bo san pham
                    double productsPrice = 0;
                    foreach (NuocHoa sp1 in cartList) productsPrice += double.Parse(sp1.Price);
                    products_price.InnerHtml = $"{string.Format("{0:#,##0.00}", productsPrice)} <span class='cart__product-price-unit'>đ</span>";

                    //Display delivery price phi ship
                    const double DELIVERY = 25000;
                    delivery_price.InnerHtml = $"{DELIVERY} <span class='cart__product-price-unit'>đ</span>";

                    //Display order total price
                    double orderTotal = productsPrice + DELIVERY;
                    order_total_price.InnerHtml = $"{string.Format("{0:#,##0.00}", orderTotal)} <span class='cart__product-price-unit'>đ</span>";
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            else
            {
                Response.Redirect("trangdangnhap.aspx");
            }
        }
    }
}