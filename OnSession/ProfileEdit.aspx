<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="ProfileEdit.aspx.cs" Inherits="MATH1.OnSession.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:1000px" class="w3-container">
        <h2>Edit Profile</h2>
        <div class="w3-card w3-white w3-round-large">
           <div class="w3-margin">
                <h4>Basic Info</h4>
            <br />
            <div class="w3-row-padding">
                <div class="w3-half">
                    <p>First Name</p>
                    <asp:TextBox ID="F_name" runat="server"></asp:TextBox>
                    <br />
                </div>
                <div class="w3-half">
                    <p>Last Name</p>
                    <asp:TextBox ID="L_name" runat="server"></asp:TextBox>
                    <br />
                </div>
                
            </div>
           </div>
        </div>
        <br />
        <div class="w3-card w3-white w3-round-large">
          <div class="w3-margin">
            <h4>Account</h4>
            <br />
            <p>OldPassword:</p>
            <asp:TextBox ID="oldpass" runat="server"></asp:TextBox>
            <p>New Password:</p>
            <asp:TextBox ID="Con_newPass" runat="server"></asp:TextBox>
          </div>
            <br />
        </div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
    </div>
</asp:Content>
