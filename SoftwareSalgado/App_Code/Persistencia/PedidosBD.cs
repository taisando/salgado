using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Classes;
using System.Data;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class PedidosBD
    {
        //métodos
        //insert
        public bool Insert(Pedido pedido)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;

            string sql = "INSERT INTO tbl_pedido (ped_codigo, ped_data, ped_quantidade, ped_valortotal)" + 
                "VALUES (?codigo, ?data, ?quantidade, ?valortotal)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?codigo", pedido.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?data", pedido.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", pedido.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?valortotal", pedido.ValorTotal));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //selectall
    }
}