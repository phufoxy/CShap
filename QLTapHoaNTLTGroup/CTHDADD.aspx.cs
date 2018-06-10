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
    public partial class CTHDADD : System.Web.UI.Page
    {
        string conString;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConnnectionString.connectionbyname("sqlString");
            if (!Page.IsPostBack)
            {
                BindDataToGridView(-1);
                dropshownhd();
                dropshownhh();
                dropshowndongia();
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
        public void dropshowndongia()
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand com = new SqlCommand();
            try
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    string sql = "SELECT * FROM tb_HangHoa ";
                    com = new SqlCommand(sql, conn);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    da.Fill(ds);
                    DropDownList3.DataSource = ds;
                    DropDownList3.DataTextField = "TenHang";
                    DropDownList3.DataValueField = "DonGia";
                    DropDownList3.DataBind();
                    DropDownList3.Items.Insert(0, "-->Chọn Đơn Giá Cho<--");
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
        public void dropshownhh()
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand com = new SqlCommand();
            try
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    string sql = "SELECT * FROM tb_HangHoa";
                    com = new SqlCommand(sql, conn);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    da.Fill(ds);
                    DropDownList2.DataSource = ds;
                    DropDownList2.DataTextField = "TenHang";
                    DropDownList2.DataValueField = "MaHang";
                    DropDownList2.DataBind();
                    DropDownList2.Items.Insert(0, "-->Chọn Hàng Hóa<--");
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
                    String sql = " SELECT ct.MaHD,hh.TenHang,ct.DonGia,ct.SoLuong,(ct.DonGia*ct.SoLuong) as ThanhTien FROM tb_CTHD ct INNER JOIN tb_HangHoa hh ON ct.MaHH=hh.MaHang"
                       + "  ORDER BY ct.MaHD";
                    com = new SqlCommand(sql, conn);
                    DataTable table = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    da.Fill(table);
                    GridView1.DataSource = table;
                    if (index >= 0)
                        GridView1.PageIndex = index;
                    GridView1.DataBind();
                    ((LinkButton)(GridView1.HeaderRow.Cells[0].Controls[0])).Text = "Mã HĐ";
                    ((LinkButton)(GridView1.HeaderRow.Cells[1].Controls[0])).Text = "Tên Hàng";
                    ((LinkButton)(GridView1.HeaderRow.Cells[2].Controls[0])).Text = "Đơn Giá";
                    ((LinkButton)(GridView1.HeaderRow.Cells[3].Controls[0])).Text = "Số Lượng";
                    ((LinkButton)(GridView1.HeaderRow.Cells[4].Controls[0])).Text = "Thành Tiền";

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
        private void BindDataToGridView(int pageIndex, string sortExpression, string sortDirection = "ASC")
        {
            SqlConnection sqlSconn = new SqlConnection();
            SqlCommand sqlScomm4 = new SqlCommand();
            try
            {
                sqlSconn.ConnectionString = conString;
                sqlSconn.Open();
                if (sqlSconn.State == System.Data.ConnectionState.Open)
                {
                    //Doc cac ban ghi tu CSDL va the hien tren luoi du lieu
                    GridView1.DataSource = null;
                    DataTable dt = new DataTable();
                    sqlScomm4.Connection = sqlSconn;
                    sqlScomm4.CommandType = CommandType.Text;
                    String sql = " SELECT ct.MaHD,hh.TenHang,ct.DonGia,ct.SoLuong,(ct.DonGia*ct.SoLuong) as ThanhTien FROM tb_CTHD ct INNER JOIN tb_HangHoa hh ON ct.MaHH=hh.MaHang"
                        + "  ORDER BY ct.MaHD";
                    sqlScomm4.CommandText = sql;
                    SqlDataAdapter da = new SqlDataAdapter(sqlScomm4);
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    //sắp xếp
                    dt.DefaultView.Sort = String.Format("{0} {1}", sortExpression, sortDirection);
                    //dung cai nay de phan trang
                    if (pageIndex >= 0)
                        GridView1.PageIndex = pageIndex;

                    GridView1.DataBind();
                    //Đổi tiêu đề của cột
                    //GridView1.Columns[1].HeaderText = "Tên hàng"; //Cách này sẽ làm mất link dùng để sắp xếp
                    //GridView1.Columns[2].HeaderText = "Thể loại";
                    ((LinkButton)(GridView1.HeaderRow.Cells[0].Controls[0])).Text = "Mã HĐ";
                    ((LinkButton)(GridView1.HeaderRow.Cells[1].Controls[0])).Text = "Tên Hàng";
                    ((LinkButton)(GridView1.HeaderRow.Cells[2].Controls[0])).Text = "Đơn Giá";
                    ((LinkButton)(GridView1.HeaderRow.Cells[3].Controls[0])).Text = "Số Lượng";
                    ((LinkButton)(GridView1.HeaderRow.Cells[4].Controls[0])).Text = "Thành Tiền";

                }
            }
            catch (Exception exc)
            {
                //MessageBox.Show
                Response.Write(String.Format("Loi: {0}\n{1}", exc.Message, exc.StackTrace));
            }
            finally
            {
                sqlSconn.Close();
                sqlScomm4.Dispose();
            }
        }
        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            try
            {
                string sortDirection;
                //Mặc định ASC
                if (ViewState["sortDirection"] != null) sortDirection = ViewState["sortDirection"] as string;
                else sortDirection = "ASC";
                //Đưa thông báo dưới dạng javascript alert
                Response.Write(String.Format("<script>alert('Sắp xếp {1} theo cột {0}')</script>", e.SortExpression, sortDirection));

                BindDataToGridView(GridView1.PageIndex, e.SortExpression, sortDirection);
                //Đảo chiều sau mỗi lần click
                if (sortDirection == "ASC") sortDirection = "DESC";
                else sortDirection = "ASC";
                //Lưu cách sắp xếp vào ViewState để có thể sử dụng khi chuyển sang lần gọi sau 
                ViewState["sortDirection"] = sortDirection;
            }
            catch (Exception exc)
            {
                Response.Write(String.Format("Lỗi: {0}<br />{1}", exc.Message, exc.StackTrace));
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            BindDataToGridView(e.NewPageIndex);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand com = new SqlCommand();

            try
            {
                if (DropDownList1.SelectedValue.ToString() == "" || DropDownList1.SelectedValue.ToString() == "" || DropDownList3.SelectedValue.ToString() == "" || TextBox4.Text.Trim() == "")
                {
                    thongbao.Text = "Điền Đầy ĐỦ Thông Tin";
                    return;
                }
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    string sql = "INSERT INTO tb_CTHD values (@1,@2,@3,@4)";
                    com = new SqlCommand(sql, conn);
                    com.Parameters.AddWithValue("@1", DropDownList1.SelectedValue.ToString());
                    com.Parameters.AddWithValue("@2", DropDownList2.SelectedValue.ToString());
                    com.Parameters.AddWithValue("@3", DropDownList3.SelectedValue.ToString());
                    com.Parameters.AddWithValue("@4", TextBox4.Text.Trim());
                    com.ExecuteNonQuery();
                    thongbao.Text = "Thêm Vào Thành Công";
                    BindDataToGridView(-1);
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
            }
        }

        
    }
}