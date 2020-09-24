<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeaseSlip.ascx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Controls.Leasing" %>

<%@ Register src="DockSelector.ascx" tagname="DockSelector" tagprefix="uc1" %>

<div class="container">
    <div class="jumbotron mt-4">
        <div class="text-center">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/inlandbanner_v3_800x100.jpg" class="img-fluid" />
            <br />
            <br />
            <h3><asp:Label ID="uxWelcome" runat="server" Text=""></asp:Label></h3>
        </div>
        <br />
        <br />
        <center>
        <div class="row">
            <div class="col-md-4">
                <h4>1. Select a dock:</h4>
                    <uc1:DockSelector runat="server" ID="DockSelector" AllowPostBack="True" /> 
                <br />
                <br />
                <h5>Dock Details:</h5>
                    <table class="table">
                        <tr>
                            <td style="width: 150px">Dock Id:</td>
                            <td>
                                <asp:Label ID="uxID" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px">Dock Name:</td>
                            <td>
                                <asp:Label ID="uxName" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 200px">Water Services Available:</td>
                            <td>
                                <asp:Label ID="uxWaterServices" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 220px">Electrical Services Available:</td>
                            <td>
                                <asp:Label ID="uxElectricalServices" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
            </div>
            <div class="col-md-4">
                <h4>2. Select a slip:</h4>
                <br />
                    <asp:DropDownList ID="DropDownSlips" runat="server" OnSelectedIndexChanged="DropDownSlips_SelectedIndexChanged" AutoPostBack="True" CssClass="auto-style1"></asp:DropDownList>
                <br />
                <br />
                    <h5>Slip Details:</h5>
                        <table class="table">
                            <tr>
                                <td style="width: 150px">Slip Id:</td>
                                <td>
                                    <asp:Label ID="uxSlipId" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 150px">Width:</td>
                                <td>
                                    <asp:Label ID="uxWidth" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 150px">Length:</td>
                                <td>
                                    <asp:Label ID="uxLength" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 150px">Dock Id:</td>
                                <td>
                                    <asp:Label ID="uxDockID" runat="server" Text=""></asp:Label>
                               </td>
                            </tr>
                        </table>
            </div>
            <div class="col-md-4">
                <h4>3. Purchase Lease:</h4>
                <br />
                    <asp:Button ID="uxPurchase" runat="server" Text="Purchase" class="btn btn-primary btn-med" OnClick="uxPurchase_Click" />
                <br />
                <br />
                <h4>LEASE HISTORY:</h4>    
                <br />
                    <asp:GridView ID="uxLeaseHistory" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="119px" Width="268px" CssClass="grid">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" ForeColor="#287EB1" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
            </div>
        </div>
        </center>
    </div>
</div>

