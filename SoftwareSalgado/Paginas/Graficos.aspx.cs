using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftwareSalgado.App_Code.Persistencia;
using System.Data;

namespace SoftwareSalgado.Paginas
{
    public partial class Graficos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega();
        }
        private void Carrega()
        {
            VendaBD bd = new VendaBD();
            DataSet ds = bd.GetClientesMaisCompram();

            string dados = "";
            //varre linhas do dataset
            dados = dados + "['Nome', 'Valor em R$'],";
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];

                string nome = Convert.ToString(dr["pes_nome"]);
                int valor = Convert.ToInt32(dr["SUM(ven_valortotal)"]);

                dados = dados + "['" + nome + "', " + valor + "],";
            }
            string grafico = "";
            grafico = grafico + "<script type='text/javascript'>";
            grafico = grafico + "google.load('visualization', '1', {packages:['corechart']});";
            grafico = grafico + "function drawChart() {";
            grafico = grafico + "var data = google.visualization.arrayToDataTable([";
            grafico = grafico + dados;
            grafico = grafico + "]);";
            grafico = grafico + "var options = {";
            grafico = grafico + "title: 'Produtos em Estoque',";
            grafico = grafico + "is3D: true ";
            grafico = grafico + "};";
            grafico = grafico + "var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));";
            grafico = grafico + "chart.draw(data, options);";
            grafico = grafico + "}";
            grafico = grafico + "google.setOnLoadCallback(drawChart);";
            grafico = grafico + "</script>";

            Literal1.Text = grafico;
        }
    }
}
