<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.Master" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" Inherits="SoftwareSalgado.Paginas.Relatorio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" CssClass="card-body h4" Text="Relatórios de Venda"></asp:Label>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-12 stretch-card grid-margin">
                        <div class="card bg-gradient-success card-img-holder text-white">
                            <div runat="server" class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute mb-3" />
                                <h4 class="font-weight-normal mb-3">Relatorio de Vendas                  
                                    <i class="mdi mdi-square-inc-cash mdi-22px float-right"></i>
                                </h4>
                                <h2 class="mb-5">Total de Vendas do Mês</h2>                                
                                <h6 class="card-text"></h6>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

</asp:Content>
