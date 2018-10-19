using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using SoftwareSalgado.App_Code.Classes;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class UsuarioBD
    {
        public Usuario Autentica(string nomeusuario, string senha)
        {
            Usuario obj = null;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_usuario WHERE usu_nomeusuario = ?nomeususario and usu_senha = ?senha", objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?nomeusuario", nomeusuario));
            objCommand.Parameters.Add(Mapped.Parameter("?senha", senha));

            objDataReader = objCommand.ExecuteReader();

            while (objDataReader.Read())
            {
                obj = new Usuario();
                obj.Codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                obj.NomeUsuario = Convert.ToString(objDataReader["usu_nomeusuario"]);
                obj.Senha = Convert.ToString(objDataReader["usu_senha"]);
            }

            objDataReader.Close();
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();

            return obj;
        }

        public Usuario Select (int codigo)
        {
            Usuario obj = null;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_usuario WHERE usu_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));

            objDataReader = objCommand.ExecuteReader();

            while (objDataReader.Read())
            {
                obj = new Usuario();
                obj.Codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                obj.NomeUsuario = Convert.ToString(objDataReader["usu_nomeusuario"]);
                obj.Senha = Convert.ToString(objDataReader["usu_senha"]);

            }

            objDataReader.Close();
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();

            return obj;
        }

        public UsuarioBD()
        {

        }
    }
}