using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.Models
{
    public class User
    {
        public User(string name, string phone, string cpf, string email, string date, string gender, string password)
        {
            Name = name;
            Phone = phone;
            CPF = cpf;
            Email = email;
            Date = date;
            Gender = gender;
            Password = password;
        }


        public string Name{ get; set; }
        public string Phone { get; set; }
        public string CPF { get; set; }
        public string Email{ get; set; }
        public string Date{ get; set; }
        public string Gender{ get; set; } 
        public string Password{ get; set; }


    }
}