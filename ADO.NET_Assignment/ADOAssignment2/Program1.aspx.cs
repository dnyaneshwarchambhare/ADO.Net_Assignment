using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO_Assignment2
{
    public partial class Program1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connectStr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;

            BusDetails1(connectStr);

            BusDetails2(connectStr);

        }

        public void BusDetails1(String connectStr)
        {
            using (SqlConnection conn = new SqlConnection(connectStr))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select BoardingPoint, TravelDate from BusInfo where Amount > 450", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView1.DataSource = datareader;
                GridView1.DataBind();
            }
        }

        public void BusDetails2(String connectStr)
        {
            using (SqlConnection conn = new SqlConnection(connectStr))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select BusID, DroppingPoint from BusInfo where TravelDate = '2017-12-10'", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView2.DataSource = datareader;
                GridView2.DataBind();
            }
        }
    }
}