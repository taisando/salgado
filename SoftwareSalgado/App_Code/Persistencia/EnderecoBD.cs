using FATEC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SoftwareSalgado.App_Code.Classes;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class EnderecoBD
    {
        //métodos
        //insert
        public bool Insert(Endereco endereco)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_endereco (end_codigo, end_logradouro, end_numero, end_complemento, end_cidade, pes_codigo) VALUES (?codigo, ?logradouro, ?numero, ?complemento, ?cidade, ?cliente)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?codigo", endereco.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?logradouro", endereco.Logradouro));
            objCommand.Parameters.Add(Mapped.Parameter("?numero", endereco.Numero));
            objCommand.Parameters.Add(Mapped.Parameter("?complemento", endereco.Complemento));
            objCommand.Parameters.Add(Mapped.Parameter("?cidade", endereco.Cidade));
            objCommand.Parameters.Add(Mapped.Parameter("?cliente", endereco.Cliente));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;

        }
        //selectall
    }
}