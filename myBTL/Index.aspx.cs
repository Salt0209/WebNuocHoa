using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myBTL
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Dangnhap
            if (Session["tendn"] != null)
            {
                login.InnerHtml = "<label class='User'>Xin chào, " + Session["tendn"].ToString() + "</label>" +
                                  "<div><a href = 'Trangdangxuat.aspx'> |Đăng xuất </a></div>";
            }

            //Danh sach mat hang
            List<NuocHoa> ProductList = (List<NuocHoa>)Application["productList"];
            List<NuocHoa> sp1 = new List<NuocHoa>();
            List<NuocHoa> sp2 = new List<NuocHoa>();
            String[] idSP1 = { "1","2","3","4","5","6","7","8" };
            int maxIndex1 = idSP1.Length - 1;
            String[] idSP2 = { "1", "2", "12", "13" };
            int maxIndex2 = idSP2.Length - 1;
            foreach (NuocHoa sp in ProductList)
            {
                string id = sp.Id;
                for(int i = 0; i <= maxIndex1; i++)
                {
                    if(id.Trim() == idSP1[i].Trim())
                    {
                        sp.Price = string.Format("{0:#,##0.00}", double.Parse(sp.Price));
                        sp1.Add(sp);
                    }
                }
                for (int i = 0; i <= maxIndex2; i++)
                {
                    if (id.Trim() == idSP2[i].Trim())
                    {
                        sp.Price = string.Format("{0:#,##0.00}", double.Parse(sp.Price));
                        sp2.Add(sp);
                    }
                }
            }
            dssanpham1.DataSource = sp1;
            dssanpham1.DataBind();
            dssanpham2.DataSource = sp2;
            dssanpham2.DataBind();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Truyendulieu.txtSP = txtsearch.Text;
            
            Response.Redirect("sanphamtimkiem.aspx");
        }
    }
}