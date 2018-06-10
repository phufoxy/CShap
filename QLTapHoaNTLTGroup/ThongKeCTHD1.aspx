<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongKeCTHD1.aspx.cs" Inherits="QLTapHoaNTLTGroup.ThongKeCTHD1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thêm Vào</title>
    <style>
        *{
	    box-sizing: border-box;
	    -moz-box-sizing:border-box;
	    -webkit-box-sizing:border-box;
        }
 
body{
	 position: relative;
         height: 100%;
        background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/slider-2.jpg");
         background-size: cover;
         overflow: auto;
        font-family: "Open Sans", Helvetica, Arial, sans-serif;
}
a{
    text-decoration:none;
    color:#2ecc71;
    transition: all 0.5s;
    
    -webkit-transition: all 0.5s;
}
a:hover, a:visited{
    color:#ecf0f1;
}
#container{
    padding-left:150px;
    padding-right:150px;
    position:relative;
    left:0;
    width:100%
}
#menu ul{
    list-style-type:none;
    background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/slider-2.jpg");
    text-align:center;
    border-radius:10px;
}
#menu ul li{
    color:#ecf0f1;
    display:inline-table;
    width:120px;
    height:40px;
    line-height:40px;
    position:relative;
}
menu ul li a{
	color: #f1f1f1;
	text-decoration: none;
	display: block;
}
#menu ul li a:hover{
	background-color: #ecf0f1;
	color: #3498db;
}
#menu ul li > .sub-menu{
	display: none;
	position: absolute;
	padding-left: 0px;
	transform:  color 0.3s, background 0.3s;

}
#menu ul li:hover .sub-menu{
	display: block;
}
#menu ul li > .sub-menu1{
	display: none;
	position: absolute;
	padding-left: 0px;
	transform:  color 0.3s, background 0.3s;

}
#menu ul li:hover .sub-menu1{
	display: block;
}
#header, .call-to-action{
	text-align: center;

}
#GridView1{
    border-radius:10%;
    width:100%;
}
#giv{
    text-align: center;
	width: 80%;
	border-radius: 5px;
	padding: 20px;
	margin: 0 auto;
}
#footer{
      background-color: #ffffff;
    opacity: .4;
	font-size: 85%;
	
	
	padding: 1em 3em;
     background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/slider-2.jpg");
}
#main{
    width:100%;
    height:10%;
    margin-left: 0 auto;
}
#Image1{
    margin:0 auto;
      background-color: #ffffff;
    opacity: .4;
    width:20%;
    border-radius:20%;
}
         #table1 {
	    text-align: left;
	    width: 100%;
	    border-radius: 5px;
	    padding: 10px;
	    margin: 0 auto;
    }
         #TextBox1{
            background-color: #ffffff;
            opacity: 1;
            width: 100%;
            
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
        }
         #TextBox2{
            background-color: #ffffff;
            opacity: 1;
            width: 100%;
            
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
        }
         #TextBox3{
            background-color: #ffffff;
            opacity: 1;
            width: 100%;
            
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
        }
         #TextBox4{
            background-color: #ffffff;
            opacity: 1;
            width: 100%;
           
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
        }
         #TextBox5{
            background-color: #ffffff;
            opacity: 1;
            width: 100%;
            
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
        }
         #TextBox6{
            background-color: #ffffff;
            opacity: 1;
            width: 100%;
            
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
        }
         #TextBox7{
            background-color: #ffffff;
            opacity: 1;
            width: 100%;
            
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
        }
         #TextBox8,#tongtien{
            background-color: #ffffff;
            opacity: 1;
            width: 100%;
           
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
        }
         #DropDownList1{
               background-color: #ffffff;
            opacity: 1;
            width: 100%;
           
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box; 
         }
          #Button1,#Button2{
             background-color: #ffffff;
    opacity: 1;
            width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
        }
        #imgheader{
            width:100%;
            height:80px;
            margin-bottom:0 auto;
        }
        #Image2{
            height:100%;
            width:50%;
            display: block;
            margin: 0 auto;
        }
        #Label9{
            color:red;
            display: block;
            margin: 0 auto;
        }
         #DropDownList2{
               background-color: #ffffff;
            opacity: .4;
            width: 100%;
           
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box; 
         }
          #DropDownList3{
               background-color: #ffffff;
            opacity: .4;
            width: 100%;
           
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box; 
         }
          #DropDownList4{
               background-color: #ffffff;
            opacity: .4;
            width: 100%;
           
	        padding: 12px 20px;
	        margin: 8px 0;
	        display: inline-block;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box; 
         }
          .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 419px;
        }
        .auto-style3 {
            width: 419px;
            text-align: center;
        }
          .auto-style4 {
            color: #333333;
        }
          </style>
