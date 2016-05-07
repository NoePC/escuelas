<%@ Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EscuelaTransparente.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Escuela Transparente</title>
    <script src="scripts/jquery-1.11.1.min.js"></script>
    <script src="scripts/filtro.js"></script>
    <link type="text/css" href="Styles/filtro.css"  rel="stylesheet"/>
    <link type="text/css" href="Styles/inicio.css" rel="stylesheet" />
    <link type="text/css" href ="Styles/Propuesta_Escuela_v8.css" rel="stylesheet" />
</head>
<body>
   <form id="Form1" runat="server">
        <asp:Panel ID="toolbar" runat="server" BackColor="#393B3D" style="margin-bottom: 0px">
            <a href="#"><asp:Image ImageUrl="~/Images/Mesa_1T_02.png" runat="server" ImageAlign="Left" DescriptionUrl="~/Default.aspx" /></a>
            <asp:Panel ID="menu" runat="server" style=" float:right">              
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Busca tu Escuela</a></li>
                    <li><a href="#">Contactanos</a></li>
                    <li><asp:Image ImageUrl="~/Images/Mesa_1T_36.png" runat="server" /></li>
                    <li><asp:TextBox runat="server" CssClass="txtBus" /></li>
                </ul>
            </asp:Panel>
        </asp:Panel>
    
    <br /><br /><br />

        <ul>
            <li style="font-size:30px; margin-left:500px;">Nombre de la escuela</li>
            <li><asp:TextBox runat="server" CssClass="txtbuscar" placeholder="Ej: Miguel Hidalgo" ID="txtEscuela"></asp:TextBox><a href="#tabla"><asp:Image ImageUrl="~/Images/Mesa_1T_36.png" runat="server"/></a></li>
            <li style="font-size:30px; margin-left:600px;">Estado</li><br />
            <li>
                <asp:DropDownList runat="server" CssClass="txtbuscar" ID="cbestado" OnLoad="cbestado_Load">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />
                    <asp:ListItem Text="Baja California Sur" />
                    <asp:ListItem Text="Campeche" />
                    <asp:ListItem Text="Chiapas" />
                    <asp:ListItem Text="Chihuahua" />
                    <asp:ListItem Text="Coahuila" />
                    <asp:ListItem Text="Colima" />
                    <asp:ListItem Text="Distrito Federal" />
                    <asp:ListItem Text="Estado de México" />
                </asp:DropDownList>
            </li>     
            <li style="font-size:30px; margin-left:580px;">Municipio</li>
            <li>
                <asp:DropDownList runat="server" CssClass="txtbuscar">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />
                    <asp:ListItem Text="Baja California Sur" />
                    <asp:ListItem Text="Campeche" />
                    <asp:ListItem Text="Chiapas" />
                    <asp:ListItem Text="Chihuahua" />
                    <asp:ListItem Text="Coahuila" />
                    <asp:ListItem Text="Colima" />
                    <asp:ListItem Text="Distrito Federal" />
                    <asp:ListItem Text="Estado de México" />
                </asp:DropDownList>
            </li>  
            <li style="font-size:30px; margin-left:580px;">Localidad</li>
            <li>
                <asp:DropDownList runat="server" CssClass="txtbuscar">
                    <asp:ListItem Text="Aguascalientes" />
                    <asp:ListItem Text="Baja California" />
                    <asp:ListItem Text="Baja California Sur" />
                    <asp:ListItem Text="Campeche" />
                    <asp:ListItem Text="Chiapas" />
                    <asp:ListItem Text="Chihuahua" />
                    <asp:ListItem Text="Coahuila" />
                    <asp:ListItem Text="Colima" />
                    <asp:ListItem Text="Distrito Federal" />
                    <asp:ListItem Text="Estado de México" />
                </asp:DropDownList>
            </li> 
        </ul>  
    </form>  
</body>
</html>
