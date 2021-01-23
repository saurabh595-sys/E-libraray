using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton5.Visible = false; // hello user link button


                    Linkbutton6.Visible = true; // admin login link button
                    Linkbutton7.Visible = false; // author management link button
                    Linkbutton8.Visible = false; // publisher management link button
                    Linkbutton9.Visible = false; // book inventory link button
                    Linkbutton10.Visible = false; // book issuing link button
                    Linkbutton11.Visible = false; // member management link button

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton5.Visible = true; // hello user link button
                    LinkButton5.Text = "Hello " + Session["username"].ToString();


                    Linkbutton6.Visible = true; // admin login link button
                    Linkbutton7.Visible = false; // author management link button
                    Linkbutton8.Visible = false; // publisher management link button
                    Linkbutton9.Visible = false; // book inventory link button
                    Linkbutton10.Visible = false; // book issuing link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton5.Visible = true; // hello user link button
                    LinkButton5.Text = "Hello Admin";


                    Linkbutton6.Visible = false; // admin login link button
                    Linkbutton7.Visible = true; // author management link button
                    Linkbutton8.Visible = true; // publisher management link button
                    Linkbutton9.Visible = true; // book inventory link button
                    Linkbutton10.Visible = true; // book issuing link button
                    Linkbutton11.Visible = true;//member button
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void Linkbutton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void Linkbutton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("authermanagement.aspx");
        }

        protected void Linkbutton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("publishermanagement.aspx");
        }

        protected void Linkbutton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookinventry.aspx");
        }

        protected void Linkbutton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminbookissuing.aspx");
        }

        protected void Linkbutton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Membermanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Viewbooks.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userprofile.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert(' Logout sucessfull');</script>");
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "" ;

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button

            LinkButton3.Visible = false; // logout link button
            LinkButton5.Visible = false; // hello user link button


            Linkbutton6.Visible = true; // admin login link button
            Linkbutton7.Visible = false; // author management link button
            Linkbutton8.Visible = false; // publisher management link button
            Linkbutton9.Visible = false; // book inventory link button
            Linkbutton10.Visible = false; // book issuing link button
            Linkbutton11.Visible = false; // member management link button

            Response.Redirect("Homepage.aspx");
        }
    }
}