using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace EscuelaTransparente.Controllers
{
    public class Escuelas
    {
        public static int getEscuelasTotales() {
            string query = " SELECT  COUNT(esc.Escuela_Id) FROM Escuela esc ";

            int cantEscuelas = (int)SqlController.SqlReturn(query);
            return cantEscuelas;
        }

        public static DataTable getDatosEscuelasTotales() {
            string query = " SELECT DISTINCT esc.Escuela_Nombre as Escuela, esc.Escuela_CalleyNumero + ', ' + edo.Estado_Nombre as 'Ubicación',  nvl.Nivel_Descripcion as 'Nivel Escolar' " +
                " FROM Escuela esc, Nivel nvl, Estado edo " +
                " WHERE  esc.Nivel_Id = nvl.Nivel_Id " +
                " AND esc.Estado_Id = edo.Estado_Id " +
                " ORDER BY Escuela ASC";

            DataTable datos = new DataTable();
            datos = SqlController.SqlDataTable(query);
            return datos;
        }


        public static DataTable getDatosEscuelaConsulta(string nomEscuela,int nivel, int edo)
        {
            string parteEscuela = "";
            string parteNivel = "";
            string parteEdo = "";

            if (!String.IsNullOrEmpty(nomEscuela) && !String.IsNullOrWhiteSpace(nomEscuela))
                parteEscuela = "esc.Escuela_Nombre LIKE '%" + nomEscuela + "%' ";
            if (!String.IsNullOrEmpty(parteNivel) && !String.IsNullOrWhiteSpace(parteNivel))
                parteNivel = " AND esc.Nivel_Id = " + nivel ;
            if (!String.IsNullOrEmpty(parteEdo) && !String.IsNullOrWhiteSpace(parteEdo))
                parteEdo = " AND esc.Estado_Id = " + edo ;

            string query = " SELECT DISTINCT esc.Escuela_Nombre as Escuela, esc.Escuela_CalleyNumero + ', ' + edo.Estado_Nombre as 'Ubicación',  nvl.Nivel_Descripcion as 'Nivel Escolar' " +
                           " FROM Escuela esc, Nivel nvl, Estado edo " +
                           " WHERE " + parteEscuela +
                             parteNivel +
                           " AND nvl.Nivel_Id = esc.Nivel_Id " +
                             parteEdo +
                           " AND edo.Estado_Id = esc.Estado_Id " +
                           " ORDER BY Escuela ASC ";
            
            DataTable datos = new DataTable();
            datos = SqlController.SqlDataTable(query);
            return datos;
        }


    }
}