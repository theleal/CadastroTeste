using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using WebApplication2.Models;
using WebApplication2.Repositories;

namespace WebApplication2
{
    public partial class Index : System.Web.UI.Page
    {

        private UserRepository _userRepository = new UserRepository();



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var NameStr = CampoNome.Text;
            var TelefoneStr = telefone.Text;
            var CPFStr = CampoCPF.Text;
            var DateStr = date.Text;
            var GenderStr = Input_select.Text;
            var PasswordStr = confirm_password.Text;
            var EmailStr = campoEmail.Text;

            var user = new User(
                            CampoNome.Text,
                            telefone.Text,
                            CampoCPF.Text,
                            campoEmail.Text,
                            date.Text,
                            Input_select.Text,
                            confirm_password.Text
                            );


            var cpfValido = _userRepository.VerifyCPF(CPFStr);
            var emailValido = _userRepository.VerifyEmail(EmailStr);

            if (cpfValido && emailValido)
            {
                lblMensagem.Text = "Cadastrado com sucesso";
                _userRepository.InsertData(user);
            }
            else if (!cpfValido && emailValido)
            {
                lblMensagem.Text = "O CPF já está cadastrado no sistema";
                CampoCPF.Text = "";
            }
            else if (cpfValido && !emailValido)
            {
                lblMensagem.Text = "O Email já está cadastrado no sistema";
                campoEmail.Text = "";
            }
            else
            {
                lblMensagem.Text = "Email e CPF já cadastrados no sistema";
                CampoCPF.Text = "";
                campoEmail.Text = "";
            }



        }

    }
}