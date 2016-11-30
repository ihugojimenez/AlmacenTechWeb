using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace AlmacenTech
{
    public partial class DefaultHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {

            //MailMessage message = new MailMessage();

            //message.From = new MailAddress("HugoFernando809@gmail.com");
            //message.To.Add("Hugofernando809@hotmail.com");
            //message.CC.Add("HugoFernando809@gmail.com");
            //message.Subject = "This is Subject";
            //message.SubjectEncoding = System.Text.Encoding.UTF8;
            //message.BodyEncoding = System.Text.Encoding.UTF8;
            //message.Body = "This is a test e-mail message sent by an application. ";


            //SmtpClient client = new SmtpClient();
            //client.Port = 587;
            //client.DeliveryMethod = SmtpDeliveryMethod.Network;
            //client.UseDefaultCredentials = true;
            //client.EnableSsl = true;
            //client.Host = "smtp.gmail.com";
            //client.Send(message);
            try
            {
                Correo Cr = new Correo();
                MailMessage mnsj = new MailMessage();

                mnsj.Subject = "AlmacenTech";

                mnsj.To.Add(new MailAddress("amiguito@domain.com"));

                mnsj.From = new MailAddress(CorreoTextBox.Text, NameTextBox.Text);

                /* Si deseamos Adjuntar algún archivo*/
                //mnsj.Attachments.Add(new Attachment("C:\\archivo.pdf"));

                mnsj.Body = MsjTextBox.Text;/*"  Mensaje de Prueba \n\n Enviado desde C#\n\n *VER EL ARCHIVO ADJUNTO*"*/

                /* Enviar */
                Cr.MandarCorreo(mnsj);
                //Enviado = true;

                //MessageBox.Show("El Mail se ha Enviado Correctamente", "Listo!!", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}