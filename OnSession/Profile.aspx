<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="MATH1.OnSession.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3-container w3-white">
        <div class="w3-container">
          <center>
          <div class="w3-card-4 test" style="width:92%;max-width:300px;">
            <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png" alt="Avatar" style="width:100%;opacity:0.85">
            <div class="w3-container">
            
      
            </div>
          </div>
          </center>
        </div>
        <div class="w3-container">
          <div class="w3-panel w3-card"><p><asp:Label ID="Label1" runat="server" Text="username"></asp:Label></p></div>
          <div class="w3-panel w3-card-2"><p>Grade <asp:Label ID="Label2" runat="server" Text="level"></asp:Label></p></div>
          <div class="w3-panel w3-card-4"><p> Infoe</p></div>
            <center>
                <a href="/OnSession/ProfileEdit.aspx" class="w3-margin w3-button w3-black w3-round-large">Edit Profile</a>
            </center>
        </div>
    </div>
</asp:Content>
