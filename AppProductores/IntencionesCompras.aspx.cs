using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppProductores
{
    public partial class IntencionesCompras : System.Web.UI.Page
    {
        private WebServicesProductores.AgroMarketServiceClient client = new WebServicesProductores.AgroMarketServiceClient();
        string userName = string.Empty;
        string token = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            //User information and Token Session
           

            if (Session["userName"] != null)
            {
                userName = Session["userName"].ToString();
            }

            if (Session["token"] != null)
            {
                token = Session["token"].ToString();
            }

            var _response = client.GetAllIntentionsToBuy(userName, token);

            if (_response.Error.Code != "AG000")
            {
                // TOO: Manejar error

            }
            else
            {

                IntencionGrid.DataSource = _response.Intentions.ToList();
                IntencionGrid.DataBind();
            }

        }
           




}
    }
