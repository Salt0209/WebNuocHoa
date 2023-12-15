using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace myBTL
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //user
            Application["Users"] = new List<User>();
            List<User> Users = (List<User>)Application["Users"];
            Users.Add(new User("1", "1", "1", "1", "1"));
            Users.Add(new User("thuan", "thuanminh@gmail.com", "0123456789", "1", "1"));
            Users.Add(new User("NguyenMinhThuan", "thuanminh@gmail.com", "0123456789", "1", "1"));


            //Sản phẩm
            Application["ProductList"] = new List<NuocHoa>();
            List<NuocHoa> ProductList = new List<NuocHoa>();

            ProductList.Add(new NuocHoa() { Id = "1", Images = "Image/SanPham/sp1.jpg", Name = "Jimmy Choo I Want Choo Forever Perfume", Price = "1941355.25",Brand="Jimmy Choo" ,Category="nữ"});
            ProductList.Add(new NuocHoa() { Id = "2", Images = "Image/SanPham/sp2.jpg", Name = "Lattafa Musk Al Aroos Perfume", Price = "485081.65", Brand = "Givenchy", Category = "nam" });
            ProductList.Add(new NuocHoa() { Id = "3", Images = "Image/SanPham/sp3.jpg", Name = "Lattafa Confidential Private Gold Cologne", Price = "485081.65", Brand = "Givenchy", Category = "nữ" });
            ProductList.Add(new NuocHoa() { Id = "4", Images = "Image/SanPham/sp4.jpg", Name = "B.a.d Homme Cologne", Price = "485081.65", Brand = "Givenchy", Category = "nam" });
            ProductList.Add(new NuocHoa() { Id = "5", Images = "Image/SanPham/sp5.jpg", Name = "Lattafa Opulent Red Perfume", Price = "485081.65", Brand = "Givenchy", Category = "nam" });
            ProductList.Add(new NuocHoa() { Id = "6", Images = "Image/SanPham/sp6.jpg", Name = "Lattafa Ejaazi Cologne", Price = "485081.06", Brand = "Calvin Klein", Category = "nam" });
            ProductList.Add(new NuocHoa() { Id = "7", Images = "Image/SanPham/sp7.jpg", Name = "Twilly D'hermes Eau Ginger Perfume", Price = "1721202.34", Brand = "Givenchy", Category = "nữ" });
            ProductList.Add(new NuocHoa() { Id = "8", Images = "Image/SanPham/sp8.jpg", Name = "Lattafa Opulent Musk Perfume", Price = "485081.65", Brand = "Bvlgari", Category = "nam" });
            ProductList.Add(new NuocHoa() { Id = "9", Images = "Image/SanPham/sp9.jpg", Name = "Joop", Price = "265725.56", Brand = "Calvin Klein", Category = "nam" });
            ProductList.Add(new NuocHoa() { Id = "10", Images = "Image/SanPham/sp10.jpg", Name = "Invictus", Price = "60876.35", Brand = "Bvlgari", Category = "nữ" });
            ProductList.Add(new NuocHoa() { Id = "11", Images = "Image/SanPham/sp11.jpg", Name = "Euphoria", Price = "469193.43", Brand = "Calvin Klein", Category = "nam" });
            ProductList.Add(new NuocHoa() { Id = "12", Images = "Image/SanPham/sp12.jpg", Name = "La Vie Est Belle", Price = "1299876.97", Brand = "Bvlgari", Category = "nam" });
            ProductList.Add(new NuocHoa() { Id = "13", Images = "Image/SanPham/sp13.jpg", Name = "Gucci Guilty Cologne", Price = "206123.35", Brand = "Bvlgari", Category = "nữ" });


            Application["ProductList"] = ProductList;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            int count_visit = 0;
            //Kiểm tra file count_visit.txt nếu không tồn  tại thì
            //if (System.IO.File.Exists(Server.MapPath("~/count_visit.txt")) == false)
            //{
            //    count_visit = 1;
            //}
            //// Ngược lại thì
            //else
            //{
            //    // Đọc dử liều từ file count_visit.txt
            //    System.IO.StreamReader read = new System.IO.StreamReader(Server.MapPath("~/count_visit.txt"));
            //    count_visit = int.Parse(read.ReadLine());
            //    read.Close();
            //    // Tăng biến count_visit thêm 1
            //    count_visit++;
            //}
            //// khóa website
            //Application.Lock();
            //// gán biến Application count_visit
            //Application["count_visit"] = count_visit;
            //// Mở khóa website
            //Application.UnLock();
            //// Lưu dử liệu vào file  count_visit.txt
            //System.IO.StreamWriter writer = new System.IO.StreamWriter(Server.MapPath("~/count_visit.txt"));
            //writer.WriteLine(count_visit);
            //writer.Close();
            //if (Session["online"] == null)
            //{
            //    Session["online"] = 1;
            //}
            //else
            //{
            //    Session["online"] = int.Parse(Session["online"].ToString()) + 1;
            //}
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            //Session["online"] = int.Parse(Session["online"].ToString()) - 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}