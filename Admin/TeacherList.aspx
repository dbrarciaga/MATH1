<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="TeacherList.aspx.cs" Inherits="MATH1.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div style="height:1000px;" >
    <br />
    <br />
        <a href="AdminDash.aspx" class="w3-button w3-white w3-round-large w3-margin">< back</a>
    <center>
         <div style="width:500px;" class="w3-card w3-white w3-round-large">
     
            <h1>Tutors</h1>
             <p>Enter username or tutor ID</p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><p> </p><asp:Button ID="Button1" runat="server" CssClass=" w3-round-large w3-button w3-grey" Text="search" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
          
    </div>
         <div runat="server" id ="updatePanel" style="width:500px;" class="w3-card w3-white w3-round-large">
                <h4 class="w3-margin">User details</h4>
                <h4><asp:Label ID="fullname" runat="server" Text="Label"></asp:Label></h4>
                <p><asp:Label ID="name" runat="server" Text="Label"></asp:Label></p>
                <br />
                <p><asp:Label ID="status" runat="server" Text="Label"></asp:Label></p>                
                <asp:DropDownList ID="statusList" runat="server"></asp:DropDownList>
                <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                <br />
            </div>
        <br />
    <div  style="width:500px;" class="w3-card w3-white w3-round-large">
        <asp:GridView ID="GridView1" runat="server" style="width:350px;" CssClass="w3-table w3-striped w3-margin"></asp:GridView>
    </div>
    </center>
   
    </div>
</asp:Content>
