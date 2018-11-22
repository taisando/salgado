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
    public partial class NovaDespesa : System.Web.UI.Page
    {
      /* protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            DespesaBD despesa = new DespesaBD();
            despesa.Categoria = Convert.ToString(ddlCategoria.Text);


            DespesaBD bd = new DespesaBD();
            if (bd.Insert(despesa))
            {
                Response.Write("<script>alert('Produto cadastrado com sucesso!')</script>");
                txtValor.Text = "";
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }*/
    }
}