using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using SoftwareSalgado.App_Code.Classes;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class DespesaBD
    {
        public bool Insert(Despesa despesa)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_despesa(des_codigo, des_data, des_valor, sud_codigo) VALUES (?codigo, ?data, ?valor, ?categoria)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?codigo", despesa.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?data", despesa.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?valor", despesa.Valor));
            objCommand.Parameters.Add(Mapped.Parameter("?categoria", despesa.Categoria));

            objCommand.ExecuteNonQuery();
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return true;
        }

        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_subdespesa ORDER BY sud_nome; ", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet SelectDespesa()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT sud_nome, des_valor, des_data FROM tbl_despesa INNER JOIN tbl_subdespesa ON tbl_despesa.sud_codigo = tbl_subdespesa.sud_codigo where month(des_data)=MONTH(NOW()) AND year(des_data)=year(now()) ORDER BY des_data DESC; ", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }

        public DataSet GetDespesasMesTotal()
        {
            DataSet dsTotal = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT SUM(des_valor) as Valor from tbl_despesa where month(des_data)=MONTH(NOW()) AND year(des_data)=year(now()); ", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(dsTotal);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return dsTotal;
        }
    }
}