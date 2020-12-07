using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Dictionary<string, string> users;
        protected void Page_Load(object sender, EventArgs e)
        {
            users = new Dictionary<string, string>()
            {
                { "user","user" },
                {"admin", "admin" }
            };
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            string login = Request.Form["inputLogin"];
            string password = Request.Form["inputPassword"];

            if (users.Contains(new KeyValuePair<string, string>(login, password)))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Всё верно. Добро пожаловать!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Что-то не так. Введите логин и пароль заново')", true);
            }

            Response.Redirect("WebForm4.aspx", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string message = "";
            message += $"TextBox: {TextBox1.Text}{Environment.NewLine} ";
            message += $"ListBox: {ListBox1.SelectedValue}{Environment.NewLine}  ";
            message += $"DropdownList: {DropDownList1.SelectedValue}{Environment.NewLine}  ";
            if (RadioButton1.Checked)
            {
                message += $"RadioButton1 check {Environment.NewLine} ";
            }
            if (RadioButton2.Checked)
            {
                message += $"RadioButton2 check {Environment.NewLine} ";
            }
            if (RadioButton3.Checked)
            {
                message += $"RadioButton3 check {Environment.NewLine} ";
            }

            Label1.Text = message;
        }
    }
}