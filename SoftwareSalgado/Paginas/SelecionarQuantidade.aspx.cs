using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using System.Data;
using SoftwareSalgado.App_Code.Classes;

namespace SoftwareSalgado.Paginas
{
    public partial class SelecionarQuantidade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int produtoID = Convert.ToInt32(Session["ProdutoID"]);
                ProdutoBD bd = new ProdutoBD();
                Produto produto = bd.Select(produtoID);

                lblProduto.Text = produto.Nome;
                lblPreco.Text = produto.Preco.ToString();
            }
        }

        protected void btnUm_Click(object sender, EventArgs e)
        {
            AtualizaValor(1);
        }

        private void AtualizaValor(int quantidade)
        {
            double total = Convert.ToDouble(lblSubtotal.Text);

            double subtotal = 0;
            double preco = Convert.ToDouble(lblPreco.Text);
            subtotal = preco * quantidade;

            total = total + subtotal;
            lblSubtotal.Text = total.ToString();

            int quantidadeatual = Convert.ToInt32(lblQuantidade.Text);
            quantidadeatual = quantidadeatual + quantidade;
            lblQuantidade.Text = quantidadeatual.ToString();
        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {

            int venda = Convert.ToInt32(Session["VendaID"]);
            int produto = Convert.ToInt32(Session["ProdutoID"]);
            int quantidade = Convert.ToInt32(lblQuantidade.Text);
            decimal subtotal = Convert.ToDecimal(lblSubtotal.Text);

            VendaItemBD vendaItemBD = new VendaItemBD();
            VendaItem vendaItem = new VendaItem();
            vendaItem.Produto = produto;
            vendaItem.Venda = venda;
            vendaItem.Quantidade = quantidade;
            vendaItem.Subtotal = subtotal;
            vendaItemBD.Insert(vendaItem);

            VendaBD vendaBD = new VendaBD();
            vendaBD.UpdateTotal(venda, subtotal);

            Session["CategoriaID"] = 0;
            Session["ProdutoID"] = 0;
            Response.Redirect("SelecionarCategoria.aspx");
        }

        protected void btnFinalizarVenda_Click(object sender, EventArgs e)
        {
            int venda = Convert.ToInt32(Session["VendaID"]);
            int produto = Convert.ToInt32(Session["ProdutoID"]);
            int quantidade = Convert.ToInt32(lblQuantidade.Text);
            decimal subtotal = Convert.ToDecimal(lblSubtotal.Text);

            VendaItemBD vendaItemBD = new VendaItemBD();
            VendaItem vendaItem = new VendaItem();
            vendaItem.Produto = produto;
            vendaItem.Venda = venda;
            vendaItem.Quantidade = quantidade;
            vendaItem.Subtotal = subtotal;
            vendaItemBD.Insert(vendaItem);

            VendaBD vendaBD = new VendaBD();
            vendaBD.UpdateTotal(venda, subtotal);

            Session["VendaID"] = 0;
            Session["CategoriaID"] = 0;
            Session["ProdutoID"] = 0;
            
            Response.Redirect("NovaVenda.aspx");
        }

        protected void btnDois_Click(object sender, EventArgs e)
        {
            AtualizaValor(2);
        }

        protected void btnTres_Click(object sender, EventArgs e)
        {
            AtualizaValor(3);
        }

        protected void btnQuatro_Click(object sender, EventArgs e)
        {
            AtualizaValor(4);
        }

        protected void btnCinco_Click(object sender, EventArgs e)
        {
            AtualizaValor(5);
        }

        protected void btnSeis_Click(object sender, EventArgs e)
        {
            AtualizaValor(6);
        }

        protected void btnSete_Click(object sender, EventArgs e)
        {
            AtualizaValor(7);
        }

        protected void btnOito_Click(object sender, EventArgs e)
        {
            AtualizaValor(8);
        }

        protected void btnNove_Click(object sender, EventArgs e)
        {
            AtualizaValor(9);
        }

        protected void btnDez_Click(object sender, EventArgs e)
        {
            AtualizaValor(10);
        }

        protected void btnQuinze_Click(object sender, EventArgs e)
        {
            AtualizaValor(15);
        }

        protected void btnVinte_Click(object sender, EventArgs e)
        {
            AtualizaValor(20);
        }
        protected void btnCinquenta_Click(object sender, EventArgs e)
        {
            AtualizaValor(50);
        }
    }
}