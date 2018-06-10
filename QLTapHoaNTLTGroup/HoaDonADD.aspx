<%@ Page Title="" Language="C#" MasterPageFile="~/QLFORM.Master" AutoEventWireup="true" CodeBehind="HoaDonADD.aspx.cs" Inherits="QLTapHoaNTLTGroup.HoaDonADD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3" class="call-to-action">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSorting="GridView1_Sorting" EmptyDataText="Không Có Dữ Liệu">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 143px; text-align: right"><strong><em>
                <asp:Label ID="Label1" runat="server" style="color: #0000FF; font-weight: bold" Text="Mã Hóa Đơn"></asp:Label>
                </em></strong></td>
            <td style="width: 346px">
                <asp:TextBox ID="TextBox1" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image2" runat="server" Height="175px" ImageUrl="~/anh/van-chuyen-hang-hoa-hcm1.jpg" />
            </td>
        </tr>
        <tr>
            <td style="width: 143px; text-align: right"><strong><em>
                <asp:Label ID="Label2" runat="server" style="color: #0000FF; font-weight: bold" Text="Ngày Lập"></asp:Label>
                </em></strong></td>
            <td style="width: 346px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="330px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 143px; text-align: right"><strong><em>
                <asp:Label ID="Label3" runat="server" style="color: #0000FF; font-weight: bold" Text="Người Lập"></asp:Label>
                </em></strong></td>
            <td style="width: 346px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 143px; text-align: right"><strong><em>
                <asp:Label ID="Label4" runat="server" style="color: #0000FF; font-weight: bold" Text="Tên Khách Hàng"></asp:Label>
                </em></strong></td>
            <td style="width: 346px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">
                <asp:Label ID="thongbao" runat="server"></asp:Label>
            </td>
            <td style="width: 346px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/anh/add.png" OnClick="ImageButton1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
