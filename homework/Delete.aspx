<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="homework.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/Style.css" rel="stylesheet" />
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
&nbsp;<br />
            <asp:Button ID="Btn_Delete" runat="server" OnClick="Button1_Click" Text="Delete" CssClass="btns" BorderStyle="None" AutoPostBack="true" />
            <asp:Button ID="Btn_Main" runat="server" OnClick="Button2_Click" Text="Back to main page" CssClass="btns" BorderStyle="None" />
            <br />
        </div>
    </form>
</body>
</html>
