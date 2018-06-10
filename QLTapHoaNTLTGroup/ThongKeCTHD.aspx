<%@ Page Title="" Language="C#" MasterPageFile="~/QLFORM.Master" AutoEventWireup="true" CodeBehind="ThongKeCTHD.aspx.cs" Inherits="QLTapHoaNTLTGroup.ThongKeCTHD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" CaptionAlign="Bottom" CellPadding="4" ForeColor="#333333" GridLines="None" Height="100%" HorizontalAlign="Center" Width="96%" AllowPaging="True" AllowSorting="True" OnSorting="GridView1_Sorting" PageSize="5" EmptyDataText="Không Có Dữ Liệu Nào" Font-Size="Medium" OnPageIndexChanging="GridView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 414px; text-align: left"><strong><em>
                <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #0000CC" Text="Ngày Lập HD"></asp:Label>
                </em></strong>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Width="299px"></asp:TextBox>
            </td>
            <td class="call-to-action"><strong>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tổng Tiền" />
                <asp:Label ID="Label2" runat="server" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #FF0000; font-size: x-large" Text="Tổng Tiền : "></asp:Label>
                <asp:Label ID="tongtien" runat="server" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #FF0000; font-size: x-large"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="call-to-action" style="width: 414px">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="~/anh/active-search.png" OnClick="ImageButton1_Click" />
                <strong>
                <asp:Label ID="thongbao" runat="server" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: large; color: #FF0000"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
