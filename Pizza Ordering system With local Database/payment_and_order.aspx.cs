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
	public partial class payment_order : System.Web.UI.Page
	{
		private SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
		private customer_infomation customer_order = new customer_infomation();

		protected void Page_Load(object sender, EventArgs e)
		{
		}

		protected void Button_order_Click(object sender, EventArgs e)
		{
			// #ToFix Unable to get working as cannot share data between pages at the moment
			/*
			connect.Open();
            customer_data();
            connect.Close();
            */
		}

		protected void customer_data()
		{
			// #ToFix Unable to get working as cannot share data between pages at the moment
			/*
            customer_order.customer_address = tb_address.Text;
            customer_order.customer_address = tb_email.Text;
            customer_order.customer_name = tb_name.Text;
            customer_order.customer_phone = int.Parse(tb_phoneNumber.Text);
            */
		}

		protected void order_price()
		{
			// #ToFix Unable to get working as cannot share data between pages at the moment
			/*

			switch (rbl_collection.SelectedIndex)
			{
				case 0:
					customer_order.is_pickup = true;
					break;

				case 1:
					customer_order.is_pickup = false;
					break;
			}

            bool collection = customer_order.is_pickup;
            int pizza_cost;
            int crust_type;
            */
		}
	}
}