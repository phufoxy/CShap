<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QLTapHoaNTLTGroup.Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
	    position: relative;
         height: 100%;
        background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/slider-2.jpg");
         background-size: cover;
         overflow: auto;
        font-family: "Open Sans", Helvetica, Arial, sans-serif;
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
        #Button1{
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
        #table1 {
	text-align: left;
	width: 40%;
	
	border-radius: 5px;
	padding: 20px;
	margin: 0 auto;
    }
        #header {
	text-align: center;
	width: 40%;
	
	border-radius: 5px;
	padding: 20px;
	margin: 0 auto;
    }
       #footer {
	    font-size: 85%;
	   
	    color: #838383;
	    padding: 1em 3em;
    }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
        #Image1{
             background-color: #ffffff;
    opacity: 1;
            width:40%;
            border-radius:50%;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header" class="auto-style2">
                   <marquee behavior="Left"><asp:Label ID="thongbao" runat="server" Text="Trang Đăng Nhập Quản Lý Bán Hàng" Font-Size="XX-Large"></asp:Label></marquee>
                   <br />
                   <asp:Image ID="Image1" runat="server" ImageUrl="~/anh/avatar.png" />
        </div>
    <div id="table1">
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Tên Đăng Nhập" CssClass="auto-style4"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" placeholder="Enter Username"  runat="server"  required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2"   runat="server" Text="Password" CssClass="auto-style4"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" placeholder="Enter Password" runat="server"  TextMode="Password" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Đăng Nhập" />
                </td>
            </tr>
        </table>
        
    </div>
     <div id="footer">
		<p>Tạp Hóa VipProBaby &copy; 2015 tranvanphu.com</p>
	</div>
    </form> 
</body>
</html>
