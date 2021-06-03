<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="homework.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

.btns{
    background-color:rgb(20,170,255);
    height:30px;
    color:white;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" Height="221px" Width="866px">
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            <asp:TextBox ID="Txt_Id" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="Txt_User" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="Txt_Pass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Btn_Edit" runat="server" OnClick="Button1_Click" Text="Edit" CssClass="btns" BorderStyle="None" AutoPostBack="true" />
            <asp:Button ID="Btn_Main" runat="server" OnClick="Button2_Click" Text="Back to main page" CssClass="btns" BorderStyle="None" />
        </div>
    </form>
</body>
</html>
