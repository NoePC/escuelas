<%@ Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EscuelaTransparente.Default" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


         <div id="img">
             <img src="Images/Mesa_1T_19.png" />
         </div>        

         <div id="img2">
             <img src="Images/Mesa_1T_23.png" />
             <img src="Images/Mesa_1T_25.png" />
             <img src="Images/Mesa_1T_27.png" />
             <img src="Images/Mesa_1T_29.png" />
         </div> 

         <div id="textos">
             <label id="lbl1">1.- Consulta</label>
             <label id="lbl2">2.- Revisa</label>
             <label id="lbl3">3.- Suscríbete</label>
             <label id="lbl4">4.- Comenta</label>
         </div>
         <br />
         <h3 style="margin-left:230px;">¿Qué es la Escuela Transparente?<br /><img src="Images/Mesa_1T_40.png" /></h3>
         <div id="quees"><label id="quees">Escuela Transparente es un portal de la Secretaría de Educación Pública donde podrás
         ubicar tu escuela y proponer ideas para mejorarla. Escuela Transparente analizará la situación
         del plantel con el objetivo de mejorar tu estancia y educación.</label></div>

         <div id="doble">
             <h3>¿Cómo funciona? <br /><img src="Images/Mesa_1T_40.png" /></h3>
             <div id="texto">
                 <ul style="list-style:decimal">
                     <li>Consulta los datos de tu escuela</li>
                     <li>Revisa que la información sea correcta.</li>
                     <li>Escribe tus propuestas.</li>
                     <li>Suscríbete para mantenerte informado sobre los avances de tus propuestas.</li>
                 </ul>
            </div>
             <div id="video">
                 <img src="Images/Mesa_1T_44.png" />
            </div>
         </div>

         <h3 style="margin-left:230px;"><img src="Images/Mesa_2T_03.png" />Busqueda Avanzada<br /><img src="Images/Mesa_1T_40.png" /></h3>
         <div id="formu">
             <div id="formulario">
                 <div id="checks">
                     <label>Nivel Escolar</label>
                     <asp:RadioButtonList ID="CheckBoxList1" runat="server">
                         <asp:ListItem Text="Preescolar"></asp:ListItem>
                         <asp:ListItem Text="Primaria"></asp:ListItem>
                         <asp:ListItem Text="Secundaria"></asp:ListItem>
                     </asp:RadioButtonList><br /><br />
                     <label>Turno</label>
                     <asp:RadioButtonList ID="CheckBoxList2" runat="server">
                         <asp:ListItem Text="Matutino"></asp:ListItem>
                         <asp:ListItem Text="Vespertino"></asp:ListItem>
                     </asp:RadioButtonList>
                 </div>
                 <h3>Nombre de la escuela</h3>
                 <asp:TextBox runat="server" placeholder=" Ej: Escuela Primaria Benito Juarez" CssClass="txtPropiedades"></asp:TextBox>                 
                 <asp:HyperLink ID="imgbutt" runat="server" NavigateUrl="~/Pages/BusquedaA.aspx" ImageUrl="~/Images/Mesa_2T_11.png"></asp:HyperLink>
                 <h3>Estado</h3>
                 <asp:DropDownList runat="server" CssClass="txtPropiedades">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />                        
                 </asp:DropDownList>
                 <h3>Municipio</h3>
                 <asp:DropDownList runat="server" CssClass="txtPropiedades">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />                    
                 </asp:DropDownList>
                 <h3>Localidad</h3>
                 <asp:DropDownList runat="server" CssClass="txtPropiedades">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />                  
                </asp:DropDownList>
             </div>             
         </div>
         
         <br /><br /><br />

         <div id="content"> 
             <div id="resultados">
                <asp:label ID="lblResultados" runat="server">1200 Resultados</asp:label>
             </div> 
             <div id="ordenar">
                <label>Ordenar por: </label>
                <asp:DropDownList ID="filtro" runat="server">
                    <asp:ListItem Text="Nombre de la escuela"></asp:ListItem>
                    <asp:ListItem Text="Estado"></asp:ListItem>
                    <asp:ListItem Text="Municipio"></asp:ListItem>
                    <asp:ListItem Text="Localidad"></asp:ListItem>
                </asp:DropDownList>
             </div>           
         </div>

         <br /><br /><br />
         
         </asp:Content>