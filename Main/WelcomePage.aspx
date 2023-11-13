<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="MATH1.Main.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="w3-row-padding w3-margin">
            <div class="w3-card w3-white w3-round-large w3-animate-zoom">
                <h1>Congratulations! You are registered!</h1>
                <a href="/Main/Login/LogIn.aspx" class="w3-button w3-black w3-margin w3-round-xlarge">
                    You can log-in now to your account!
                </a>
            </div>
        </div>
    </center>
</asp:Content>
