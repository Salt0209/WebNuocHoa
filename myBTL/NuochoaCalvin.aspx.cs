using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myBTL
{
    public partial class NuochoaCalvin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<NuocHoa> ProductList = (List<NuocHoa>)Application["productList"];
            List<NuocHoa> spNu = new List<NuocHoa>();
            foreach (NuocHoa sp in ProductList)
            {
                if (sp.Brand.Contains("Calvin"))
                {
                    sp.Price = string.Format("{0:#,##0.00}", double.Parse(sp.Price));
                    spNu.Add(sp);
                }
            }
            dssanpham.DataSource = spNu;
            dssanpham.DataBind();
        }
    }
}