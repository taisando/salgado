using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using SoftwareSalgado.App_Code.Classes;
using System.Configuration;
using System.Data;

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
            CarregaTotal();

            int codigo = Convert.ToInt32(Session["ID"]);
            PessoaBD bd = new PessoaBD();
            Pessoa pessoa = bd.Select(codigo);

            string[] meses = new string[] { "Janeiro", "Feveiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };
            int mesatual = DateTime.Now.Month;
            lblMes.Text = meses[mesatual - 1];


            MateriaPrimaBD materiaPrimaBD = new MateriaPrimaBD();
            DataSet ds = materiaPrimaBD.GetEstoqueMinimo();
            string produtos = "";

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                string nome = Convert.ToString(dr["mat_nome"]);
                produtos = produtos + nome + ", ";
            }

            lblAlertaEstoqueMinimo.Text = "Produtos abaixo do estoque mínimo: " + produtos;
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect(ConfigurationManager.AppSettings["URL"] + "Paginas/NovaVenda.aspx");
        }

        private void CarregaTotal()
        {

            VendaBD bdVenda = new VendaBD();
            DataSet ds = bdVenda.GetVendasMesTotal();
            DataRow dr = ds.Tables[0].Rows[0];
            double venda = Convert.ToDouble(dr["valor"]);
            lblVenda.Text = venda.ToString();

            DespesaBD bdDespesa = new DespesaBD();
            DataSet dsTotal = bdDespesa.GetDespesasMesTotal();
            DataRow dre = dsTotal.Tables[0].Rows[0];
            double despesa = Convert.ToDouble(dre["Valor"]);
            lblDespesa.Text = despesa.ToString();

            double total = venda - despesa;

            lblTotal.Text = Convert.ToString(total);

        }

        protected void Plus_Click(object sender, EventArgs e)
        {
            Response.Redirect(ConfigurationManager.AppSettings["URL"] + "Paginas/NovaDespesa.aspx");
        }
    }
}
