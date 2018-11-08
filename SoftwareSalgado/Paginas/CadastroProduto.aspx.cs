using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Classes;
using SoftwareSalgado.App_Code.Persistencia;
using System.Data;

namespace SoftwareSalgado.Paginas
{
    public partial class CadastroProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {                
                Carrega();
            }
        }
        private void Carrega()
        {
            CategoriaBD bd = new CategoriaBD();
            DataSet ds = bd.SelectAll();
            ddlCategoria.DataSource = ds.Tables[0].DefaultView;
            ddlCategoria.DataTextField = "cat_nome";
            ddlCategoria.DataValueField = "cat_codigo";
            ddlCategoria.DataBind();
            ddlCategoria.Items.Insert(0, "Selecione um Produto");
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Produto produto = new Produto();
            produto.Nome = txtNome.Text;
            produto.Categoria = Convert.ToInt32(ddlCategoria.Text);
            produto.Preco = Convert.ToDecimal(txtPreco.Text);

            ProdutoBD bd = new ProdutoBD();
            if (bd.Insert(produto))
            {
                Response.Write("<script>alert('Produto cadastrado com sucesso!')</script>");                
                txtNome.Text = "";
                txtPreco.Text = "";
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}