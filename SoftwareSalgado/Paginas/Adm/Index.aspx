<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SoftwareSalgado.Paginas.ADM.Index" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="" CssClass="h4"></asp:Label>
        <asp:Label runat="server" ID="lblAlertaEstoqueMinimo" CssClass="h4 text-danger"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">                
                
                <asp:Label runat="server" Text="Mês " CssClass="h5"></asp:Label>
                <asp:Label runat="server" ID="lblMes" CssClass="h5"></asp:Label>

                <br />
                <br />
                <div class="row">
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-success card-img-holder text-white">
                            <div runat="server" class="card-body">

                                <h4 class="font-weight-normal mb-3">Vendas                  
                                    <i class="mdi mdi-square-inc-cash mdi-22px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$ 4.000,00</h2>
                                <h6 class="card-text">Adicionar Nova Venda </h6>
                                <asp:Button runat="server" OnClick="Unnamed3_Click" Text="+" CssClass="btn btn-gradient-primary btn-icon btn-rounded font-weight-bold h6" />
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-danger card-img-holder text-white">
                            <div class="card-body">

                                <h4 class="font-weight-normal mb-3">Despesas                    
                                        <i class="mdi mdi-contrast-circle mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$ 1.000,00</h2>
                                <h6 class="card-text">Nova Despesa</h6>
                                <asp:Button runat="server"  Text="+" CssClass="btn btn-gradient-primary btn-icon btn-rounded font-weight-bold h6" />
                            </div>
                        </div>
                    </div>



                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-info card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute mb-3" />
                                <h4 class="font-weight-normal mb-3">Lucro                   
                            <i class="mdi mdi-calculator mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$</h2>
                                <h6 class="card-text"></h6>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



</asp:Content>


