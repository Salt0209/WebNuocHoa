using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myBTL
{
    public partial class Trangdangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string tendn = Request.Form.Get("tendn");
                string email_dk = Request.Form.Get("email_dk");
                string sdt_dk = Request.Form.Get("sdt_dk");
                string matkhau = Request.Form.Get("matkhau");
                string nlmatkhau_dk = Request.Form.Get("nlmatkhau_dk");

                List<User> users = (List<User>)Application["Users"];
                bool check = true;
                if (tendn != "" && email_dk != "" && sdt_dk != "" && matkhau != "" && nlmatkhau_dk != "")
                {
                    foreach (User user in users)
                    {
                        if (tendn == user.tendn)
                        {
                            //string xml;
                            //xml = "Tên đăng nhập: " + tendn;
                            //xml += "Email: " + email_dk;
                            //xml += "Số điện thoại: " + sdt_dk;
                            //xml += "mật khẩu: " + matkhau;
                            //Response.Write(xml);
                            btn_loi.InnerHtml = "Tài khoản đã được sử dụng";
                            check = false;
                        }
                    }

                    if (check)
                    {
                        btn_loi.InnerHtml = "Tạo thành công. Vui lòng đăng nhập!";
                        User newUser = new User(tendn, email_dk, sdt_dk, matkhau, nlmatkhau_dk);
                        users.Add(newUser);
                        Application["Users"] = users;
                    }
                }
            }

        }
    }
}