</head>
<body>
    <form id="form1" runat="server">
      <div id="imgheader">
          <asp:Image ID="Image2" runat="server" ImageUrl="~/anh/triangle-ultimate-1.png" />
      <marquee behavior="alternate"><asp:Label ID="Label9" runat="server" Text="Trang Web Quản Lý Bán Hàng Hàng Đầu Việt Nam Hiện Nay....Kính Mời Quý Khách Đến Mua Và Sử Dụng Sản Phẩm!"></asp:Label></marquee> 
      </div>
    <div id="container">	
		<div id="menu">
			<ul>
				<li><a href="TrangChu.aspx">Trang Chủ</a></li>
				<li><a href="KhachHangADD.aspx">Khách Hàng</a>
					<ul class="sub-menu">
						<li><a href="KhachHangADD.aspx">Thêm Vào</a></li>
						<li><a href="KhachHangUpdate.aspx">Cập Nhập</a></li>
						<li><a href="KhachHangDelete.aspx">Xóa</a></li>
						<li><a href="KhachHangSeach.aspx">Tìm Kiếm</a></li>
					</ul>
				</li>
				<li><a href="NhanVienADD.aspx">Nhân Viên</a>
					<ul class="sub-menu1">
						<li><a href="NhanVienADD.aspx">Thêm Vào</a></li>
						<li><a href="NhanVienUpdate.aspx">Cập Nhập</a></li>
						<li><a href="NhanVienDelete.aspx">Xóa</a></li>
						<li><a href="NhanVienSearch.aspx">Tìm Kiếm</a></li>
					</ul>
				</li>
				<li><a href="HangHoaADD.aspx">Hàng Hóa</a>
                    <ul class="sub-menu1">
						<li><a href="HangHoaADD.aspx">Thêm Vào</a></li>
						<li><a href="HangHoaUpdate.aspx">Cập Nhập</a></li>
						<li><a href="HangHoaDelete.aspx">Xóa</a></li>
						<li><a href="HangHoaSearch.aspx">Tìm Kiếm</a></li>
					</ul>
				</li>
				<li><a href="HoaDonADD.aspx">Hóa Đơn</a>
                     <ul class="sub-menu1">
						<li><a href="HoaDonADD.aspx">Thêm Vào</a></li>
						<li><a href="HoaDonUpdate.aspx">Cập Nhập</a></li>
						<li><a href="HoaDonDelete.aspx">Xóa</a></li>
						<li><a href="HoaDonSearch.aspx">Tìm Kiếm</a></li>
					</ul>
				</li>
				<li><a href="CTHDADD.aspx">CTHD</a>
                     <ul class="sub-menu1">
						<li><a href="CTHDADD.aspx">Thêm Vào</a></li>
						<li><a href="CTHDUpdate.aspx">Cập Nhập</a></li>
						<li><a href="CTHDDelete.aspx">Xóa</a></li>
						<li><a href="CTHDSearch.aspx">Tìm Kiếm</a></li>
                        <li><a href="InHoaDon.aspx">In Hóa Đơn</a></li>
                        <li><a href="ThongKeCTHD.aspx">Thống Kê </a></li>
					</ul>
				</li>
                <li><a href="DangXuat.aspx">Đăng Xuất</a></li>
			</ul>
		</div><!--menu-->
        <section>
            <div id="main" align="center">
               
                    </div>
            <div id="giv">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSorting="GridView1_Sorting" PageSize="5" ></asp:GridView>
            </div>
            <div id="table1">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Ngày Lập Hóa Đơn" CssClass="auto-style4"></asp:Label>
                        </td>
                        <td>
                <strong>
                <asp:Label ID="thongbao" runat="server" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: large; " CssClass="auto-style4"></asp:Label>
                </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Tổng Tiền" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" Text="Thống Kê" OnClick="Button1_Click" />
                        </td>
                        <td>
                            <asp:TextBox ID="tongtien" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>

            </div>
        </section>
         <section id="footer">
            <div>
                <p>Tạp Hóa VipProBaby &copy; 2015 tranvanphu.com</p>
            </div>
        </section>
    </form>
</body>
</html>
