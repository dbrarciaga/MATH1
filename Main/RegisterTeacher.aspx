<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterTeacher.aspx.cs" Inherits="MATH1.Main.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center style="height:1000px;">
        <br />
        <h1> Apply for a position as a Tutor! </h1>
        <br />

        <div runat="server" id="div1" style="width:500px" class="w3-card w3-white w3-round-large">
            <br />
            <div class="w3-row">
                <div class="w3-half">
                      <p>First Name: </p>
                      <asp:TextBox ID="F_Name" runat="server"></asp:TextBox>
                </div>
                <div class="w3-half">
                    <p>Last Name: </p>
                    <asp:TextBox ID="L_Name" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <p>Email: </p>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <br />
        <div  runat="server" id="div2" style="width:500px" class="w3-card w3-white w3-round-large">
            
            <h4>Make your pitch!</h4>
            <asp:TextBox ID="pitch" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
        <asp:Label ID="Label1" runat="server" Text=" " CssClass="w3-margin"></asp:Label>
        <asp:Button ID="submit" runat="server" Text="submit" CssClass="w3-button w3-white w3-card w3-round-large" OnClick="submit_Click" />
    </center>
</asp:Content>
