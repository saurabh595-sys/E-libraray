<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authermanagement.aspx.cs" Inherits="E_Library.authermanagement" %>

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
                       <H5 >Author Details</H5>
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
                                <label>Author Id</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="author_id"></asp:TextBox>
                                        <asp:Button Class="btn btn-secondary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="author_name"></asp:TextBox><br />
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
                      <h1>Author Detail</h1>
                        </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>

                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered"  runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                            <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
