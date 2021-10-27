<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dough_and_crust_type.aspx.cs" Inherits="Pizza_Ordering_system_With_local_Database.dough_crust_type" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Dough And Crust</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<br />
			<p>
				Please enter the order number -
                <asp:TextBox ID="tb_order_number" runat="server"></asp:TextBox>
			</p>
			<h1>Dough Type</h1>
			<br />
			<asp:RadioButtonList ID="rbl_dough" runat="server" Height="179px">
				<asp:ListItem Value="Normal">Normal</asp:ListItem>
				<asp:ListItem>Gluten Free</asp:ListItem>
			</asp:RadioButtonList>
			<h1>Crust type</h1>
			<br />
			<asp:RadioButtonList ID="rbl_crust" runat="server" Height="245px">
				<asp:ListItem>Normal</asp:ListItem>
				<asp:ListItem>Stuffed</asp:ListItem>
				<asp:ListItem>Deep Dish</asp:ListItem>
			</asp:RadioButtonList>
			<br />
			<br />
			<p>
				&nbsp;
                <asp:Button ID="button_order_confirm" runat="server" OnClick="Button_crust_confirm_Click" Text="Confirm" />
			</p>
			<br />
			<br />
			<a href="payment_and_order.aspx">Next Page</a>
		</div>
	</form>
</body>
</html>