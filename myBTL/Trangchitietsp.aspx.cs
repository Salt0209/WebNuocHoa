using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myBTL
{
    public partial class Trangchitietsanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tendn"] != null)
            {
                
                
                login.InnerHtml = "<label class='User'>Xin chào, " + Session["tendn"].ToString() + "</label>" +
                                  "<div><a href = 'Trangdangxuat.aspx'> |Đăng xuất </a></div>";
            }

            //string id = Request.QueryString.Get("id");
            string id = Request.QueryString.Get("id");
            
            if (id != null)
            {
                List<NuocHoa> ProductList = (List<NuocHoa>)Application["productlist"];
                List<NuocHoa> Productinformation = new List<NuocHoa>();
                foreach (NuocHoa sp in ProductList)
                {
                    if (sp.Id==id)
                    {
                        sp.Price = string.Format("{0:#,##0.00}", double.Parse(sp.Price));
                        //if (sp.Category == "nữ")
                        //{
                        //    sp.Category = "Nước hoa cho nữ";
                        //}else if(sp.Category == "nam")
                        //{
                        //    sp.Category = "Nước hoa cho nam";
                        //}
                        //else
                        //{
                        //    sp.Category = "Mô tả đang cập nhật";
                        //}
                        
   
                        Productinformation.Add(sp);

                    }
                    thongtinsp.DataSource = Productinformation;
                    thongtinsp.DataBind();
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        protected void AddToCartButton(object sender, EventArgs e)
        {

            if (Session["tendn"] != null)
            {
                string id = Request.QueryString.Get("id");
                //Store cart to cookies
                if (Request.Cookies["giohang"] == null)
                {
                    Response.Cookies["giohang"].Value = $"{id},";
                    Response.Cookies["giohang"].Expires = DateTime.Now.AddDays(14);
                }
                else
                {

                    //Store cookies by productID, example: 1,2,3,40,50,... 
                    Response.Cookies["giohang"].Value = Request.Cookies["giohang"].Value + $"{id},";
                    Response.Cookies["giohang"].Expires = DateTime.Now.AddDays(14);
                }

                //Refresh to update cart number
                //Response.Redirect(Request.Url.ToString());
                Themgio.InnerHtml = "Đã thêm vào giỏ hàng";
            }
            else
            {
                Response.Redirect("trangdangnhap.aspx");
            }
        }

    }
}