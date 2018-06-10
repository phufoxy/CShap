using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLTapHoaNTLTGroup
{
    public partial class Login2 : System.Web.UI.Page
    {
        String conString;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConnnectionString.connectionbyname("sqlString");
            if (!Page.IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand com = new SqlCommand();

            try
            {
                conn.Open();
                if (TextBox1.Text.Trim() == "" || TextBox2.Text.Trim() == "")
                {
                    thongbao.Text = "Điền Đầy Đủ Thông Tin";
                    return;
                }
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    com = new SqlCommand("select * from tb_NhanVien where MaNV=@1 and MatKhau=@2", conn);
                    com.Parameters.AddWithValue("@1", TextBox1.Text.Trim());
                    com.Parameters.AddWithValue("@2", TextBox2.Text.Trim());
                    SqlDataAdapter sda = new SqlDataAdapter(com);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    com.ExecuteNonQuery();
                    if (dt.Rows.Count > 0)
                    {
                        Session["MaNV"] = TextBox1.Text;
                        Response.Redirect("ThongKeCTHD1.aspx");
                        Session.RemoveAll();
                    }
                    else
                    {
                        thongbao.Text = "Đăng Nhập Không Thành Công";
                    }

                }
                else
                {
                    thongbao.Text = "Kết nối không thành công";
                }

            }
            catch (Exception ee)
            {
                thongbao.Text = "Loi" + ee.Message;
            }
            finally
            {
                conn.Close();
                com.Dispose();
            }

        }
    }
}