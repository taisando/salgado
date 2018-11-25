<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="Graficos.aspx.cs" Inherits="SoftwareSalgado.Paginas.Graficos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="chart_div" style="width: 900px; height: 500px;"></div>

</asp:Content>
