using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.Models;

namespace WebApplication2.Repositories
{
    public class UserRepository
    {
        private string _connectionString = "Data Source=IPORT\\SQLEXPRESS; Integrated Security=True; Initial Catalog=iPortCrud;";

            
        public void InsertData(User user)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = $@"INSERT INTO iPortCrud.dbo.usuarios (nome, cpf, email, data_nascimento, genero, celular, senha) 
                          VALUES ('{user.Name}', '{user.CPF}', '{user.Email}', '{user.Date}', '{user.Gender}', '{user.Phone}', '{user.Password}')";

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
        }

         
        public bool VerifyCPF(string cpf) 
        {
            using (SqlConnection connection = new SqlConnection(_connectionString)) 
            {

                string queryCPF = $@"SELECT cpf FROM iPortCrud.dbo.usuarios WHERE cpf = '{cpf}'";

                SqlCommand command = new SqlCommand(queryCPF, connection);

                connection.Open();
                command.ExecuteNonQuery();

                var result = command.ExecuteScalar();

                string retornoDado = (result != null) ? result.ToString() : "";

                if (!string.IsNullOrEmpty(retornoDado))
                {
                    return false;
                }

                return true;

            }


        }


        public bool VerifyEmail(string email)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {

                string queryEmail = $@"SELECT email FROM iPortCrud.dbo.usuarios WHERE email = '{email}'";

                SqlCommand command = new SqlCommand(queryEmail, connection);

                connection.Open();
                command.ExecuteNonQuery();

                var result = command.ExecuteScalar();

                string retornoDado = (result != null) ? result.ToString() : "";

                if (!string.IsNullOrEmpty(retornoDado))
                {
                    return false;
                }


                return true;

            }


        }


    }
}