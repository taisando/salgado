using SoftwareSalgado.App_Code.Classes;
using SoftwareSalgado.App_Code.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;


namespace SoftwareSalgado.Paginas
{
    public partial class Login : System.Web.UI.Page
    {

        private bool IsPreenchido(string str)
        {
            bool retorno = false;
            if (str != string.Empty)
            {
                retorno = true;
            }
            return retorno;
        }
        private bool UsuarioEncontrado(Pessoa pessoa)
        {
            bool retorno = false;
            if (pessoa != null)
            {
                retorno = true;
            }
            return retorno;
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text.Trim();
            string senha = txtSenha.Text.Trim();
            if (!IsPreenchido(nome))
            {
                lblMensagem.Text = "Preencha o nome do usuário";
                txtNome.Focus();
                return;
            }
            if (!IsPreenchido(senha))
            {

                lblMensagem.Text = "Preencha a senha";
                txtSenha.Focus();
                return;
            }

            PessoaBD bd = new PessoaBD();
            Pessoa pessoa = new Pessoa();
            pessoa = bd.Autentica(nome, senha);
            if (!UsuarioEncontrado(pessoa))
            {

                lblMensagem.Text = "Usuário não encontrado";
                txtNome.Focus();
                return;
            }

            Session["ID"] = pessoa.Codigo;
            switch (pessoa.Tipo)
            {
                case 0:
                    Response.Redirect("ADM/Index.aspx");
                    break;

            }
        }
    }

}