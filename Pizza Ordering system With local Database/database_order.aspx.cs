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
    public partial class database_order : System.Web.UI.Page
    {
        //SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //SqlCommand database_cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //connect.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView_order.DataBind();
        }
    }
}