<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usersignup.aspx.cs" Inherits="E_Library.Usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
       <div class="col-md-8 mx-auto">
         <div class="card">
                <div class="card-body">
                    <div class="row">
                    <div class="col">
                      <center> 
                       <img width="70" src="Image/imgs/generaluser.png" />
                      </center>
                       </div>
                      </div>

                    <div class="row">
                    <div class="col">
                        <center>
                       <B>User signup</B>
                        </center>
                    </div>
                     </div>

                    <div class="row">
                    <div class="col">
                       <hr />
                    </div>
                    </div>

                    <div class="row">

                        <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                        <asp:TextBox CssClass="form-control"  ID="TextBox1" runat="server" placeholder="full_name" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        </div>
                        </div>

                       <div class="col-md-6">
                       <label>Date of Birth</label>
                       <div class="form-group">
                       <asp:TextBox CssClass="form-control"  ID="TextBox2" runat="server" placeholder="dob" Textmode="Date"></asp:TextBox>
                       </div>
                       </div>

                     </div>

                    <div class="row">

                          <div class="col-md-6">
                          <label>Contact Number</label>
                          <div class="form-group">
                          <asp:TextBox CssClass="form-control"  ID="TextBox3" runat="server" placeholder="contact_no" TextMode="Number"></asp:TextBox>
                          </div>
                          </div>

                          <div class="col-md-6">
                          <label>Email Id</label>
                          <div class="form-group">
                          <asp:TextBox CssClass="form-control"  ID="TextBox4" runat="server" placeholder="email" Textmode="Email"></asp:TextBox>
                          </div>
                          </div>

                          </div>

                    <div class="row">

                        <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                        <asp:DropDownList class="form-group"  ID="DropDownList1" runat="server">
                                 <asp:ListItem Text="Andaman and Nicobar" Value="Andaman and Nicobar" />
                                 <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                 <asp:ListItem Text="	Arunachal Pradesh" Value="	Arunachal Pradesh" />
                                 <asp:ListItem Text="	Assam" Value="	Assam" />
                                 <asp:ListItem Text="Bihar" Value="Bihar" />
                                 <asp:ListItem Text="Chandigarh" Value="Chandigarh" />
                                 <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                 <asp:ListItem Text="	Delhi " Value="	Delhi " />
                                 <asp:ListItem Text="Goa" Value="Goa" />
                                 <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                 <asp:ListItem Text="	Haryana" Value="	Haryana" />
                                 <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                 <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                 <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                 <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                 <asp:ListItem Text="	Kerala" Value="	Kerala" />
                                 <asp:ListItem Text="Ladakh " Value="Ladakh" />
                                 <asp:ListItem Text="Lakshadweep" Value="Lakshadweep" />
                                 <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                 <asp:ListItem Text="	Maharashtra" Value="	Maharashtra" />
                                 <asp:ListItem Text="Manipur" Value="Manipur" />
                                 <asp:ListItem Text="	Meghalaya" Value="	Meghalaya" />
                                 <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                 <asp:ListItem Text="	Nagaland" Value="	Nagaland" />
                                 <asp:ListItem Text="	Odisha" Value="	Odisha" />
                                 <asp:ListItem Text="Puducherry" Value="Puducherry" />
                                 <asp:ListItem Text="	Punjab" Value="	Punjab" />
                                 <asp:ListItem Text="	Rajasthan" Value="	Rajasthan" />
                                 <asp:ListItem Text="	Sikkim" Value="	Sikkim" />
                                 <asp:ListItem Text="	Tamil Nadu" Value="	Tamil Nadu" />
                                 <asp:ListItem Text="		Telangana" Value="		Telangana" />
                                 <asp:ListItem Text="	Tripura" Value="	Tripura" />
                                 <asp:ListItem Text="		Uttar Pradesh" Value="		Uttar Pradesh" />
                                 <asp:ListItem Text="		Uttarakhand" Value="		Uttarakhand" />
                                 <asp:ListItem Text="	West Bengal" Value="	West Bengal" />
                            </asp:DropDownList> 
                        </div>
                        </div>

                        <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                        <asp:TextBox Class="form-control"  ID="TextBox5" runat="server" placeholder="city"></asp:TextBox>
                        </div>
                        </div>

                         <div class="col-md-4">
                         <label>Pin code</label>
                         <div class="form-group">
                         <asp:TextBox Class="form-control"  ID="TextBox6" runat="server" TextMode="Number" placeholder="pincode"></asp:TextBox>
                         </div>
                         </div>
                      
                    </div>

                    <div class="row">
                    <div class="col-md-12">
                    <label>Full Address</label>
                    <div class="form-group">
                    <asp:TextBox class="form-group" ID="TextBox7" runat="server" TextMode="MultiLine" placeholder="full_address" Width="129px"></asp:TextBox>
                    </div>
                    </div>
                    </div>

                    <div class="row">
                    <div class="col">
                    <center>                        
                    <span class="badge rounded-pill bg-primary">Login Credintial</span>
                    </center>
                    <hr />
                    </div>
                    </div>

                    <div class="row">

                    <div class="col-md-6">
                    <label>UserName</label>
                    <div class="form-group">
                    <asp:TextBox Class="form-control"  ID="TextBox8" runat="server" placeholder="member_id"></asp:TextBox>
                    </div>
                    </div>

                    <div class="col-md-6">
                    <label>Password</label>
                    <div class="form-group">
                    <asp:TextBox Class="form-control"  ID="TextBox9" runat="server" placeholder="password" Textmode="Password"></asp:TextBox><br /><br />
                    </div>
                    </div>

                    </div>
                 
                    <div class="row">
                    <div class="col">
                    <div class="form-group" >
                   
                        <asp:Button  class="btn btn-primary col-12 " ID="Button2" runat="server" Text="Signup" OnClick="Button2_Click" />
                    </div>
                    </div>
                    </div>

                </div>
                 <a href="Homepage.aspx"><b>Back To Home</b></a>
            </div>
           
       </div>
          
     </div>
   </div>

</asp:Content>
