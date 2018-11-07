using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Classes;
using SoftwareSalgado.App_Code.Persistencia;

namespace SoftwareSalgado.Paginas
{
    public partial class AlterarProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ProdutoBD bd = new ProdutoBD();
                Produto produto = bd.Select(Convert.ToInt32(Session["ID"]));
                txtNome.Text = produto.Nome;
                //txtTipo.Text = produto.Tipo.ToString();
                txtPreco.Text = produto.Preco.ToString();
            }
                
        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            ProdutoBD bd = new ProdutoBD();
            Produto produto = bd.Select(Convert.ToInt32(Session["ID"]));
            produto.Nome = txtNome.Text;
            //produto.Tipo = txtTipo.Text;
            produto.Preco = Convert.ToDecimal(txtPreco.Text);
            

            if (bd.Update(produto))
            {
                lblMensagem.Text = "Produto alterado com sucesso";
                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}