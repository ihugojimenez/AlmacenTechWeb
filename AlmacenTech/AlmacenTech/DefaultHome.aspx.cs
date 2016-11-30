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

        protected void SendMail()
        {
            // Gmail Address from where you send the mail
            var fromAddress = "hugofernando809@gmail.com"; //your email id from which you want to send e-mail
                                                    // any address where the email will be sending
            var toAddress = "hugofernando809@gmail.com";  //email id to whom you you are sending e-mail
                                                        //Password of your gmail address
            const string fromPassword = "Fefo54321"; //your email password
                                                    // Passing the values and make a email formate to display
            string subject = "AlmacenTech";
            string body = "From: " + "YO" + "\n";
            body += "Email: " + "Probando a ver" + "\n";
            body += "Subject: " + "nose" + "\n";
            body += "Question: \n" + "No se" + "\n";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com"; //host name
                smtp.Port = 587; //port number
                smtp.EnableSsl = true; //whether your smtp server requires SSL
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {


            try
            {
                //here on button click what will done
                SendMail();
                //DisplayMessage.Text = "Your message after sending the mail";
                //DisplayMessage.Visible = true;
                //YourSubject.Text = "";
                //YourEmail.Text = "";
                //YourName.Text = "";
                //Comments.Text = "";
            }
            catch (Exception ex) { throw ex; }
            //try
            //{
            //    Correo Cr = new Correo();
            //    MailMessage mnsj = new MailMessage();

            //    mnsj.Subject = "AlmacenTech";

            //    mnsj.To.Add(new MailAddress("hugofernando809@gmail.com"));

            //    mnsj.From = new MailAddress(CorreoTextBox.Text, NameTextBox.Text);

            //    /* Si deseamos Adjuntar algún archivo*/
            //    //mnsj.Attachments.Add(new Attachment("C:\\archivo.pdf"));

            //    mnsj.Body = MsjTextBox.Text;/*"  Mensaje de Prueba \n\n Enviado desde C#\n\n *VER EL ARCHIVO ADJUNTO*"*/

            //    /* Enviar */
            //    Cr.MandarCorreo(mnsj);
            //    //Enviado = true;

            //    //MessageBox.Show("El Mail se ha Enviado Correctamente", "Listo!!", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
        }
    }
}