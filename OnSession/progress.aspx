<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="MATH1.OnSession.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="w3-container">
        <center>
         <h1 style="color:white;">Progress</h1>
        </center>
    </div>


   <center>
        <div style="width:300px;" class="w3-card w3-white w3-round-large w3-margin">
        <p> Your total star: </p>
        <h3><asp:Label ID="Label1" runat="server" Text="-"></asp:Label></h3>
        
    </div>
   </center>
    <center>
        <div style="width:500px" class="w3-card w3-white w3-margin w3-round-large">
            <h4>Exercises</h4>
            <asp:GridView ID="GridView1" CssClass="w3-table-all w3-hoverable w3-round-large" runat="server"></asp:GridView>
        </div>
    </center>
      <center>
        <div style="width:500px" class="w3-card w3-white w3-margin w3-round-large">
            <h4>quizes</h4>
            <asp:GridView ID="GridView2" CssClass="w3-table-all w3-hoverable w3-round-large" runat="server"></asp:GridView>
        </div>
    </center>

</asp:Content>
