<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateRegistration.aspx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Secure.UpdateRegistration" %>

<%@ Register Src="~/Controls/Registration.ascx" TagPrefix="uc1" TagName="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Registration runat="server" id="uxRegistration" />
</asp:Content>
