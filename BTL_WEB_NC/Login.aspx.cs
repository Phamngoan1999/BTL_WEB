using BTL_WEB_NC.Class;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WEB_NC
{
    public partial class Login : System.Web.UI.Page
    {
        String Username, Password;

        //public static string strCon = @"Data Source= DESKTOP-LE83T63\PHAMNGOAN;Initial Catalog=hethonghoctructuyen;Integrated Security=True";
        /*public static SqlConnection connectDatabase()
        {
            SqlConnection myCnn = new SqlConnection(strCon);
            myCnn.Open();
            return myCnn;
        }*/
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                /*int wrongTimes = Convert.ToInt32(ConfigurationManager.AppSettings["WrongTimes"]);*/
                Username = Request.Form["Username"];
                Password = Request.Form["Password"];
                string sqlconnectStr = @"Data Source= DESKTOP-LE83T63\PHAMNGOAN;Initial Catalog=hethonghoctructuyen;Integrated Security=True";
                SqlConnection connection = new SqlConnection(sqlconnectStr);
                connection.Open();

                // Câu truy vấn gồm: chèn dữ liệu vào và lấy định danh(Primary key) mới chèn vào
                string queryString = @"select * from tbl_taikhoan where sEmail = @sEmail and sMatkhau =  @sMatkhau";

                using (SqlCommand cmd = connection.CreateCommand())
                {
                    cmd.CommandText = queryString;
                    cmd.Parameters.AddWithValue("@sEmail", Username);
                    cmd.Parameters.AddWithValue("@sMatkhau", Password);
                    var rows = cmd.ExecuteScalar();
                    if(rows == null)
                    {
                        Response.Redirect("DangNhap.aspx");
                        Response.Write("<script>alert('Đăng nhập thất bại');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Đăng nhập thành công');</script>");
                    }
                }
                connection.Close();

            }
        }
    }
}