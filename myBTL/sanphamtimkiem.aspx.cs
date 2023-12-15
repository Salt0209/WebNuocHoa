using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myBTL
{
    
    public partial class sanphamtimkiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Truyendulieu.txtSP;
            List<NuocHoa> ProductList = (List<NuocHoa>)Application["productList"];
            List<NuocHoa> spNu = new List<NuocHoa>();
            foreach (NuocHoa sp in ProductList)
            {
                if (sp.Name.ToLower().Contains(a.ToLower()))
                {
                    sp.Price = string.Format("{0:#,##0.00}", double.Parse(sp.Price));
                    spNu.Add(sp);
                }
            }
            dssanphamNu.DataSource = spNu;
            dssanphamNu.DataBind();
            
        }

        protected void btnsearch_Click(object sender, ImageClickEventArgs e)
        {
            if (txtsearch != null)
            {
                List<NuocHoa> ProductList = (List<NuocHoa>)Application["productList"];
                List<NuocHoa> spNu = new List<NuocHoa>();
                foreach (NuocHoa sp in ProductList)
                {
                    if (sp.Name.ToLower().Contains(txtsearch.Text.ToLower()))
                    {
                        sp.Price = string.Format("{0:#,##0.00}", double.Parse(sp.Price));
                        spNu.Add(sp);
                    }
                }
                dssanphamNu.DataSource = spNu;
                dssanphamNu.DataBind();
            }
        }
    }
}