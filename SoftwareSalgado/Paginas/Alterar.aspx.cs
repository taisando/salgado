using SoftwareSalgado.App_Code.Classes;
using SoftwareSalgado.App_Code.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoftwareSalgado.Paginas
{
    public partial class Alterar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ClienteBD bd = new ClienteBD();
                Cliente cliente = bd.Select(Convert.ToInt32(Session["ID"]));
                txtNome.Text = cliente.Nome;
                txtEndereco.Text = cliente.Endereco.ToString();
                txtTelefone.Text = cliente.Telefone.ToString();
                txtEmail.Text = cliente.Email.ToString();
                txtCPF.Text = cliente.CPF.ToString();
                txtEntrega.Text = cliente.Entrega.ToString();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            ClienteBD bd = new ClienteBD();
            Cliente cliente = bd.Select(Convert.ToInt32(Session["ID"]));
            cliente.Nome = txtNome.Text;
            cliente.Endereco = txtEndereco.Text;
            cliente.Telefone = txtTelefone.Text;
            cliente.Email = txtEmail.Text;
            cliente.CPF = txtCPF.Text;
            cliente.Entrega = txtEndereco.Text;


            if (bd.Update(cliente))
            {
                lblMensagem.Text = "Cliente alterado com sucesso";
                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}