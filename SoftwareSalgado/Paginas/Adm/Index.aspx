<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SoftwareSalgado.Paginas.ADM.Index" Title="" MasterPageFile="~/Content/Master/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../../Content/Iconic/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="../../Content/Iconic/materialdesignicons.css" rel="stylesheet" />
    <link href="../../Content/Iconic/materialdesignicons.min.css" rel="stylesheet" />
    <link href="../../Content/images/icons/icon-font.min.css" rel="stylesheet" />
    <link href="../../Content/CSS/style.css" rel="stylesheet" />
    <link href="../../Content/CSS/vendor.bundle.base.css" rel="stylesheet" />
    <link href="../../Content/CSS/main.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-panel content-wrapper">
        <asp:Label ID="lblTitulo" runat="server" Text="Tela Pricipal do Administrador" CssClass="h4"></asp:Label>

        <br />
        <div class="card">
            <div class="card-body">
                <asp:Label runat="server" Text="Mês: "></asp:Label>

                <br />
                <br />
                <div class="row">
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-danger card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute" />
                                <h4 class="font-weight-normal mb-3">Despesas                    
                                        <i class="mdi mdi-chart-line mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$ 1.000,00</h2>
                                <h6 class="card-text">Increased by 60%</h6>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-success card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute" />
                                <h4 class="font-weight-normal mb-3">Receita                    
                            <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
                                </h4>
                                <h2 class="mb-5">R$ 4.000,00</h2>
                                <h6 class="card-text">Decreased by 10%</h6>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-info card-img-holder text-white">
                            <div class="card-body">
                                <asp:Image runat="server" ImageUrl="~/Content/images/circle.svg" CssClass="card-img-absolute mb-3" />
                                <h4 class="font-weight-normal mb-3">Lucro                   
                            <i class="mdi mdi-diamond mdi-24px float-right"></i>
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


