using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using SoftwareSalgado.App_Code.Classes;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class MateriaPrimaBD
    {
        public DataSet GetEstoqueMinimo()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT tbl_materiaprima.mat_nome, sum(tbl_estoquemp.est_quantidade) AS soma, tbl_materiaprima.mat_estoqueminimo FROM tbl_materiaprima inner join tbl_estoquemp ON tbl_materiaprima.mat_codigo=tbl_estoquemp.mat_codigo   group by mat_nome having soma < mat_estoqueminimo;", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);

            objDataAdapter.Fill(ds);
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }

        public bool Insert(MateriaPrima materiaPrima)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;

            string sql = "INSERT INTO tbl_materiaprima(mat_codigo, mat_nome)" + "VALUES (?codigo, ?nome)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?codigo", materiaPrima.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?nome", materiaPrima.Nome));
            
            objCommand.ExecuteNonQuery();
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        } 
    }
}