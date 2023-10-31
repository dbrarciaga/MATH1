<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" CodeBehind="LoginForTeacher.aspx.cs" Inherits="MATH1.Main.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div style="width: 50%" class="w3-panel w3-card w3-white w3-round-medium w3-animate-left">

            <div style="text-align: center;" class="w3-centered   w3-margin">
                <h2 style="font-size: 30px; font-weight: bold;">Welcome!</h2>
                <label for="uname"><b>Username</b></label>
                <asp:TextBox ID="username" runat="server" CssClass="waowText TextBoxNiWaow"></asp:TextBox>

                <label for="psw"><b>Password</b></label>
                <asp:TextBox ID="password" runat="server" CssClass="waowText TextBoxNiWaow" TextMode="Password"></asp:TextBox>


                <label>
                    <input type="checkbox" checked="checked" name="remember">
                    Remember me
               <br />
                </label>
                <a href="#" class="w3-button">You forgot your password? click here</a>
                
                <center>
                    <asp:Label ID="Label1" runat="server" Text="" CssClass="red"></asp:Label></center>
                <center>
                    <br />
                    <asp:Button ID="login" runat="server" Text="Log-in" CssClass="w3-button w3-black w3-round-xlarge" OnClick="login_Click" /></center>
            </div>
    </center>
     <br />
        <br />
     
        
</asp:Content>
