 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XML.aspx.cs" Inherits="homework.XML" %>

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
&nbsp;<br />
            <br /> 
            <asp:Button ID="Btn_Send" runat="server" Text="Send to DB" CssClass="btns" BorderStyle="None" OnClick="Btn_Send_Click" />
            <asp:Button ID="Btn_Edit" runat="server" Text="Edit" CssClass="btns" BorderStyle="None" OnClick="Btn_Edit_Click" />
            <asp:Button ID="Btn_Delete" runat="server" Text="Delete" CssClass="btns" BorderStyle="None" OnClick="Btn_Delete_Click" />
            <asp:Button ID="Btn_Add" runat="server" Text="Add" CssClass="btns" BorderStyle="None" OnClick="Btn_Add_Click" />
        </div>
    </form>
</body>
</html>
