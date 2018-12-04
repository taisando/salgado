using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Classes;
using System.Data;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class EstoqueMPBD
    {

        //métodos
        //insert
        public bool Insert(EstoqueMP estoqueMP)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_estoquemp(est_codigo, est_quantidade, est_data, mat_codigo) " +
                         "VALUES (?codigo, ?quantidade, ?data, ?materiaprima)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?codigo", estoqueMP.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", estoqueMP.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?data", estoqueMP.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?materiaprima", estoqueMP.MateriaPrima));

            objCommand.ExecuteNonQuery();
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        public DataSet SelectAllByCategoria(int categoria)
        {
            DataSet ds = new DataSet();

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_materiaprima WHERE mat_codigo = ?categoria ORDER BY mat_nome;", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?categoria", categoria));

            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);

            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_materiaprima ORDER BY mat_nome;", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public DataSet GetEstoque()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT mat_nome, SUM(est_quantidade) AS quantidade FROM tbl_materiaprima INNER JOIN tbl_estoquemp ON tbl_estoquemp.mat_codigo = tbl_materiaprima.mat_codigo GROUP BY mat_nome; ", objConexao);

            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        public bool InsertEstoque( int codigo, double total)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_estoquemp (est_quantidade, est_data, mat_codigo) VALUES (?total, ?data, ?codigo) ";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?total", -total));
            objCommand.Parameters.Add(Mapped.Parameter("?data", DateTime.Now));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));


            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return true;
        }
    }
}
