<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusquedaA.aspx.cs" Inherits="EscuelaTransparente.Pages.BusquedaA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="menu.css" rel="stylesheet" />
<script src="Scripts/jquery-1.12.3.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.bpopup.min.js" type="text/javascript"></script>
<link href="Modals/modal_Styles.css" rel="stylesheet" />
<title>Escuela Transparente</title>
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
        <div class="look-for">
            <div class="texts">
                <span class="text-left">Escuela Transaparente</span>
                <span class="social">
                    <img src="Images/Mesa_1T_10.png" />
                    <img src="Images/Mesa_1T_12.png" />
                    <img src="Images/Mesa_1T_14.png" />
                </span>
                <span class="text-rigth">  Siguenos en redes sociales </span>
            </div>
            <div class="text-box">
                <asp:TextBox ID="txtBusquedaP2" runat="server"  placeholder="Nombre de la Escuela"/>
                <div class="bt">
                    <asp:Button  ID="btBusquedaA" Text="Busqueda Avanzada" runat="server" CssClass="btBusquedaA" Font-Bold="true" OnClick="btBUsquedaA_click"/>
                </div>
            </div>
        </div>
        <div id="main">
            <img src="Images/Mesa_2T_03.png" /> <asp:Label ID="lblNEscuela" Text="Nombre de Escuela" runat="server" Font-Bold="true" Font-Size="18"/><br />
            <img class="line-school" src="Images/Mesa_1T_40.png" /><br /><br />
            <div class="map-inf">
                <img class="map" src="Images/Mesa_3T_11.png" />
                <div class="inf">
                    <ul>
                        <li>Clave: <asp:Label ID="lblClave" Text="15PPR2647F" runat="server" /></li>
                        <li>Nivel: <asp:Label ID="lblNivel" Text="Primaria" runat="server" /></li>
                        <li>Turno: <asp:Label ID="lblTurno" Text="Matutino" runat="server" /></li>
                    </ul>
                    <br />
                    <ul>
                        <li>Calle: <asp:Label ID="lblCalle" Text="Antonio PLiego Villalva No." runat="server" /></li>
                        <li>Municipio: <asp:Label ID="lblMunicipio" Text="Zinacatepec" runat="server" /></li>
                        <li>Localidad: <asp:Label ID="lblLocalidad" Text="San Luis Mextepec" runat="server" /></li>
                        <li>Entidad: <asp:Label ID="lblEntidad" Text="México" runat="server" /></li>
                        <li>Teléfonos: <asp:Label ID="lblTelefonos" Text="7221741701" runat="server" /></li>
                    </ul>
                </div>
            </div>
            <div class="Table-Results">
                <asp:Table ID="tblResults" runat="server" Font-Size="X-Large" CellPadding="20" CellSpacing="5">
                    <asp:TableHeaderRow runat="server" ForeColor="White" Font-Bold="true" BackColor="#0c89cc">
                        <asp:TableHeaderCell Width="450" HorizontalAlign="Left">Infraestructura física</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="200">Cantidad</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcMdc">Metros de contrucción</asp:TableCell>
                        <asp:TableCell ID="tcCantidadMdc">3,000 m2</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcMdt">Metros de terreno</asp:TableCell>
                        <asp:TableCell ID="tcCantidadMdt">5,000 m2</asp:TableCell>
                    </asp:TableRow> 
                     <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcAulas">Aulas</asp:TableCell>
                        <asp:TableCell ID="tcCantidadAulas">12</asp:TableCell>
                    </asp:TableRow> 
                     <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcLabs">Laboratorios</asp:TableCell>
                        <asp:TableCell ID="tcCantidadLabs">2</asp:TableCell>
                    </asp:TableRow> 
                     <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcBdm">Baños de Mujeres</asp:TableCell>
                        <asp:TableCell ID="tcCantidadBdm">3</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcBdh">Baños de Hombres</asp:TableCell>
                        <asp:TableCell ID="tcCantidadBdh">4</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcCdf">Canchas de fútbol</asp:TableCell>
                        <asp:TableCell ID="tcCantidadCdf">1</asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcCdb">Canchas de básquetbol</asp:TableCell>
                        <asp:TableCell ID="tcCantidadCdb">1</asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcCdv">Canchas de voleibol</asp:TableCell>
                        <asp:TableCell ID="tcCantidadCdv">1</asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcBibl">Biblioteca</asp:TableCell>
                        <asp:TableCell ID="tcCantidadBibl">1</asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow runat="server" BackColor="#F0F0EF">
                        <asp:TableCell ID="tcEst">CEstacionamiento</asp:TableCell>
                        <asp:TableCell ID="tcCantidadEst">1</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <div class="btnsQuestion">
                <asp:Label Text="¿La infomación es correcta?" runat="server" Font-Size="30" Font-Bold="true"/><br /><br />  

                 <button type="button" id="button1" class="button1" style="font-size:30px; border:none;">SI</button>
                 <button type="button" id="button2" class="button2" style="font-size:30px; border:none;">NO</button>
            </div>
            <br /><br /><br />

            <asp:Label ID="lblComents" Text="Comentarios" runat="server" Font-Bold="true" Font-Size="18"/><br />
            <img class="line-school" src="Images/Mesa_1T_40.png" /><br /><br />
            <br />

            <div class="coments">
                <div class="userimage">
                    <img id="userimage" src="Images/Mesa_3T_17.png" runat="server"/>
                </div>
                <div class="comentario">
                    <asp:Label ID="lblUsername" Text="José Luis Márquez" runat="server" Font-Bold="true"/><br />
                    <asp:Label ID="lblFecha" Text="10/02/2016" runat="server" style="float:right;" Font-Bold="true" /><br />
                    <asp:Label ID="lblComentario" Text="La información que aparece ahí no es verdad. Los baños están descompuestos
                    y en realidad hay 4 aulas. " runat="server" Font-Size="15" />
                    <img id="UserComentImage" src="Images/Mesa_3T_21.png" runat="server"/>
                </div>
            </div>
        </div>
        
        <div id="modalReg">
            <asp:ImageButton ID="imgButtonFR" runat="server" ImageUrl="~/Images/Mesa_4T_07.png" OnClick="imgButtonFR_Click" />
            <br />
            <label><h2>Ó</h2></label>
            <table>
                <th></th>
                <th></th>
                <tr>
                      <td><label>Nombre:</label></td>
                      <td><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><label>Correo electrónico:</label></td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><label>Contraseña:</label></td>
                    <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btRegitrarse" runat="server"  ForeColor="White" Text="Registrarse" OnClick="btRegistrarse_Click"/>
        </div>

        <div id="Coment-foto">
            <asp:TextBox ID="txtComentario" runat="server" placeholder="Escribe un comentario" TextMode="MultiLine"></asp:TextBox><br />
            <asp:Button ID="btUploadImage" Text="Adjuntar fotografía" runat="server" style="margin-right:450px;"/><br />
            <asp:Button ID="btEnviar" runat="server"  ForeColor="White" Text="Enviar" OnClick="btEnviar_Click" style="margin-left:380px;"/>
        </div>

        <asp:Panel runat="server" CssClass="footer">
            <asp:Panel runat="server" CssClass="top-bar">
                SECRETARÍA DE EDUCACIÓN PÚBLICA MÉXICO - ALGUNOS DERECHOS RESERVADOS © 2010 - POLITICAS DE PRIVACIDAD
            </asp:Panel>
            <asp:Panel runat="server" CssClass="img-sep">
                <img src="Images/SEP-MX.png" alt="SEP" width="200" height="100"/>
            </asp:Panel>
            <asp:Panel runat="server" CssClass="bottom-bar">
                <p class="labels">
                    Accesibilidad | Politica de privacidad | Términos y Condiciones | Marco jurídico | Portal de Obligaciones | Sistema informex | INAI Mapa de sitio
                </p>
            </asp:Panel>
        </asp:Panel>
    </form>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#modalReg").hide();
            $("#Coment-foto").hide();
            $("#button1").click(function () {
                $("#modalReg").bPopup({
                    fadeSpeed: 'slow',
                    followSpeed: 1500,
                    modalColor: 'Black'
                });
            });
        });
    </script>
</body>
</html>
