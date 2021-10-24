<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="database_order.aspx.cs" Inherits="Pizza_Ordering_system_With_local_Database.database_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ORDER DATABASE (STAFF ONLY)</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [pizza_table]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <h1>ORDERS
            </h1>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:GridView ID="GridView_order" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Order_number" DataSourceID="SqlDataSource1">
            <columns>
                <asp:BoundField DataField="Order_number" HeaderText="Order_number" ReadOnly="True" SortExpression="Order_number" />
                <asp:BoundField DataField="Pizza_size" HeaderText="Pizza_size" SortExpression="Pizza_size" />
                <asp:BoundField DataField="Dough_type" HeaderText="Dough_type" SortExpression="Dough_type" />
                <asp:BoundField DataField="Crust_type" HeaderText="Crust_type" SortExpression="Crust_type" />
            </columns>
            <footerstyle backcolor="#99CCCC" forecolor="#003399" />
            <headerstyle backcolor="#003399" font-bold="True" forecolor="#CCCCFF" />
            <pagerstyle backcolor="#99CCCC" forecolor="#003399" horizontalalign="Left" />
            <rowstyle backcolor="White" forecolor="#003399" />
            <selectedrowstyle backcolor="#009999" font-bold="True" forecolor="#CCFF99" />
            <sortedascendingcellstyle backcolor="#EDF6F6" />
            <sortedascendingheaderstyle backcolor="#0D4AC4" />
            <sorteddescendingcellstyle backcolor="#D6DFDF" />
            <sorteddescendingheaderstyle backcolor="#002876" />
        </asp:GridView>
    </form>
</body>
</html>