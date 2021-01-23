<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="E_Library.Userlogin" %>
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
                        <img width="150px" src="Image/imgs/generaluser.png" />
                        </center>
                       </div>
                      </div>

                    <div class="row">
                    <div class="col">
                        <center>
                       <B>MemberLogin</B>
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

                        <div class="form-group">
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary  col-12" Text=" Login" OnClick="Button2_Click" /><br /><br />
                      </div>
                       
                         <div class="form-group" >
                             <a href="Usersignup.aspx"> <input id="Button1" class="btn btn-primary col-12 " type="button" value="Sign up" /></a><br /><br />
                      </div>

                  </div>
                  </div>

                </div>
           
        </div>
          <a href="Homepage.aspx"><b>Back To Home</b></a><br /><br />
      </div>
    </div>

</div>

</asp:Content>
