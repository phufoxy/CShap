<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InHoaDon.aspx.cs" Inherits="QLTapHoaNTLTGroup.InHoaDon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 575px;
        }
        .auto-style3 {
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            color: #0000CC;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2"><strong><em>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="In Hóa Đơn Bán Hàng."></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" Width="100%">
                    </asp:GridView>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="74px" ImageUrl="~/anh/active-search.png" OnClick="ImageButton2_Click" Width="97px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView2" runat="server" Width="100%">
                    </asp:GridView>
                </td>
                <td>
                    <asp:Label ID="thongbao" runat="server"></asp:Label>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/anh/active-search.png" OnClick="ImageButton1_Click" Height="65px" />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="In Ra Hóa Đơn" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/HoaDonADD.aspx">Quay Lại Trang Chủ</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
