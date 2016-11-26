using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Controls
{
    public partial class ButtonsWebUserControl : System.Web.UI.UserControl
    {
        
        public LinkButton BotonNuevo
        {
            get { return NewButton; }
            set { NewButton = BotonNuevo; }
        }

        public LinkButton BotonGuardar
        {
            get { return SaveButton; }
            set { SaveButton = BotonGuardar; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void UpdateButton_Click(object sender, EventArgs e)
        {

        }

        public void DeleteButton_Click(object sender, EventArgs e)
        {

        }

        public void NewButton_Click(object sender, EventArgs e)
        {

        }
    }
}