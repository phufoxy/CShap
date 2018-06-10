using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLTapHoaNTLTGroup
{
    public partial class InHoaDon : System.Web.UI.Page
    {
        string conString;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConnnectionString.connectionbyname("sqlString");
            if (!Page.IsPostBack)
            {
                BindDataToGridView(-1);
                dropshownhd();
            }
            if ((string)Session["MaNV"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        public void dropshownhd()
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand com = new SqlCommand();
            try
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    string sql = "SELECT hd.MaHD,kh.TenKH FROM tb_HoaDon hd INNER JOIN tb_KhachHang kh ON hd.KhachHang=kh.MaKH";
                    com = new SqlCommand(sql, conn);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    da.Fill(ds);
                    DropDownList1.DataSource = ds;
                    DropDownList1.DataTextField = "TenKH";
                    DropDownList1.DataValueField = "MaHD";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "-->Chọn Khách Hàng Hóa Đơn<--");
                }
                else
                {
                    thongbao.Text = "Kết Nối Không Thành Công";
                }
            }
            catch (Exception e)
            {
                thongbao.Text = "Lỗi" + e.Message;
            }
            finally
            {
                conn.Close();
                com.Dispose();
            }
        }
       
        
        public void BindDataToGridView(int index)
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand com = new SqlCommand();
            try
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    String sql = " SELECT kh.TenKH,hh.TenHang,CONVERT(nvarchar,hd.NgayLap,101) as NgayLap,ct.DonGia,ct.SoLuong,(ct.DonGia*ct.SoLuong) as Thanhtien FROM tb_CTHD ct INNER JOIN tb_HangHoa hh ON ct.MaHH=hh.MaHang"
                    + " INNER JOIN tb_HoaDon hd ON ct.MaHD = hd.MaHD"
                    +" INNER JOIN tb_KhachHang kh ON hd.KhachHang = kh.MaKH"
                     +" ORDER BY ct.MaHD";
                    com = new SqlCommand(sql, conn);
                    DataTable table = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    da.Fill(table);
                    GridView1.DataSource = table;
                    if (index >= 0)
                        GridView1.PageIndex = index;
                    GridView1.DataBind();
                   

                }
                else
                {
                    thongbao.Text = "Kết Nối Không Thành Công";
                }
            }
            catch (Exception e)
            {
                thongbao.Text = "Lỗi" + e.Message;
            }
            finally
            {
                conn.Close();
                com.Dispose();
            }
        }
        

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand com = new SqlCommand();
            SqlCommand com1 = new SqlCommand();
            try
            {
                if (DropDownList1.SelectedValue.ToString() == "")
                {
                    thongbao.Text = "Điền Đầy ĐỦ Thông Tin";
                    return;
                }
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    String sql = "SELECT MaHD,sum(DonGia*SoLuong) as ThanhTien FROM tb_CTHD where (MaHD like '%'+@1+'%') GROUP BY MaHD";
                    com = new SqlCommand(sql, conn);
                    com.Parameters.AddWithValue("@1", DropDownList1.Text.Trim());
                    com.ExecuteNonQuery();
                    SqlDataAdapter da = new SqlDataAdapter(com);   
                    DataSet ds = new DataSet();   
                    da.Fill(ds);        
                    GridView2.DataSource = ds;
                    GridView2.DataBind();
                    thongbao.Text = "Tìm Kiếm Thành Công";
                }
                else
                {
                    thongbao.Text = "Kết Nối Không Thành Công";
                }
            }
            catch (Exception ee)
            {
                thongbao.Text = "loi" + ee.Message;
            }
            finally
            {
                conn.Close();
                com.Dispose();
                com1.Dispose();
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand com = new SqlCommand();
            SqlCommand com1 = new SqlCommand();
            try
            {
                if (DropDownList1.SelectedValue.ToString() == "")
                {
                    thongbao.Text = "Điền Đầy ĐỦ Thông Tin";
                    return;
                }
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    String sql = "SELECT kh.TenKH,hh.TenHang,CONVERT(nvarchar,hd.NgayLap,101) as NgayLap,ct.DonGia,ct.SoLuong,(ct.DonGia*ct.SoLuong) as Thanhtien FROM tb_CTHD ct INNER JOIN tb_HangHoa hh ON ct.MaHH=hh.MaHang"
                    +" INNER JOIN tb_HoaDon hd ON ct.MaHD = hd.MaHD"
                    +" INNER JOIN tb_KhachHang kh ON hd.KhachHang = kh.MaKH"
                    + " WHERE (ct.MaHD like '%'+@1+'%')"
                    + " ORDER BY ct.MaHD";
                    com = new SqlCommand(sql, conn);
                    com.Parameters.AddWithValue("@1", DropDownList1.Text.Trim());
                    com.ExecuteNonQuery();
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    thongbao.Text = "Tìm Kiếm Thành Công";
                }
                else
                {
                    thongbao.Text = "Kết Nối Không Thành Công";
                }
            }
            catch (Exception ee)
            {
                thongbao.Text = "loi" + ee.Message;
            }
            finally
            {
                conn.Close();
                com.Dispose();
                com1.Dispose();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachment; filename=KhachHang.xls");
            Response.ContentType = "application/excel";
            StringWriter stringwrite = new StringWriter();
            HtmlTextWriter html = new HtmlTextWriter(stringwrite);
            GridView1.RenderControl(html);
            GridView2.RenderControl(html);
            Response.Write(stringwrite.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
    }
}