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
        private SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        private SqlCommand database_cmd;

        public static int the_pizza_size;

        protected void Page_Load(object sender, EventArgs e)
        {
            connect.Open();
        }

        protected void Pizza_size_13_Click(object sender, ImageClickEventArgs e)
        {
            the_pizza_size = 13;
            sqlcmd();
        }

        protected void Pizza_size_15_Click(object sender, ImageClickEventArgs e)
        {
            the_pizza_size = 15;
            sqlcmd();
        }

        protected void Pizza_size_17_Click(object sender, ImageClickEventArgs e)
        {
            the_pizza_size = 17;
            sqlcmd();
        }

        public void sqlcmd()
        {
            database_cmd = new SqlCommand("Update pizza_table set Pizza_size= '" + the_pizza_size + "' where Order_number='" + tb_order_number.Text + "'", connect);
            database_cmd.ExecuteNonQuery();
            connect.Close();
        }
    }
}