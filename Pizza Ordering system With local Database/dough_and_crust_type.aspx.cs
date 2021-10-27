using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Pizza_Ordering_system_With_local_Database
{
	public partial class dough_crust_type : System.Web.UI.Page
	{
		//SQL Connection
		private SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

		private SqlCommand database_cmd;

		private string crust_choice;
		private string dough_choice;

		protected void Page_Load(object sender, EventArgs e)
		{
		}

		protected void Button_crust_confirm_Click(object sender, EventArgs e)
		{
			connect.Open();
			database_cmd = new SqlCommand("Update pizza_order set CRUST_TYPE='" + crust_type() + "', DOUGH_TYPE='" + dough_type() + "' where ORDER_NUMBER='" + tb_order_number.Text + "'", connect);
			database_cmd.ExecuteNonQuery();
			connect.Close();
		}

		protected string dough_type()
		{
			//radio button switch statement to chose dough type
			switch (rbl_dough.SelectedIndex)
			{
				case 0:
					dough_choice = "Normal";
					break;

				case 1:
					dough_choice = "Gluten free";
					break;
			}
			return dough_choice;
		}

		protected string crust_type()
		{
			//radio button switch statement to chose crust type
			switch (rbl_crust.SelectedIndex)
			{
				case 0:
					crust_choice = "Normal";
					break;

				case 1:
					crust_choice = "Stuffed";
					break;

				case 2:
					crust_choice = "Deep Dish";
					break;
			}

			return crust_choice;
		}
	}
}