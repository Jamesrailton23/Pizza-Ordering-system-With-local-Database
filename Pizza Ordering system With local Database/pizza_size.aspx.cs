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
	public partial class pizza_size : System.Web.UI.Page
	{
		//opens SQL connection
		private SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

		private SqlCommand database_cmd;

		public static int the_pizza_size;

		protected void Page_Load(object sender, EventArgs e)
		{
			// connect.Open();
		}

		#region pizza Size Buttons

		protected void Pizza_size_13_Click(object sender, ImageClickEventArgs e)
		{
			sqlcmd(13);
		}

		protected void Pizza_size_15_Click(object sender, ImageClickEventArgs e)
		{
			sqlcmd(15);
		}

		protected void Pizza_size_17_Click(object sender, ImageClickEventArgs e)
		{
			sqlcmd(17);
		}

		#endregion pizza Size Buttons

		public void sqlcmd(int Pizza)
		{
			//method to add size of pizza acording to button clicked
			connect.Open();
			database_cmd = new SqlCommand("Update pizza_order set PIZZA_SIZE = '" + Pizza + "' where ORDER_NUMBER='" + tb_order_number.Text + "'", connect);
			database_cmd.ExecuteNonQuery();
			connect.Close();
		}
	}
}