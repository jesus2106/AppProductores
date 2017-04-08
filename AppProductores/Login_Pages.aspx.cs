using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppProductores
{
    public partial class Login_Pages : System.Web.UI.Page
    {

        private WebServicesProductores.AgroMarketServiceClient client = new WebServicesProductores.AgroMarketServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string nombreusuario = txtUserName.Text;
            string contra = txtPassword.Text;

            var response = client.SignIn(nombreusuario, contra);
            if(response.Error.Code.Equals("AG000") && response.UserId.ToString() != "")
            {

                Session["token"] = response.Token;
                Session["UserName"] = response.UserName;
                Session["UserID"] = response.UserId;
                Response.Redirect("Home.aspx");

            }

           else
            {
                Response.Redirect("Error");

            }


        }
    }
}