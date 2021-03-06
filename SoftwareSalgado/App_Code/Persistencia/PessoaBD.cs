﻿using System;
using System.Data;
using FATEC;
using SoftwareSalgado.App_Code.Classes;


namespace SoftwareSalgado.App_Code.Persistencia
{
    public class PessoaBD
    {        

        public Pessoa Autentica (string nome, string senha)
        {
            Pessoa obj = null;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_usuario WHERE usu_nomeusuario = ?nome and usu_senha = ?senha", objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?nome", nome));
            objCommand.Parameters.Add(Mapped.Parameter("?senha", senha));

            objDataReader = objCommand.ExecuteReader();

            while (objDataReader.Read())
            {
                obj = new Pessoa();
                obj.Codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                obj.Nome = Convert.ToString(objDataReader["usu_nomeusuario"]);                
                obj.Tipo = Convert.ToInt32(objDataReader["usu_tipo"]);
            }

            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();

            return obj;
        }

        public Pessoa Select(int codigo)
        {
            Pessoa obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();

            objCommand = Mapped.Command("SELECT * FROM tbl_pessoa WHERE pes_codigo = ?codigo", objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));
            objDataReader = objCommand.ExecuteReader();

            while (objDataReader.Read())
            {
                obj = new Pessoa();
                obj.Codigo = Convert.ToInt32(objDataReader["pes_codigo"]);
                obj.Nome = Convert.ToString(objDataReader["pes_nome"]);               
                obj.Tipo = Convert.ToInt32(objDataReader["pes_tipo"]);
            }

            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();

            return obj;
        }


    }

}


