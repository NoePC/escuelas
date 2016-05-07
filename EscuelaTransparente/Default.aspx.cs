using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Entity.Core.EntityClient;

namespace EscuelaTransparente
{
    public partial class Default : System.Web.UI.Page
    {
        string fescuela = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //cfiltro.Visible = false;
            fescuela = txtEscuela.Text;
        }

        protected void BusquedaAvanzada_Click(object sender, EventArgs e)
        {
            //string txtEscuela = txtNEscuela.Text;
        }

        protected void txtNEscuela_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            //using (EntityConnection con = new SqlConnection("Server = tcp:escuelatransparente.database.windows.net,1433; Database = Escuela_transparente; User ID = EscuelaAdmn@escuelatransparente; Password ={ EscuelaTransparente1 }; Encrypt = True; TrustServerCertificate = False; Connection Timeout = 30;"))
            //{
            //    var cmd = con.CreateCommand();
            //    cmd.CommandText = @"SELECT
            //            Escuela_Nombre                                                
            //        FROM Escuela WHERE Escuela_Nombre=";
            //    con.Open();
            //}
        }

        protected void Unnamed_Load(object sender, EventArgs e)
        {

        }

        protected void cbestado_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=EDIOTH\SQLEXPRESS;Initial Catalog=Try; Integrated Security=SSPI");
            SqlCommand cmd = new SqlCommand();
        }
    }
}