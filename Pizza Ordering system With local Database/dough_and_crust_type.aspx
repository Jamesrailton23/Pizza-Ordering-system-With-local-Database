<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dough_and_crust_type.aspx.cs" Inherits="Pizza_Ordering_system_With_local_Database.dough_crust_type" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dough And Crust</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Dough Type</h1>
            <br />
            <br />
            <h3>&nbsp;
                <asp:RadioButton ID="dough_normal" GroupName="dough" runat="server" Text="Normal dough" />
            </h3>
            <br />
            <br />
            <h3>&nbsp;
                <asp:RadioButton ID="dough_glueten_free" GroupName="dough" runat="server" Text="Normal dough" />
            </h3>
            <br />
            <br />
            <p>&nbsp;
              <asp:Button ID="button_dough_confirm" runat="server" OnClick="Button_dough_confirm_Click" Text="Confirm"/>
            </p>
            <h1>Crust type</h1>
            <br />
            <br />
            <br />
            <h3>&nbsp;
                <asp:RadioButton ID="rb_normal_crust" GroupName="crust" runat="server" Text="Normal Crust" />
            </h3>
            <br />
            <br />
            <br />
            <h3>&nbsp;
                <asp:RadioButton ID="rb_deep_dish" GroupName="crust" runat="server" Text="Deep Dish" />
            </h3>
            <br />
            <br />
            <br />
            <h3>&nbsp;
                <asp:RadioButton ID="rb_stuffed_crust" GroupName="crust" runat="server" Text="Stuffed" />
            </h3>
            <br />
             <p>&nbsp;
              <asp:Button ID="button_crust_confirm" runat="server" OnClick="Button_crust_confirm_Click" Text="Confirm"/>
            </p>
            <br />
            <br />
            <a href="payment_and_order.aspx">Next Page</a>
        </div>
    </form>
</body>
</html>