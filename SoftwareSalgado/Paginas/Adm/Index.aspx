﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SoftwareSalgado.Paginas.ADM.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Text="Tela pricipal do administrador"></asp:Label>
            <br />
            <asp:LinkButton ID="lbSair" runat="server" OnClick="lbSair_Click">Sair</asp:LinkButton>
        </div>
    </form>
</body>
</html>