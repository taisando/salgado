using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Classes;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class VendaItemBD
    {
        public bool Insert(VendaItem item)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_vendaitem(pro_codigo, ven_codigo, vit_quantidade, vit_subtotal, vit_precounitario) VALUES (?produto, ?venda, ?quantidade, ?subtotal, ?precounitario)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?produto", item.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?venda", item.Venda));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", item.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?subtotal", item.Subtotal));
            objCommand.Parameters.Add(Mapped.Parameter("?precounitario", item.PrecoUnitario));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return true;
        }

    }
}