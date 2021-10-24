<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment_and_order.aspx.cs" Inherits="Pizza_Ordering_system_With_local_Database.payment_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><u>Checkout</u></h1>
            <br />
            <h3>Thank you using Big John's Pizza Co</h3>
            <h3>Your Order is listed in the basket below,
                to confirm please tick the Checkbox and click order </h3>
            <br />
            <br />
            <br />
            <br />
            <h2><u>Basket</u></h2>
            <br />
            <p>
                &nbsp;&nbsp;
                Pizza Size -
                <asp:Label ID="lable_pizza_size" runat="server"></asp:Label>
            </p>
            <br />
            <p>
                &nbsp;&nbsp;
                Dough Type -
                <asp:Label ID="lable_dough_type" runat="server"></asp:Label>
            </p>
            <br />
            <p>
                &nbsp;
                Crust Type -
                <asp:Label ID="lable_crust_type" runat="server"></asp:Label>
            </p>
            <br />
            <br />
            <p>
                &nbsp;
                VAT -
                <asp:Label ID="lable_vat" runat="server"></asp:Label>
            </p>
            <br />
            <h3>Total Cost -
                <asp:Label ID="label_total_cost" runat="server"></asp:Label>
            </h3>
            <br />
            <br />
            <asp:CheckBox ID="checkbox_confirm_order" runat="server" Text="Confirm Order" />
            <br />
            <br />
            <asp:Button ID="button_order" runat="server" OnClick="Button_order_Click" Text="ORDER" />
            <br />
            <br />
            <asp:Label ID="lable_thankyou_order" runat="server"></asp:Label>
            <br />
            <br />
            <a href="database_order.aspx">hidden</a>
        </div>
    </form>
</body>
</html>