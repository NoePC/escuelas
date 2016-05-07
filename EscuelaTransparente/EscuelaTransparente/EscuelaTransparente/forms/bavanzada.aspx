<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bavanzada.aspx.cs" Inherits="EscuelaTransparente.forms.bavanzada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="bavanzada">
        <label>Busca Avanzada</label><br /><br />
        <label>Escuela: </label>
        <asp:TextBox ID="txtNEscuela" runat="server" ></asp:TextBox> <br /><br />
        <label>Estado: </label>
        <asp:TextBox ID="txtEstado" runat="server" ></asp:TextBox><br /><br />
        <label>Municipio: </label>
        <asp:TextBox ID="txtMunicipio" runat="server" ></asp:TextBox> <br /><br />
        <label>CP: </label>
        <asp:TextBox ID="txtCp" runat="server" ></asp:TextBox> <br /><br />
    </div>
    </form>
</body>
</html>
