using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Threading.Tasks;
using System.Net.Mail;
using S22.Imap;
namespace emailClient
{
    public partial class Inbox : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getmails();
        }
        private void getmails()
        {
            Task.Run(() =>
            {
            //please enter your email address and password below:
                using (ImapClient client = new ImapClient("imap.gmail.com", 993, "email", "Password", AuthMethod.Login, true))
                {
                    if (client.Supports("IDLE") == false)
                    {
                        Console.WriteLine("Server doesnot support");
                        return;
                    }
                    client.NewMessage += new EventHandler<IdleMessageEventArgs>(OnNewMessage);
                    
                    while (true) ;
                }
            });

             

         }
         public void OnNewMessage(Object sender, IdleMessageEventArgs e)
         {
            
             MailMessage m = e.Client.GetMessage(e.MessageUID, FetchOptions.Normal);
             txtbox.Value = "From:" + m.From.ToString()+"\n"+
                 "Subject:"+m.Subject.ToString()+"\n"+
                 "Message:"+m.Body.ToString()+"\n";
            Console.WriteLine("new message");
        }
            
        }
    }
