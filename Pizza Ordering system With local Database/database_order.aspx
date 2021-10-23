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
            <h1>
                ORDERS
            </h1>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Order_number" DataSourceID="SqlDataSource1" Height="233px" Width="655px">
            <Columns>
                <asp:BoundField DataField="Order_number" HeaderText="Order_number" ReadOnly="True" SortExpression="Order_number" />
                <asp:BoundField DataField="Pizza_size" HeaderText="Pizza_size" SortExpression="Pizza_size" />
                <asp:BoundField DataField="Dough_type" HeaderText="Dough_type" SortExpression="Dough_type" />
                <asp:BoundField DataField="Crust_type" HeaderText="Crust_type" SortExpression="Crust_type" />
                <asp:BoundField DataField="Topping_Set" HeaderText="Topping_Set" SortExpression="Topping_Set" />
                <asp:BoundField DataField="Customer_name" HeaderText="Customer_name" SortExpression="Customer_name" />
                <asp:BoundField DataField="Customer_adress" HeaderText="Customer_adress" SortExpression="Customer_adress" />
                <asp:BoundField DataField="customer_phone" HeaderText="customer_phone" SortExpression="customer_phone" />
                <asp:BoundField DataField="customer_email" HeaderText="customer_email" SortExpression="customer_email" />
                <asp:BoundField DataField="pick_up or delivery" HeaderText="pick_up or delivery" SortExpression="pick_up or delivery" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </form>
</body>
</html>