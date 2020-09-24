<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="jumbotron mt-4">
            <div class="text-center">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/inlandbanner_v3_800x100.jpg" class="img-fluid" />
                <br />
                <br />
                <br />
                <h3>Please Login</h3>
                <br />
                <br />
                <center>
                    <table class="table">
                        <tr>
                            <td>Username:</td>
                            <td>
                                <asp:TextBox ID="uxUsername" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td>
                                <asp:TextBox ID="uxPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="uxAuthenticate" runat="server" Text="Log In" OnClick="uxAuthenticate_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="uxMessage" ForeColor="Red" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </center>
            </div>
        </div>
    </div>
</asp:Content>
