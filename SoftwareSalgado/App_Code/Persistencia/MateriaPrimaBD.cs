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