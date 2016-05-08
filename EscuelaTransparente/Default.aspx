<%@ Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EscuelaTransparente.Default" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

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

  </asp:Content>
