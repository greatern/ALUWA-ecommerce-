using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;
using HashPass;

namespace Aluwa3
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            Service1Client sc = new Service1Client();

            //creating a new customer
            var newUser = new User
            {
                //getting user input
                User_Name = TextBox1.Text,
                User_Surname = TextBox2.Text,
                UserRole = Selectedtype.SelectedValue,
                Email = TextBox3.Text,
                Password = Secrecy.HashPassword(TextBox4.Text),
            };

            //checing if registeration was succesful
            bool isReg = sc.Register(newUser);

            //Go to login page if registration was succesful
            if (isReg == true)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}