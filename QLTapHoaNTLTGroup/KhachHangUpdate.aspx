<%@ Page Title="" Language="C#" MasterPageFile="~/QLFORM.Master" AutoEventWireup="true" CodeBehind="KhachHangUpdate.aspx.cs" Inherits="QLTapHoaNTLTGroup.KhachHangUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
    <tr>
        <td style="text-align: right" colspan="3">
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
        <td style="width: 194px; text-align: right"><em><strong>
            <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF" Text="Mã Khách Hàng"></asp:Label>
            </strong></em></td>
        <td style="width: 319px">
            <asp:TextBox ID="TextBox1" runat="server" Width="306px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 194px; text-align: right"><em><strong>
            <asp:Label ID="Label2" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF" Text="Tên Khách Hàng"></asp:Label>
            </strong></em></td>
        <td style="width: 319px">
            <asp:TextBox ID="TextBox2" runat="server" Width="306px"></asp:TextBox>
        </td>
        <td rowspan="8">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/anh/khachhang.jpg" Width="293px" />
        </td>
    </tr>
    <tr>
        <td style="width: 194px; text-align: right"><em><strong>
            <asp:Label ID="Label3" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF" Text="Giới Tính"></asp:Label>
            </strong></em></td>
        <td style="width: 319px">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Chọn Giới Tính</asp:ListItem>
                <asp:ListItem>Nam</asp:ListItem>
                <asp:ListItem>Nữ</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 194px; text-align: right"><em><strong>
            <asp:Label ID="Label4" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF" Text="Ngày Vào"></asp:Label>
            </strong></em></td>
        <td style="width: 319px">
            <asp:TextBox ID="TextBox4" runat="server" Width="306px" TextMode="Date"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 194px; text-align: right"><em><strong>
            <asp:Label ID="Label5" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF" Text="Địa Chỉ"></asp:Label>
            </strong></em></td>
        <td style="width: 319px">
            <asp:TextBox ID="TextBox5" runat="server" Width="306px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 194px; text-align: right"><em><strong>
            <asp:Label ID="Label6" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF" Text="Số Điện Thoại"></asp:Label>
            </strong></em></td>
        <td style="width: 319px">
            <asp:TextBox ID="TextBox6" runat="server" Width="306px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 194px; text-align: right"><em><strong>
            <asp:Label ID="Label7" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF" Text="Email"></asp:Label>
            </strong></em></td>
        <td style="width: 319px">
            <asp:TextBox ID="TextBox7" runat="server" Width="306px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 194px; text-align: right"><em><strong>
            <asp:Label ID="Label8" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #0000FF" Text="Điểm Tích Lũy"></asp:Label>
            </strong></em></td>
        <td style="width: 319px">
            <asp:TextBox ID="TextBox8" runat="server" Width="306px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 194px">
            <asp:Label ID="thongbao" runat="server"></asp:Label>
        </td>
        <td class="call-to-action" style="width: 319px; text-align: left;">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/anh/sửa.png" Width="26px" OnClick="ImageButton1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
