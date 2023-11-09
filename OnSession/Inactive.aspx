<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="Inactive.aspx.cs" Inherits="MATH1.OnSession.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center style="height:1000px">
        <center runat="server" id="active" style="width:700px;" class="w3-card w3-white w3-round-large">
            <h1>Wait for your account to be activated </h1>
        </center>
        <br />
        <center runat="server" id="inactive" style="width:700px;" class="w3-card w3-white w3-round-large">
            <h1>Your account is inactive! </h1>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="w3-button w3-gray w3-xxlarge w3-margin w3-round-large" Text="Request to activate account" OnClick="Button1_Click" />
        </center>
    </center>
    
</asp:Content>
