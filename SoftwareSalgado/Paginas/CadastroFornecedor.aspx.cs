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
    public partial class CadastroFornecedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Fornecedor fornecedor = new Fornecedor();
            fornecedor.Nome = txtNome.Text;
            fornecedor.Email = txtEmail.Text;
            fornecedor.Telefone = txtTelefone.Text;
            fornecedor.CNPJ = txtCNPJ.Text;

            FornecedorBD bd = new FornecedorBD();
            bd.Insert(fornecedor);
            Response.Write("<script>alert('Fornecedor cadastrado com sucesso!')</script>");
        }
    }
}