<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="EditClassList.aspx.cs" Inherits="MATH1.OnSession.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div style="height:1000px">
         <div>
       <center>
            <h1 style="text-align:center; width:50%" class="w3-container w3-white w3-round w3-card">
            Edit Class list
            </h1>
       </center>
     
            <asp:TextBox ID="search" runat="server" CssClass="w3-half w3-card w3-margin">         
            </asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="search" CssClass="w3-quarter w3-button w3-white w3-card w3-margin" OnClick="Button1_Click" /> 
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        </div>
           <div class="w3-row-padding">
        <asp:Button ID="Add" runat="server" Text="Enroll"  CssClass="w3-quarter w3-button w3-white w3-card w3-margin" OnClick="Add_Click" />
        <asp:Button ID="Remove" runat="server" Text="Drop" CssClass="w3-quarter w3-button w3-white w3-card w3-margin" OnClick="Remove_Click" />        
        </div>
        <div class="w3-row-padding">
        <br />
        <br />
        <div class="w3-container">
            <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all " Width="300px"></asp:GridView>
        </div>

        </div>
    </div>
   
</asp:Content>
