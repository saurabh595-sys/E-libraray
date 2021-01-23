<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="E_Library.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
       <div class="col-md-6 mx-auto">
         <div class="card">
                <div class="card-body">
                    <div class="row">
                    <div class="col">
                        <center>
                        <img width="150px" src="Image/imgs/adminuser.png" />
                        </center>
                       </div>
                      </div>

                    <div class="row">
                    <div class="col">
                        <center>
                       <B>AdminLogin</B>
                        </center>
                    </div>
                        </div>

                    <div class="row">
                    <div class="col">
                       <hr />
                    </div>
                        </div>

                    <div class="row">
                    <div class="col">
                        <label>Username</label>
                        <div class="form-group">
                          <asp:TextBox CssClass="form-control"  ID="TextBox1" runat="server" placeholder="USERNAME"></asp:TextBox><br/>
                         </div>
                        <label>Password</label>
                        <div class="form-group">
                          <asp:TextBox CssClass="form-control"  ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br/>
                      </div>

                        
                       
                         <div class="form-group" >
                             <asp:Button ID="Button1" CssClass="btn btn-primary col-12" runat="server" Text="Login" OnClick="Button1_Click" /><br /><br />
                      </div>

                  </div>
                  </div>

                </div>
           
        </div>
          <a href="Homepage.aspx"><b>Back To Home</b></a>
      </div>
    </div>

</div>
</asp:Content>
