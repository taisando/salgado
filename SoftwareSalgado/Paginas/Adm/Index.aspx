<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SoftwareSalgado.Paginas.ADM.Index" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../vendorsMP/iconfonts/mdi/css/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../vendorsMP/css/vendor.bundle.base.css" rel="stylesheet" />
    <link href="../CSS/style.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Tela Pricipal do Administrador" CssClass="h4"></asp:Label>
        <br />
        <br />
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" Text="Mês: "></asp:Label>

                <br />
                <br />
                <div class="row">
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-success card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute" />
                                <h4 class="font-weight-normal mb-3">Vendas                  
                            <i class="mdi mdi-square-inc-cash mdi-22px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$ 4.000,00</h2>
                                <h6 class="card-text">
                                    <a href="../NovaVenda.aspx">Nova Venda</a></h6>
                                <button type="button" class="btn btn-gradient btn-rounded btn-icon">
                                    <a href="../NovaVenda.aspx"><i class="mdi mdi-home-outline"></i></a>
                                </button>

                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-danger card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute" />
                                <h4 class="font-weight-normal mb-3">Despesas                    
                                        <i class="mdi mdi-contrast-circle mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$ 1.000,00</h2>
                                <h6 class="card-text">Nova Despesa</h6>
                                
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
                                <h6 class="card-text">Increased by 5%</h6>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



</asp:Content>


