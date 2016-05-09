using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Diagnostics;

namespace EscuelaTransparente.Controllers
{
    public class Localidades
    {
        //Todos los edos
        public static List<string> getEdos(){
            string query = " SELECT DISTINCT edo.Estado_Nombre " +
                            " FROM Estado edo " +
                            " ORDER BY edo.Estado_Nombre ASC ";

            List<string> edos = new List<string>();
            DataTable dt = SqlController.SqlDataTable(query);

            foreach (DataRow dr in dt.Rows) {
                edos.Add((string)dr["Estado_Nombre"]);
            }

            //foreach (string st in edos)
            //    Debug.WriteLine(st);

            return edos;
        }

        //Municipios
        public static List<string> getMunicipios(int id_edo)
        {
            string query = " SELECT DISTINCT  mun.Municipio_Nombre "+
                            " FROM Estado edo, Ciudad cd, Municipio mun "+
                            " WHERE cd.Estado_Id = "+id_edo+
                            " AND mun.Ciudad_Id = cd.Ciudad_Id "+
                            " ORDER BY mun.Municipio_Nombre ASC ";

            List<string> mun = new List<string>();
            DataTable dt = SqlController.SqlDataTable(query);

            foreach (DataRow dr in dt.Rows)
            {
                mun.Add((string)dr["Municipio_Nombre"]);
            }
            return mun;
        }

        public static List<string> getLocalidad(int id_mun)
        {
            string query = " SELECT DISTINCT mun.Municipio_Nombre, cln.Colonia_Nombre " +
                            " FROM Colonia cln, Municipio mun " +
                            " WHERE mun.Municipio_Id = " + id_mun +
                            " AND cln.Municipio_Id = mun.Municipio_Id " +
                            " ORDER BY cln.Colonia_Nombre ASC ";


            List<string> loc = new List<string>();
            DataTable dt = SqlController.SqlDataTable(query);

            foreach (DataRow dr in dt.Rows)
            {
                loc.Add((string)dr["Colonia_Nombre"]);
            }
            return loc;
        }

        public static int getEdoID(string Edo)
        {
            string query = " SELECT edo.Estado_Id "
                          + " FROM Estado edo "
                          + " WHERE edo.Estado_Nombre = '" + Edo + "'";

            int edo_Id = (int)SqlController.SqlReturn(query);
            return edo_Id;
        }

        public static int getMunID(string Municipio)
        {
            string query = " SELECT mun.Municipio_Id " +
                            " FROM Municipio mun " +
                            " WHERE mun.Municipio_Nombre = '" + Municipio + "'";
            int mun_Id;
            try
            {
                mun_Id = (int)SqlController.SqlReturn(query);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                mun_Id = 0;
            }

            return mun_Id;
        }

        public static int getLocID(string Colonia)
        {
            string query = " SELECT col.Colonia_Id "
                            + " FROM Colonia col "
                            + " WHERE col.Colonia_Nombre = '" + Colonia + "'";
            int col_Id;
            try
            {
                col_Id = (int)SqlController.SqlReturn(query);
            }
            catch (Exception ex) {
                Debug.WriteLine(ex);
                col_Id = 0;
            }

            return col_Id;
        }




    }
}

