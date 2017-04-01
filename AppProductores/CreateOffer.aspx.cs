using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppProductores
{
    public partial class CreateOffer : System.Web.UI.Page
    {

        private WebServicesProductores.AgroMarketServiceClient client = new WebServicesProductores.AgroMarketServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }



        protected void btnCreateOffer_Click(object sender, EventArgs e)
        {
            try
            {             

                int Cantidad = Convert.ToInt32(txtCantidad.Text);
                int TipoUnidad = Convert.ToInt32(txtTipoUnidad.Text);
                decimal PrecioUnidad = Convert.ToDecimal(txtPrecioUnidad.Text);
                string CodigoProducto = txtCodigoProducto.Text;


                //User information and Token Session
                string userName = string.Empty;
                string token = string.Empty;

                if (Session["userName"] != null)
                {
                    userName = Session["userName"].ToString();
                }

                if (Session["token"] != null)
                {
                    token = Session["token"].ToString();
                }



                var _response = client.CreateOffer(userName, token, Convert.ToInt32(txtCantidad.Text), 
                    Convert.ToInt32(txtTipoUnidad.Text), Convert.ToDecimal(txtPrecioUnidad.Text), txtCodigoProducto.Text);

                if (_response.Error.Code != "AG000")
                {
                    // TOO: Manejar error
                    
                }
                else {
                    // EXITOSO
                }

            }
            catch (Exception ex)
            {
                // TODO: Mostrark
            }


        }

        protected void txtPrecioUnidad_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
