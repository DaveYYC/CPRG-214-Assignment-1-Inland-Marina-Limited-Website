<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Registration" %>

<%@ Register Src="~/Controls/Registration.ascx" TagPrefix="uc1" TagName="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Registration runat="server" ID="uxRegistration" />
</asp:Content>
