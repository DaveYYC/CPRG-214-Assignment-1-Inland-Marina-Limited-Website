<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllowLeasing.aspx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Secure.AllowLeasing" %>

<%@ Register Src="~/Controls/LeaseSlip.ascx" TagPrefix="uc1" TagName="LeaseSlip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <uc1:LeaseSlip runat="server" id="uxLeasing" />
</asp:Content>
