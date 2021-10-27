using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Added using statements
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Pizza_Ordering_system_With_local_Database
{
	public partial class _default : System.Web.UI.Page
	{
		//SQL variables
		private SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

		private SqlCommand database_cmd;

		// int variables
		public static int customer_order_number = 0;

		protected void Page_Load(object sender, EventArgs e)
		{
			//Opens the SQL connection to the page
			connect.Open();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			//Two methods, executed when the button clicked
			sql_input();
			labels();
		}

		public void sql_input()
		{
			// #ToFix unable at the moment to get the catch statement to work so needs to left blank
			try
			{
				//sets the order number from the counter to the database
				database_cmd = new SqlCommand("insert into pizza_order values('" + customer_order_number + "','" + "blank" + "','" + "blank" + "','" + "blank" + "')", connect);
				database_cmd.ExecuteNonQuery();
				connect.Close();

				//displays the order number for use and also increases the order number by one so that another order can be added into the
				label_order_number.Text = customer_order_number.ToString();
				customer_order_number++;
			}
			catch
			{
			}
		}

		public void Button_restart_Click(object sender, EventArgs e)
		{
			//clears the current order in the database, allows for the same order number to be used once the page loads again.
			database_cmd = new SqlCommand("delete from pizza_order where ORDER_NUMBER='" + customer_order_number + "'", connect);
			database_cmd.ExecuteNonQuery();
			connect.Close();

			//clears labels on screen
			label_yourOrder.Text = "";
			label_message.Text = "";
			label_order_number.Text = "";

			//resets the order number
			customer_order_number = 0;
		}

		protected void labels()
		{
			//shows the thank-you message for executing the order process
			label_yourOrder.Text = "Thank you, Your order Number is";
			label_message.Text = "Please do not forget this number as it is used to update your order";
		}
	}
}