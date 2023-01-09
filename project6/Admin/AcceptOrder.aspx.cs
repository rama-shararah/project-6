using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class AcceptReject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id_order"];
            SqlConnection con = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project6 ; integrated security=SSPI");
            con.Open();
            SqlCommand comm = new SqlCommand($"update orders set Accept=1 WHERE id_order = '{id}'", con);

            comm.ExecuteNonQuery();
            con.Close();

            Response.Redirect("OrdersRequests.aspx");
        }
    }
}