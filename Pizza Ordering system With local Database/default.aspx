<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Pizza_Ordering_system_With_local_Database._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Big Johns's pizza Co</title>
</head>
<body>
	<form id="form1" runat="server">
		<h1>Big John's Pizza Co</h1>
		<br />
		<h3>"The best Pizza in the whole of the Tri-State area"</h3>
		<br />
		<br />
		<br />
		<br />
		<br />
		<p>Welcome to Big Johns Pizza Co</p>
		<br />
		<p>To get started  you order please click the "Start Order" button </p>
		<br />
		<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Start Order" />
		&nbsp;
        <asp:Button ID="button_restart" runat="server" OnClick="Button_restart_Click" Text="Restart" ToolTip="Resets the database table" />
		<br />
		<br />
		&nbsp;
        <asp:Label ID="label_yourOrder" runat="server"></asp:Label>
		<br />
		<br />
		&nbsp;
        <asp:Label ID="label_order_number" runat="server"></asp:Label>
		<br />
		<br />
		&nbsp;
        <asp:Label ID="label_message" runat="server"></asp:Label>
		<br />
		<br />
		<a href="pizza_size.aspx">Start Order</a>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
	</form>
</body>
</html>