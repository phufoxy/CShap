<%@ Page Title="" Language="C#" MasterPageFile="~/QLFORM.Master" AutoEventWireup="true" CodeBehind="CTHDADD.aspx.cs" Inherits="QLTapHoaNTLTGroup.CTHDADD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="call-to-action" colspan="3">
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
            <td style="width: 192px; text-align: right"><strong><em>
                <asp:Label ID="Label1" runat="server" style="font-weight: bold; font-family: 'Times New Roman', Times, serif; color: #0000CC" Text="Mã Hóa Đơn"></asp:Label>
                </em></strong></td>
            <td style="width: 266px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image2" runat="server" Height="166px" ImageUrl="~/anh/van-chuyen-hang-hoa-hcm1.jpg" />
            </td>
        </tr>
        <tr>
            <td style="width: 192px; text-align: right"><strong><em>
                <asp:Label ID="Label2" runat="server" style="font-weight: bold; font-family: 'Times New Roman', Times, serif; color: #0000CC" Text="Mã Hàng Hóa"></asp:Label>
                </em></strong></td>
            <td style="width: 266px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 192px; text-align: right"><strong><em>
                <asp:Label ID="Label3" runat="server" style="font-weight: bold; font-family: 'Times New Roman', Times, serif; color: #0000CC" Text="Đơn Giá"></asp:Label>
                </em></strong></td>
            <td style="width: 266px">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 192px; text-align: right"><strong><em>
                <asp:Label ID="Label4" runat="server" style="font-weight: bold; font-family: 'Times New Roman', Times, serif; color: #0000CC" Text="Số Lượng"></asp:Label>
                </em></strong></td>
            <td style="width: 266px">
                <asp:TextBox ID="TextBox4" runat="server" Width="252px"></asp:TextBox>
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
