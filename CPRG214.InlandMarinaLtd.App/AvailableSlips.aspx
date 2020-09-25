<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AvailableSlips.aspx.cs" Inherits="CPRG214.InlandMarinaLtd.App.AvailableSlips" %>

<%@ Register Src="~/Controls/DockSelector.ascx" TagPrefix="uc1" TagName="DockSelector" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="jumbotron mt-4">
            <div class="text-center">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/inlandbanner_v3_800x100.jpg" class="img-fluid" />
                <br />
                <br />
                <h1 class="text-center">Please select a dock to view the available slips:</h1>
                <uc1:DockSelector runat="server" ID="DockSelector" />
                <br />
                <br />
                <asp:GridView ID="gridvSlips" runat="server" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="grid">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
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
    </div>
</asp:Content>
