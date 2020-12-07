using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            if (string.IsNullOrWhiteSpace(username))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Имя пользователя не должно быть пустым!')", true);
                return;
            }
            string password = TextBox2.Text;
            if (password.Length < 8)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('пароль должен содержать не менее 8 символов!')", true);
                return;
            }
            string repeatPassword = TextBox3.Text;
            if (!repeatPassword.Equals(password))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Пароли не совпадают')", true);
                return;
            }
            int age = int.Parse(TextBox5.Text);
            if (age < 18 || age > 65)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Возраст должен быть от 18 до 65!')", true);
                return;
            }
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Всё хорошо!')", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            if (string.IsNullOrWhiteSpace(username))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Имя пользователя не должно быть пустым!')", true);
                return;
            }
            string password = TextBox2.Text;
            if (password.Length < 8)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('пароль должен содержать не менее 8 символов!')", true);
                return;
            }
            Session["data"] = new KeyValuePair<string, string>(username, password);
            Response.Redirect("WebForm3.aspx", true);
        }
    }
}