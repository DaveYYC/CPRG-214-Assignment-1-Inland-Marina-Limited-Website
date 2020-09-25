<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Registration.ascx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Controls.Registration" %>

<div class="container">
    <div class="jumbotron mt-4">
        <div class="text-center">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/inlandbanner_v3_800x100.jpg" class="img-fluid" />
            <br />
            <br />
            <% if (Session["CustomerID"] == null)
                { %>
            <h2>Welcome to Registration</h2>
            <br />
            <h3>Please enter your information:</h3>
            <% }
                else
                {%>
            <h3>Please update your information:</h3>
            <%} %>
            <br />
        </div>
        <center>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick" DisplaySideBar="False">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Customer Profile">
                    <br />
                    <table class="table">
                        <tr>
                            <td style="width: 150px">First Name</td>
                            <td>
                                <asp:TextBox ID="uxFirstName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 150px">Last Name:</td>
                            <td>
                                <asp:TextBox ID="uxLastName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Phone:</td>
                            <td>
                                <asp:TextBox ID="uxPhone" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>City:</td>
                            <td>
                                <asp:TextBox ID="uxCity" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Security Credentials  ">
                    <table>
                        <tr>
                            <td style="width: 150px">Username:</td>
                            <td>
                                <asp:TextBox ID="uxUsername" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td>
                                <asp:TextBox ID="uxPassword" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        </center>
    </div>
</div>


