<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="publishermanagement.aspx.cs" Inherits="E_Library.publishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
       <div class="col-md-6 ">
         <div class="card">
                <div class="card-body">

                    <div class="row">
                    <div class="col">
                        <center>
                       <H5 >Publisher Details</H5>
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

                        <div class="col-md-4">
                        <label>Publisher Id</label>
                        <div class="form-group">
                            <div class="input-group">
                        <asp:TextBox CssClass="form-control"  ID="TextBox3" runat="server" placeholder="publisher_id"></asp:TextBox>
                        <asp:Button Class="btn btn-secondary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                        </div>
                        </div>
                        </div>

                       <div class="col-md-8">
                       <label>Publisher Name</label>
                       <div class="form-group">
                       <asp:TextBox CssClass="form-control"  ID="TextBox4" runat="server" placeholder="publisher_name" ></asp:TextBox><br />
                       </div>
                       </div>

                     </div>

                     <div class="row">

                        <div class="col-md-4">
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-block btn-success" Text="Add" OnClick="Button1_Click" />
                        </div>
                        </div>

                          <div class="col-md-4">
                        <div class="form-group">
                            <asp:Button ID="Button2" runat="server" class="btn btn-lg btn-block btn-warning" Text="Update" OnClick="Button2_Click" />
                        </div>
                        </div>

                          <div class="col-md-4">
                        <div class="form-group">
                            <asp:Button ID="Button3" runat="server" class="btn btn-lg btn-block btn-danger" Text="Delete" OnClick="Button3_Click" />
                        </div>
                        </div>

                     </div>

  
                </div>
                
            </div>
            <a href="Homepage.aspx"><b>Back To Home</b></a>
           
       </div>
         <div class="col-md-6">
              <div class="card">
                <div class="card-body">
                    <div class="row">
                    <div class="col">
                        <center>
                      <h1>Publisher Detail</h1>
                        </center>
                       </div>
                      </div>


                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>

                         <div class="row">
                            
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                    <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                </Columns>
                                         
                            </asp:GridView>
                        </div>

                    </div>
                    </div>
                  </div>
         </div> 
     </div>
 </div>
 </div>
</asp:Content>
