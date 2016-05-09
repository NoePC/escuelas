using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Entity.Core.EntityClient;
using EscuelaTransparente.Controllers;
using System.Diagnostics;
using System.Drawing;

namespace EscuelaTransparente
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Obtiene escuelas totales
                Label1.Text = Escuelas.getEscuelasTotales().ToString() + " Resultados";
                ddlEstado.DataSource = Localidades.getEdos();
                ddlEstado.DataBind();


                DataTable dt = Escuelas.getDatosEscuelasTotales();
                DataRow header = dt.Rows[0];

                foreach (DataColumn col in dt.Columns)
                {
                    Debug.WriteLine("data: " + col.ColumnName);
                    TableHeaderCell celda = new TableHeaderCell();
                    celda.Text = col.ColumnName;
                    headerTable.Cells.Add(celda);
                }
                foreach (DataRow st in dt.Rows)
                {
                    Debug.WriteLine("row: " + st);
                    TableRow fila = new TableRow();
                    foreach(string valor in st.ItemArray){
                        TableCell tc = new TableCell();
                        tc.Text=valor.ToString();
                        fila.Cells.Add(tc);
                        string color = "#F0F0EF";
                        fila.BackColor= ColorTranslator.FromHtml(color);
                    }

                    tblResults.Rows.Add(fila);
//                    headerTable.Cells.Add(celda);

                }


                Table table = new Table();

                TableRow row = null;



                //Add the Headers

                row = new TableRow();

                for (int j = 0; j < dt.Columns.Count; j++)

                {

                    TableHeaderCell headerCell = new TableHeaderCell();

                    headerCell.Text = dt.Columns[j].ColumnName;

                    row.Cells.Add(headerCell);

                }

                table.Rows.Add(row);



                //Add the Column values

                for (int i = 0; i < dt.Rows.Count; i++)

                {

                    row = new TableRow();

                    for (int j = 0; j < dt.Columns.Count; j++)

                    {

                        TableCell cell = new TableCell();

                        cell.Text = dt.Rows[i][j].ToString();

                        row.Cells.Add(cell);

                    }

                    // Add the TableRow to the Table

                    table.Rows.Add(row);
                    tblResults = table;
                    tblResults.DataBind();
                    form1.Controls.Add(table);
                }

            }
            else {

            }
        }

        protected void ddlEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id_edo = Localidades.getEdoID(ddlEstado.SelectedValue);
            Debug.WriteLine(ddlEstado.SelectedValue);
            ddlMunicipio.DataSource=Localidades.getMunicipios(id_edo);
            ddlMunicipio.DataBind();
        }

        

        protected void ddlMunicipio_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id_mun = Localidades.getMunID(ddlMunicipio.SelectedValue);
            Debug.WriteLine(ddlEstado.SelectedValue);
            Localidad.DataSource = Localidades.getLocalidad(id_mun);
            Localidad.DataBind();
        }
    }        
}