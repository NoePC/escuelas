using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using EscuelaTransparente.Controllers;

namespace EscuelaTransparente
{
    public partial class TestConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        static string DatabaseConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EscuelaTransparente"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query2 = "select * from PerfilEscuela";
            DataTable datos = new DataTable();

            GridView1.DataSource = datos;
            GridView1.DataBind();
           
        }
    }
}