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
    public partial class Cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            cliente.Nome = txtNome.Text;
            cliente.Endereco = txtEndereco.Text;
            cliente.Telefone = txtTelefone.Text;
            cliente.Email = txtEmail.Text;
            cliente.CPF = txtCPF.Text;            

            ClienteBD bd = new ClienteBD();
            bd.Insert(cliente) ;
                Response.Write("Cliente cadastrado com sucesso!");


           // bd.SelectByNome(txtNome.Text);
        }
    }
}