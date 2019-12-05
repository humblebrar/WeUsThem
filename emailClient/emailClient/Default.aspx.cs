using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
//using EASendMail;

namespace emailClient
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sndbtn_Click(object sender, EventArgs e)
        {
            Button1.Style.Add("background - color", "#4CAF50");
             SmtpClient client = new SmtpClient("smtp.gmail.com",587);
             client.Credentials = new NetworkCredential(InputEmail2.Value,Inputpassword.Value);
             MailMessage msg = new MailMessage();
             msg.From = new MailAddress(InputEmail1.Value);
             msg.To.Add(new MailAddress(InputEmail2.Value));
             msg.Subject = SubjectEmail.Value;
             msg.Body = Emailmsg.Value;

                 client.EnableSsl = true;
                 client.Send(msg);
            /*try
            {
                SmtpMail oMail = new SmtpMail("TryIt");

                // Your yahoo email address
                //oMail.From = InputEmail2.Value;
                oMail.From = "gurnoorbrar@ymail.com";
                // Set recipient email address
                //oMail.To = InputEmail1.Value;
                oMail.To = "gurnoorbrar@ymail.com";
                // Set email subject
                //oMail.Subject = SubjectEmail.Value;
                oMail.Subject = "test";
                // Set email body
                //oMail.TextBody = Emailmsg.Value;
                oMail.TextBody = "tester";
                // Yahoo SMTP server address
                SmtpServer oServer = new SmtpServer("smtp.mail.yahoo.com");

                // For example: your email is "myid@yahoo.com", then the user should be "myid@yahoo.com"
                oServer.User = "gurnoorbrar@ymail.com";
                oServer.Password = "Kinder6iphone";

                // Because yahoo deploys SMTP server on 465 port with direct SSL connection.
                // So we should change the port to 465. you can also use 25 or 587
                oServer.Port = 465;

                // detect SSL type automatically
                oServer.ConnectType = SmtpConnectType.ConnectSSLAuto;

                Console.WriteLine("start to send email over SSL ...");

                SmtpClient oSmtp = new SmtpClient();
                oSmtp.SendMail(oServer, oMail);

                Console.WriteLine("email was sent successfully!");
            }
            catch (Exception ep)
            {
                Console.WriteLine("failed to send email with the following error:");
                Console.WriteLine(ep.Message);
            }*/
        }
    }
}