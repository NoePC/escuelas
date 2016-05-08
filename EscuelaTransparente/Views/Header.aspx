<%@ Language="C#" AutoEventWireup="true" CodeBehind="Header.aspx.cs" Inherits="EscuelaTransparente.Views.Header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Escuela Transparente</title>
    <script src="../scripts/jquery-1.11.1.min.js"></script>
    <script src="../scripts/filtro.js"></script>
    <link type="text/css" href="../Styles/filtro.css"  rel="stylesheet"/>
    <link type="text/css" href="../Styles/inicio.css" rel="stylesheet" />
    <link type="text/css" href ="../Styles/Propuesta_Escuela_v8.css" rel="stylesheet" />
</head>
<body>
   <form id="Form1" runat="server">
        <asp:Panel ID="toolbar" runat="server" BackColor="#373940" style="margin-bottom: 0px">
            <a href="#"><asp:Image ImageUrl="~/Images/Mesa_1T_02.png" runat="server" ImageAlign="Left" DescriptionUrl="~/Default.aspx" /></a>
            <!-- Primer panel-->
            <asp:Panel ID="menu" runat="server" style=" float:right">              
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Busca tu Escuela</a></li>
                    <li><a href="#">Contactanos</a></li>
                    <li><asp:Image ImageUrl="~/Images/Mesa_1T_36.png" runat="server" /></li>
                    <li><asp:TextBox runat="server" CssClass="txtBus" /></li>
                </ul>
            </asp:Panel>
            <!-- Panelredes sociales-->
           <asp:Panel ID="Panel1" runat="server" BackColor="#0b090c" style="margin-bottom: 0px">
            <asp:Panel ID="Panel2" runat="server" style=" float:right">              
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Busca tu Escuela</a></li>
                    <li><a href="#">Contactanos</a></li>
                    <li><a href="#"> </a><img src="../Images/Mesa_1T_36.png" /> </li>
                    
                </ul>
            </asp:Panel>
           
           </asp:Panel>
        
        </asp:Panel>
    
    </form>  
</body>
</html>
