using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myBTL
{
    public partial class NuocHoaNam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<NuocHoa> ProductList = (List<NuocHoa>)Application["productList"];
            List<NuocHoa> spNu = new List<NuocHoa>();
            foreach (NuocHoa sp in ProductList)
            {
                if (sp.Category.Trim() == "nam" || sp.Category.Trim() == "Nước hoa cho nam")
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