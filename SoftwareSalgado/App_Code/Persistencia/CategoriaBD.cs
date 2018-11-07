using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class CategoriaBD
    {
        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_categoria ", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);

            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }

    }
}