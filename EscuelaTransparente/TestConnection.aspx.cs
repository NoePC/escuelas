using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

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
            SqlConnection conecta = new SqlConnection(DatabaseConnectionString);
            SqlCommand comando = new SqlCommand("select * from PerfilEscuela", conecta);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);

            DataTable datos = new DataTable();
            datos.Locale = System.Globalization.CultureInfo.InvariantCulture;

            //llenamo?

            adaptador.Fill(datos);
            GridView1.DataSource = datos;
            GridView1.DataBind();
           
        }
    }
}