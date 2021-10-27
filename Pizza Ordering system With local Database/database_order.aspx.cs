using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//added SQL items
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Pizza_Ordering_system_With_local_Database
{
	public partial class database_order : System.Web.UI.Page
	{
		private SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
		private SqlCommand database_cmd;

		protected void Page_Load(object sender, EventArgs e)
		{
		}

		#region Database function buttons

		protected void button_search_Click(object sender, EventArgs e)
		{
			// #ToFix when order is searched the whole table will disappear and wont come back unless new order is created

			//Searches the database for a certan order using the order number inputed via textbox

			connect.Open();
			//searches the database
			try
			{
				string search = "select * from pizza_order where (ORDER_NUMBER like '%' +@ORDER_NUMBER+ '%')";
				database_cmd = new SqlCommand(search, connect);
				database_cmd.Parameters.Add("@ORDER_NUMBER", SqlDbType.NChar).Value = tb_search.Text;
				database_cmd.ExecuteNonQuery();
			}
			catch
			{
			}

			SqlDataAdapter data_adapter = new SqlDataAdapter();
			data_adapter.SelectCommand = database_cmd;
			DataSet dataSet_order = new DataSet();
			data_adapter.Fill(dataSet_order, "pizza_order");

			//allows changes the gridview to show only the searched order number
			GridView_order.DataSourceID = null;
			GridView_order.DataSource = dataSet_order;
			GridView_order.DataBind();
			connect.Close();
		}

		protected void button_delete_Click(object sender, EventArgs e)
		{
			try
			{
				connect.Open();

				//deletes an order from the database using order number inputed via the textbox
				database_cmd = new SqlCommand("delete from pizza_order where ORDER_NUMBER='" + tb_delete.Text + "'", connect);
				database_cmd.ExecuteNonQuery();
				connect.Close();
				GridView_order.DataBind();
			}
			catch
			{
			}
		}

		protected void button_refresh_Click(object sender, EventArgs e)
		{
			// #ToFix To allow the table to refresh after using search button, broken at the moment
		}

		#endregion Database function buttons
	}
}