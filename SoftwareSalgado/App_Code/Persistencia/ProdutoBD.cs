﻿using FATEC;
using System;
using System.Web;
using SoftwareSalgado.App_Code.Classes;
using System.Data;

namespace SoftwareSalgado.App_Code.Persistencia
{
    public class ProdutoBD
    {

        public bool Insert(Produto produto)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_produto(pro_nome, pro_tipo, pro_preco) VALUES (?nome, ?tipo, ?preco)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", produto.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?tipo", produto.Tipo));
            objCommand.Parameters.Add(Mapped.Parameter("?preco", produto.Preco));
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
            objCommand = Mapped.Command("SELECT * FROM tbl_produto", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        public Produto Select(int id)
        {
            Produto obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_produto WHERE pro_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Produto();
                obj.Codigo = Convert.ToInt32(objDataReader["pro_codigo"]);
                obj.Nome = Convert.ToString(objDataReader["pro_nome"]);
                obj.Tipo = Convert.ToString(objDataReader["pro_tipo"]);
                obj.Preco = Convert.ToString(objDataReader["pro_preco"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(Produto produto)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_produto SET pro_nome=?nome, pro_tipo=?tipo, pro_preco=?preco WHERE pro_codigo =?codigo";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", produto.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?tipo", produto.Tipo));
            objCommand.Parameters.Add(Mapped.Parameter("?preco", produto.Preco));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", produto.Codigo));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //delete

    }
}