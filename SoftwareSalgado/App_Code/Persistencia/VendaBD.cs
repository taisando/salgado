using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Classes;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class VendaBD
    {
        public int Insert(Venda venda)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_venda(pes_codigo, ven_data, ven_valortotal) VALUES (?cliente, ?data, ?total)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?cliente", venda.Cliente));
            objCommand.Parameters.Add(Mapped.Parameter("?data", venda.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?total", venda.ValorTotal));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return GetID(venda.Cliente, venda.Data);
        }

        public bool UpdateTotal(int venda, decimal subtotal)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_venda SET ven_valortotal=ven_valortotal + ?subtotal WHERE ven_codigo = ?codigo";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?subtotal", subtotal));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", venda));


            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return true;
        }

        public int GetID(int cliente, DateTime data)
        {
            int codigo = 0;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_venda WHERE pes_codigo= ?cliente AND ven_data = ?data ORDER BY ven_codigo DESC;", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?cliente", cliente));
            objCommand.Parameters.Add(Mapped.Parameter("?data", data));

            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {

                codigo = Convert.ToInt32(objDataReader["ven_codigo"]);
            }

            objDataReader.Close();
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();

            return codigo;
        }
    }
}