<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CPRG214.InlandMarinaLtd.App._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="jumbotron mt-4">
            <div class="text-center mb-5">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/inlandbanner_v3_800x100.jpg" class="img-fluid"  />
            </div>

            <div class="row justify-content-md-center">
                <p><a href="AvailableSlips.aspx" class="btn btn-primary btn-med">View Available Slips</a></p>
            </div>
            <div class="lead font-weight-normal">
                <h2 class="text-center">Welcome to Inland Marina!</h2>
                <p>
                    Welcome to Inland Marina Limited located on the south shore of Inland Lake, just a small commute from major centers in the southwest.
                </p>
                <p>
                    Inland Marina was established in the 1967 shortly after Inland Lake was created as a result of the South West damn. From its humble beginnings, it has grown to be the largest marina on Inland Lake.
                </p>
                <p>
                    Due to the warm climate that extends year-round, Inland Lake has become a popular tourist destination in the south west. 
                    Boat owners from California, Arizona, Nevada, and Utah are attracted to the area. 
                    Inland Marina has 90 slips ranging in size from 16 to 32 feet in length.
                </p>
                <p>
                    Dock services include electrical and fresh water services.
                </p>
                <br />
                  <% if (Session["CustomerID"] == null)
                   { %>
                <div class="text-center">
                    <h2>Create your account today!</h2>
                    <p>
                        Simply select <a href="Registration.aspx">Register,</a> complete the form, and create a username and password for your account.
                    </p>
                     <% } else 
                         {%> 
                             <div class="row justify-content-md-center">
                                <p><a href="LeaseSlip.aspx" class="btn btn-primary btn-med">Lease Slip</a></p>
                            </div>
                    <%} %>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
