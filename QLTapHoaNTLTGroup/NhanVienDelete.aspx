<%@ Page Title="" Language="C#" MasterPageFile="~/QLFORM.Master" AutoEventWireup="true" CodeBehind="NhanVienDelete.aspx.cs" Inherits="QLTapHoaNTLTGroup.NhanVienDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="100%" Width="100%" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSorting="GridView1_Sorting" PageSize="5" EmptyDataText="Không Có Dữ Liệu">
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
            <td style="width: 259px; text-align: right"><strong><em>
                <asp:Label ID="Label1" runat="server" style="font-weight: bold; color: #0000FF; font-family: 'Times New Roman', Times, serif" Text="Mã Nhân Viên"></asp:Label>
                </em></strong></td>
            <td style="width: 314px">
                <asp:TextBox ID="TextBox1" runat="server" Width="302px"></asp:TextBox>
            </td>
            <td rowspan="8">
                <asp:Image ID="Image2" runat="server" Height="196px" ImageUrl="~/anh/staff.gif" />
            </td>
        </tr>
        <tr>
            <td style="width: 259px; text-align: right"><strong><em>
                <asp:Label ID="Label2" runat="server" style="font-weight: bold; color: #0000FF; font-family: 'Times New Roman', Times, serif" Text="Tên Nhân Viên"></asp:Label>
                </em></strong></td>
            <td style="width: 314px">
                <asp:TextBox ID="TextBox2" runat="server" Width="302px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 259px; text-align: right"><strong><em>
                <asp:Label ID="Label3" runat="server" style="font-weight: bold; color: #0000FF; font-family: 'Times New Roman', Times, serif" Text="Giới Tính"></asp:Label>
                </em></strong></td>
            <td style="width: 314px">
                <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False">
                    <asp:ListItem>Chọn Giới Tính</asp:ListItem>
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 259px; text-align: right"><strong><em>
                <asp:Label ID="Label4" runat="server" style="font-weight: bold; color: #0000FF; font-family: 'Times New Roman', Times, serif" Text="Năm Sinh"></asp:Label>
                </em></strong></td>
            <td style="width: 314px">
                <asp:TextBox ID="TextBox3" runat="server" Width="302px" Enabled="False" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 259px; text-align: right"><strong><em>
                <asp:Label ID="Label5" runat="server" style="font-weight: bold; color: #0000FF; font-family: 'Times New Roman', Times, serif;" Text="Địa Chỉ"></asp:Label>
                </em></strong></td>
            <td style="width: 314px">
                <asp:TextBox ID="TextBox4" runat="server" Width="302px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 259px; text-align: right"><strong><em>
                <asp:Label ID="Label6" runat="server" style="font-weight: bold; color: #0000FF; font-family: 'Times New Roman', Times, serif;" Text="SDT"></asp:Label>
                </em></strong></td>
            <td style="width: 314px">
                <asp:TextBox ID="TextBox5" runat="server" Width="302px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 259px; text-align: right"><strong><em>
                <asp:Label ID="Label7" runat="server" style="font-weight: bold; color: #0000FF; font-family: 'Times New Roman', Times, serif;" Text="Mật Khẩu"></asp:Label>
                </em></strong></td>
            <td style="width: 314px">
                <asp:TextBox ID="TextBox6" runat="server" Width="302px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="call-to-action" style="width: 259px"><strong><em>
                <asp:Label ID="thongbao" runat="server" style="font-weight: bold; text-decoration: underline; color: #FF0000"></asp:Label>
                </em></strong></td>
            <td style="width: 314px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/anh/delete.png" OnClick="ImageButton1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
