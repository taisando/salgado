using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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
            cliente.Telefone = txtTelefone.Text;
            cliente.Email = txtEmail.Text;
            cliente.CPF = txtCPF.Text;
            cliente.Tipo = 1;

            Endereco endereco = new Endereco();
            endereco.Logradouro = txtLogradouro.Text;
            endereco.Numero = Convert.ToInt32(txtNumero.Text);
            endereco.Complemento = txtComplemento.Text;
            endereco.Cidade = txtCidade.Text;

           

            ClienteBD bd = new ClienteBD();
            bd.Insert(cliente, endereco);
            Response.Write("<script>alert('Cliente cadastrado com sucesso!')</script>");



            // bd.SelectByNome(txtNome.Text);
        }
    }
}