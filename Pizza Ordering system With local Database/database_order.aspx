<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="database_order.aspx.cs" Inherits="Pizza_Ordering_system_With_local_Database.database_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ORDER DATABASE (STAFF ONLY)</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<br />
			<a href="default.aspx">Restart</a>
			<br />
			<h1>
				<u>CUSTOMER ORDERS</u>
			</h1>
		</div>
		<div>
			<p>
				&nbsp;<asp:Button ID="button_search" runat="server" Text="Search Order" Width="115px" OnClick="button_search_Click" />
				&nbsp;--
				<asp:TextBox ID="tb_search" runat="server"></asp:TextBox>
				<br />
				<br />
				&nbsp;
				<asp:Button ID="button_delete" runat="server" Text="Delete Order" Width="115px" OnClick="button_delete_Click" />
				&nbsp;--
				<asp:TextBox ID="tb_delete" runat="server"></asp:TextBox>
				<br />
				<br />
				&nbsp;<asp:Button ID="button_refresh" runat="server" Text="Refresh Table" Width="115px" OnClick="button_refresh_Click" />
			</p>
		</div>
		<asp:GridView ID="GridView_order" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ORDER_NUMBER" DataSourceID="SqlDataSource2">
			<columns>
				<asp:BoundField DataField="ORDER_NUMBER" HeaderText="ORDER_NUMBER" ReadOnly="True" SortExpression="ORDER_NUMBER" />
				<asp:BoundField DataField="PIZZA_SIZE" HeaderText="PIZZA_SIZE" SortExpression="PIZZA_SIZE" />
				<asp:BoundField DataField="DOUGH_TYPE" HeaderText="DOUGH_TYPE" SortExpression="DOUGH_TYPE" />
				<asp:BoundField DataField="CRUST_TYPE" HeaderText="CRUST_TYPE" SortExpression="CRUST_TYPE" />
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
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [pizza_order]"></asp:SqlDataSource>
	</form>
</body>
</html>