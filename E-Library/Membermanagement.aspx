<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Membermanagement.aspx.cs" Inherits="E_Library.Membermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
    <div class="row">
       <div class="col-md-5 ">
         <div class="card">
                <div class="card-body">

                    <div class="row">
                    <div class="col">
                        <center>
                       <H5 >Member Details</H5>
                        </center>
                    </div>
                     </div>

                    <div class="row">
                    <div class="col">
                        <center>
                        <img width="150px" src="Image/imgs/writer.png" />
                        </center>
                       </div>
                      </div>

                    <div class="row">
                    <div class="col">
                       <hr />
                    </div>
                    </div>

                    <div class="row">

                         <div class="col-md-3">
                        <label>Member Id</label>
                        <div class="form-group">
                            <div class="input-group">
                        <asp:TextBox CssClass="form-control"  ID="TextBox1" runat="server" placeholder="Id"></asp:TextBox>
                        <asp:Button Class="btn btn-secondary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                        </div>
                        </div>
                        </div>

                         <div class="col-md-4">
                       <label>Full Name </label>
                       <div class="form-group">
                       <asp:TextBox CssClass="form-control"  ID="TextBox3" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox><br />
                       </div>
                       </div>

                        <div class="col-md-5">
                        <label>Account Status</label>
                        <div class="form-group">
                            <div class="input-group">
                        <asp:TextBox CssClass="form-control "  ID="TextBox4" runat="server" placeholder="status" ReadOnly="True"></asp:TextBox>
                        <asp:LinkButton Class="btn btn-success m-1" ID="Button3" runat="server" Text="A" OnClick="Button3_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                        <asp:LinkButton Class="btn btn-warning m-1" ID="LinkButton1" runat="server" Text="A" OnClick="Button4_Click" ><i class="far fa-pause-circle"></i></asp:LinkButton>
                        <asp:LinkButton Class="btn btn-danger m-1" ID="Button5" runat="server" Text="D" OnClick="Button5_Click" ><i class="fas fa-times"></i></asp:LinkButton>
                        </div>
                        </div>
                        </div>

                      

                     </div>

                    <div class="row">

                         <div class="col-md-4">
                        <label>Date of Birth</label>
                        <div class="form-group">
                          
                        <asp:TextBox CssClass="form-control"  ID="TextBox5" runat="server" TextMode="Date" ReadOnly="True"></asp:TextBox>
                        
                        </div>
                       
                        </div>

                         <div class="col-md-4">
                       <label>Contact Number </label>
                       <div class="form-group">
                       <asp:TextBox CssClass="form-control"  ID="TextBox6" runat="server" placeholder="Contact Number" ReadOnly="True"></asp:TextBox><br />
                       </div>
                       </div>

                        <div class="col-md-4">
                        <label>Email Id</label>
                        <div class="form-group">
                            <div class="input-group">
                        <asp:TextBox CssClass="form-control"  ID="TextBox7" runat="server" placeholder="Email Id" ReadOnly="True"></asp:TextBox>
                        
                        </div>
                        </div>
                        </div>

                      

                     </div>

                    <div class="row">

                         <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                          
                        <asp:TextBox CssClass="form-control"  ID="TextBox8" runat="server" placeholder="State"  ReadOnly="True"></asp:TextBox>
                        
                        </div>
                       
                        </div>

                         <div class="col-md-4">
                       <label>City </label>
                       <div class="form-group">
                       <asp:TextBox CssClass="form-control"  ID="TextBox9" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox><br />
                       </div>
                       </div>

                        <div class="col-md-4">
                        <label>pincode</label>
                        <div class="form-group">
                            <div class="input-group">
                        <asp:TextBox CssClass="form-control"  ID="TextBox10" runat="server" placeholder="pincode" ReadOnly="True"></asp:TextBox>
                        
                        </div>
                        </div>
                        </div>

                      

                     </div>

                     <div class="row">

                        <div class="col">
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-block btn-danger" Text="Delete User Permently" OnClick="Button1_Click" />
                        </div>
                        </div>

                         

                     </div>

  
                </div>
                
            </div>
           
       </div>
         <div class="col-md-7">
              <div class="card">
                <div class="card-body">
                    <div class="row">
                    <div class="col">
                        <center>
                      <h1>Member List</h1>
                        </center>
                       </div>
                      </div>


                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT [member_id], [full_name], [account_status], [email], [state], [city], [contact_no] FROM [member_master_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1"  >
                                <Columns>
                                    <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                    <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                    <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                    <asp:BoundField DataField="contact_no" HeaderText="Contact-no" SortExpression="contact_no" />
                                    <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                </Columns>
                               
                            </asp:GridView>
                        </div>

                    </div>
                    </div>
                  </div>
         </div> 
     </div>
         <a href="Homepage.aspx"><b>Back To Home</b></a>
 </div>
 </div>
</asp:Content>

