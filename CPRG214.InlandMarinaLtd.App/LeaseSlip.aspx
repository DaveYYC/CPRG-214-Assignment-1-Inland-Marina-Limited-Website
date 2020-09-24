<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaseSlip.aspx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Leasing" %>

<%@ Register Src="~/Controls/LeaseSlip.ascx" TagPrefix="uc1" TagName="LeaseSlip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:LeaseSLip runat="server" id="uxLeasing" />
</asp:Content>
