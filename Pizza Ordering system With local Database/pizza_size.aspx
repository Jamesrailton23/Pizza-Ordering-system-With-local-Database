<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pizza_size.aspx.cs" Inherits="Pizza_Ordering_system_With_local_Database.pizza_size" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pizza Size</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Pizza Size</h1>
            <br />
            <br />
            <h3>&nbsp- Pizza Size 13 inch : cost - £13.00</h3>
            &nbsp
            <asp:ImageButton ID="pizza_size_13" runat="server" Width="100px" Height="100px" OnClick="Pizza_size_13_Click" />
            <br />
            <br />
            <h3>&nbsp- Pizza Size 15 inch : cost - £15.00</h3>
            &nbsp
            <asp:ImageButton ID="pizza_size_15" runat="server" Width="100px" Height="100px" OnClick="Pizza_size_15_Click" />
            <br />
            <br />
            <h3>&nbsp- Pizza Size 17 inch : cost - £17.00</h3>
            &nbsp
            <asp:ImageButton ID="pizza_size_17" runat="server" Width="100px" Height="100px" OnClick="Pizza_size_17_Click" />
            <br />
            <br />
            <asp:Label ID="label_confirm" runat="server"></asp:Label>
            <br />
            <br />
            <a href="dough_and_crust_type.aspx">Next Page</a>
        </div>
    </form>
</body>
</html>