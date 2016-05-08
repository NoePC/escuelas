<%@ Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EscuelaTransparente.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Escuela Transparente</title>
    <link href="Styles/menu.css" rel="stylesheet" />
    <link href="Styles/filtro.css"  rel="stylesheet"/>    
    <link href="Styles/Propuesta_Escuela_v8.css" rel="stylesheet" />
    <script src="scripts/jquery-1.11.1.min.js"></script>
    <script src="scripts/filtro.js"></script>    
</head>
<body>
     <form id="form1" runat="server">
         <asp:Panel ID="menu" runat="server" CssClass="menu">
            <img src="Images/Mesa_1T_02.png" style="margin-left:4.5%;"/>
             
            <ul id="lmenu">
                <li>Inicio</li>
                <li>Busca tu escuela</li>
                <li>Contáctanos</li>
                <li><asp:TextBox ID="txtMBuscarEscuela" runat="server" ></asp:TextBox></li>
            </ul>
        </asp:Panel>

         <asp:Panel ID="box" runat="server" CssClass="box">
             <asp:Panel ID="amenu" runat="server" CssClass="amenu">
                 <span id="left">Escuela transparente</span>
                 <span id="rightI" class="rightI">
                     <img src="Images/Mesa_1T_10.png" />
                     <img src="Images/Mesa_1T_12.png" />
                     <img src="Images/Mesa_1T_14.png" />
                 </span>
                 <span id="right">Siguenos en redes sociales</span>  
             </asp:Panel>      
         </asp:Panel>
         
         <asp:Panel ID="img" runat="server" CssClass="img">
             <img src="Images/Mesa_1T_19.png" />
         </asp:Panel>        

         <asp:Panel ID="img2" runat="server" CssClass="img2">
             <img src="Images/Mesa_1T_23.png" />
             <img src="Images/Mesa_1T_25.png" />
             <img src="Images/Mesa_1T_27.png" />
             <img src="Images/Mesa_1T_29.png" />
         </asp:Panel>

         <asp:Panel ID="textos" runat="server" CssClass="textos">
             <asp:Label id="lbl1" runat="server">1.- Consulta</asp:Label>
             <asp:Label id="lbl2" runat="server">2.- Revisa</asp:Label>
             <asp:Label id="lbl3" runat="server">3.- Suscríbete</asp:Label>
             <asp:Label id="lbl4" runat="server">4.- Comenta</asp:Label>
         </asp:Panel>
         <br />        
         <h3 style="margin-left:230px;">¿Qué es la Escuela Transparente?<br /><img src="Images/Mesa_1T_40.png" /></h3>
         <asp:Panel ID="quees" runat="server" CssClass="quees">
             <asp:Label unat="server">
                 Escuela Transparente es un portal de la Secretaría de Educación Pública donde podrás
         ubicar tu escuela y proponer ideas para mejorarla. Escuela Transparente analizará la situación
         del plantel con el objetivo de mejorar tu estancia y educación.
             </asp:Label>
         </asp:Panel>
         
         <asp:Panel runat="server" ID="doble" CssClass="doble">
             <h3>¿Cómo funciona? <br /><img src="Images/Mesa_1T_40.png" /></h3>
             <asp:Panel runat="server" ID="texto" CssClass="texto">
                 <ul style="list-style:decimal">
                     <li>Consulta los datos de tu escuela</li>
                     <li>Revisa que la información sea correcta.</li>
                     <li>Escribe tus propuestas.</li>
                     <li>Suscríbete para mantenerte informado sobre los avances de tus propuestas.</li>
                 </ul>
             </asp:Panel>
             <asp:Panel runat="server" ID="video" CssClass="video">
                 <img src="Images/Mesa_1T_44.png" />
             </asp:Panel>
         </asp:Panel>         

         <h3 style="margin-left:230px;"><img src="Images/Mesa_2T_03.png" />Busqueda Avanzada<br /><img src="Images/Mesa_1T_40.png" /></h3>
         



         <asp:Panel ID="formu" runat="server" CssClass="formu">
             <asp:Panel ID="formulario" runat="server" CssClass="formulario">
                <asp:Panel ID="checks" runat="server" CssClass="checks">
                    <asp:Label runat="server">Nivel Escolar</asp:Label> 
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                         <asp:ListItem Text="Preescolar"></asp:ListItem>
                         <asp:ListItem Text="Primaria"></asp:ListItem>
                         <asp:ListItem Text="Secundaria"></asp:ListItem>
                     </asp:RadioButtonList><br /><br />
                     <asp:Label runat="server">Turno</asp:Label>
                     <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                         <asp:ListItem Text="Matutino"></asp:ListItem>
                         <asp:ListItem Text="Vespertino"></asp:ListItem>
                     </asp:RadioButtonList>                                   
                </asp:Panel>
                 <h3>Nombre de la escuela</h3>
                 <asp:TextBox runat="server" placeholder=" Ej: Escuela Primaria Benito Juarez" CssClass="txtPropiedades"></asp:TextBox>                 
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/BusquedaA.aspx" ImageUrl="~/Images/Mesa_2T_11.png"></asp:HyperLink>
                 <h3>Estado</h3>
                 <asp:DropDownList runat="server" CssClass="txtPropiedades" ID="ddlEstado">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />                        
                 </asp:DropDownList>
                 <h3>Municipio</h3>
                 <asp:DropDownList runat="server" CssClass="txtPropiedades" ID="ddlMunicipio">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />                    
                 </asp:DropDownList>
                 <h3>Localidad</h3>
                 <asp:DropDownList runat="server" CssClass="txtPropiedades" ID="Localidad">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />                  
                </asp:DropDownList>
             </asp:Panel>
         </asp:Panel>         
         
         <br /><br /><br />

         <asp:Panel ID="content" runat="server" CssClass="content">
             <asp:Panel ID="resultados" runat="server" CssClass="resultados">
                 <asp:label ID="Label1" runat="server">1200 Resultados</asp:label>
             </asp:Panel>
             <asp:Panel ID="ordenar" runat="server" CssClass="ordenar">
                <asp:Label runat="server">Ordenar por: </asp:Label>                 
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="Nombre de la escuela"></asp:ListItem>
                    <asp:ListItem Text="Estado"></asp:ListItem>
                    <asp:ListItem Text="Municipio"></asp:ListItem>
                    <asp:ListItem Text="Localidad"></asp:ListItem>
                </asp:DropDownList>
             </asp:Panel>                        
         </asp:Panel>                  

         <br />

         <div class="Table-Results">
                <asp:Table ID="tblResults" runat="server" Font-Size="X-Large" CellPadding="20" CellSpacing="5">
                    <asp:TableHeaderRow runat="server" ForeColor="White" Font-Bold="true" BackColor="#0c89cc">
                        <asp:TableHeaderCell Width="250" HorizontalAlign="Left">Escuelas</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="100">Ubicación</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="100">Turno</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="200">Nivel escolar</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcMdc">Niños de México</asp:TableCell>
                        <asp:TableCell ID="tcCantidadMdc">Jalpa De Mendez, Tabasco</asp:TableCell>
                        <asp:TableCell ID="tcTurno">Vespertino</asp:TableCell>
                        <asp:TableCell ID="tcNivelEscolar">Primaria</asp:TableCell>
                    </asp:TableRow> 
                    <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcMdc2">Lázaro Cárdenas</asp:TableCell>
                        <asp:TableCell ID="tcCantidadMdc2">Chunchucmil, Yucatán</asp:TableCell>
                        <asp:TableCell ID="tcTurno2">Vespertino</asp:TableCell>
                        <asp:TableCell ID="tcNivelEscolar2">Secundaria</asp:TableCell>
                    </asp:TableRow>                   
                </asp:Table>
            </div>

         <br /><br /><br />
         
        <asp:Panel runat="server" CssClass="footer">
           <asp:Panel runat="server" CssClass="top-bar">
               SECRETARÍA DE EDUCACIÓN PÚBLICA MÉXICO - ALGUNOS DERECHOS RESERVADOS © 2010 - POLITICAS DE PRIVACIDAD
           </asp:Panel>
           <asp:Panel runat="server" CssClass="img-sep">
               <img src="images/SEP-MX.png" alt="SEP" width="200" height="100"/>
           </asp:Panel>
           <asp:Panel runat="server" CssClass="bottom-bar">
               <p class="labels">
                   Accesibilidad | Politica de privacidad | Términos y Condiciones | Marco jurídico | Portal de Obligaciones | Sistema informex | INAI Mapa de sitio
               </p>
           </asp:Panel>
        </asp:Panel>

     </form>
</body>
</html>
