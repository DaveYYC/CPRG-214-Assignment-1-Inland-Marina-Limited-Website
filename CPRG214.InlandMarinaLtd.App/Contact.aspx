<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="jumbotron mt-4">
            <div class="text-center mb-5">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/inlandbanner_v3_800x100.jpg" class="img-fluid" />
            </div>
            <h1 class="text-center">We'd be happy to hear from you!</h1>
            <br />
            <br />
            <div class='row justify-content-md-center'>
                <div class="col-md-5">
                    <p>
                        Inland Lake Marina<br />
                        Box 123<br />
                        Inland Lake, Arizona<br />
                        86038<br />
                        <br />
                        (Office Phone) 928-450-2234<br />
                        (Leasing Phone) 928-450-2235<br />
                        (Fax) 928-450-2236<br />
                    </p>
                    <p>
                        Manager: Glenn Cooke<br />
                        Slip Manager: Kimberley Carson<br />
                        <br />
                        Contact us: <a href="mailto:info@inlandmarina.com">email</a>.
                    </p>
                </div>
                <div class="col-md-3">
                    <div>
                        <form method="post">
                            <h4 class="text-center">Questions/Comments?</h4>
                            <br />
                            <div class="form-group">
                                <input class="form-control" type="text" name="name" placeholder="Name" /></div>
                            <div class="form-group">
                                <input class="form-control" type="email" name="email" placeholder="Email" /></div>
                            <div class="form-group">
                                <textarea class="form-control" rows="4" name="message" placeholder="Message"></textarea></div>
                            <div class="form-group">
                                <button class="btn btn-primary" type="submit">Send</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
