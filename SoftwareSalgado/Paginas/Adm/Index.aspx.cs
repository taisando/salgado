using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using SoftwareSalgado.App_Code.Classes;
using System.Configuration;

namespace SoftwareSalgado.Paginas.ADM
{
    public partial class Index : System.Web.UI.Page
    {

        protected void lbSair_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("../Login.aspx");
        }


        private bool IsAdministrador(int tipo)
        {
            bool retorno = false;
            if (tipo == 0)
            {
                retorno = true;
            }
            return retorno;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            int codigo = Convert.ToInt32(Session["ID"]);
            PessoaBD bd = new PessoaBD();
            Pessoa pessoa = bd.Select(codigo);
            Response.Write("Bem vindo! : " + pessoa.Nome);

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect(ConfigurationManager.AppSettings["URL"] +  "Paginas/NovaVenda.aspx");
        }
    }

}
