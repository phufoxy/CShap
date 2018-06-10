<%@ Page Title="" Language="C#" MasterPageFile="~/QLFORM.Master" AutoEventWireup="true" CodeBehind="HangHoaDelete.aspx.cs" Inherits="QLTapHoaNTLTGroup.HangHoaDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
        <tr>
            <td class="call-to-action" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%" EmptyDataText="Không Có Dữ Liệu " OnPageIndexChanging="GridView1_PageIndexChanging" OnSorting="GridView1_Sorting">
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
            <td style="width: 192px; text-align: right"><strong><em>
                <asp:Label ID="Label1" runat="server" style="font-weight: bold; font-family: 'Times New Roman', Times, serif; color: #0000CC" Text="Mã Hàng"></asp:Label>
                </em></strong></td>
            <td style="width: 266px">
                <asp:TextBox ID="TextBox1" runat="server" Width="252px"></asp:TextBox>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image2" runat="server" Height="166px" ImageUrl="~/anh/van-chuyen-hang-hoa-hcm1.jpg" />
            </td>
        </tr>
        <tr>
            <td style="width: 192px; text-align: right"><strong><em>
                <asp:Label ID="Label2" runat="server" style="font-weight: bold; font-family: 'Times New Roman', Times, serif; color: #0000CC" Text="Tên Hàng"></asp:Label>
                </em></strong></td>
            <td style="width: 266px">
                <asp:TextBox ID="TextBox2" runat="server" Width="252px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 192px; text-align: right"><strong><em>
                <asp:Label ID="Label3" runat="server" style="font-weight: bold; font-family: 'Times New Roman', Times, serif; color: #0000CC" Text="Đơn Giá"></asp:Label>
                </em></strong></td>
            <td style="width: 266px">
                <asp:TextBox ID="TextBox3" runat="server" Width="252px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 192px; text-align: right"><strong><em>
                <asp:Label ID="Label4" runat="server" style="font-weight: bold; font-family: 'Times New Roman', Times, serif; color: #0000CC" Text="Số Lượng"></asp:Label>
                </em></strong></td>
            <td style="width: 266px">
                <asp:TextBox ID="TextBox4" runat="server" Width="252px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="call-to-action" style="width: 192px">
                <asp:Label ID="thongbao" runat="server"></asp:Label>
            </td>
            <td style="width: 266px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/anh/add.png" OnClick="ImageButton1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
