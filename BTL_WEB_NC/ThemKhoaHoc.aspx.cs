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
    public partial class ThemKhoaHoc : System.Web.UI.Page
    {
        public static string strCon = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        public static SqlConnection connectDatabase()
        {
            SqlConnection myCnn = new SqlConnection(strCon);
            myCnn.Open();
            return myCnn;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection myCnn = connectDatabase();
            SqlCommand cmd = new SqlCommand("get_canbo", myCnn);
            SqlCommand monhoc = new SqlCommand("get_monhoc", myCnn);
            cmd.CommandType = CommandType.StoredProcedure;
            using (SqlDataAdapter data = new SqlDataAdapter(cmd))
            {
                if (!IsPostBack)
                {
                    DataSet table = new DataSet("tbl_canbo");
                    data.Fill(table);
                    dsgiangvien.DataSource = table;
                    dsgiangvien.DataTextField = "sTen_canbo";
                    dsgiangvien.DataValueField = "sMa_canbo";
                    dsgiangvien.DataBind();
                    dsgiangvien.Items.Insert(dsgiangvien.Items.Count, new ListItem("Tất cả", "0"));
                }
            }
            using (SqlDataAdapter data = new SqlDataAdapter(monhoc))
            {
                if (!IsPostBack)
                {
                    DataSet table = new DataSet("get_monhoc");
                    data.Fill(table);
                    dsmonhoc.DataSource = table;
                    dsmonhoc.DataTextField = "sTen_monhoc";
                    dsmonhoc.DataValueField = "sMa_monhoc";
                    dsmonhoc.DataBind();
                }
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            SqlConnection myCnn = connectDatabase();
            String Ngaybatdau = Request.Form["Ngaybatdau"];
            String Ngayketthuc = Request.Form["Ngayketthuc"];

            //đếm số bản ghi khóa học
            SqlCommand sql = new SqlCommand("count_so_khoahoc", myCnn);
            int count = (int) sql.ExecuteScalar() + 1;

            //inserch khóa học
            SqlCommand cmd = new SqlCommand("ins_khoahoc", myCnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mkhoahoc", "Ma_"+count.ToString());
            cmd.Parameters.AddWithValue("@ma_monhoc", dsmonhoc.SelectedValue);
            cmd.Parameters.AddWithValue("@ngaybatdau", Ngaybatdau);
            cmd.Parameters.AddWithValue("@ngayketthuc", "2020/06/23");
            cmd.Parameters.AddWithValue("@giangvien", dsgiangvien.SelectedValue);
            cmd.Parameters.AddWithValue("@ghichu", "");
            int check = cmd.ExecuteNonQuery();
            if (check > 0)
            {
                Response.Write("<script>alert('Thêm thành công');</script>");
            }
            else
            {
                Session["type"] = "error";
                Session["mess"] = "Có lỗi xảy ra. Vui lòng thử lại!";
            }
        }

    }
}