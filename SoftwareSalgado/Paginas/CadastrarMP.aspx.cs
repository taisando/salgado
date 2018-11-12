using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using SoftwareSalgado.App_Code.Classes;
using System.Data;

namespace SoftwareSalgado.Paginas
{
    public partial class CadastrarMP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
        }
       
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            MateriaPrima materiaPrima = new MateriaPrima();
            materiaPrima.Nome = txtNome.Text;            

            MateriaPrimaBD bd = new MateriaPrimaBD();
            if (bd.Insert(materiaPrima))
            {
                Response.Write("<script>alert('Matéria-prima cadasttrada com sucesso!')</script>");               
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}