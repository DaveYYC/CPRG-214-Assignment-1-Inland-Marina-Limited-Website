<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SlipSelector.ascx.cs" Inherits="CPRG214.InlandMarinaLtd.App.Controls.SlipSelector" %>

<style type="text/css">
    .auto-style1 {
        margin-bottom: 2px;
    }
</style>
<br />
<br />

<asp:DropDownList ID="uxSlip" runat="server" CssClass="auto-style1" Width="100px" Height="30px" OnSelectedIndexChanged="uxSlip_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>