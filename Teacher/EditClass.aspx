<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="EditClass.aspx.cs" Inherits="MATH1.Teacher.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center style="height:1000px">
        <h1>Manage student</h1>
        <br />
        <div style="width:500px" class="w3-card w3-white w3-round-large ">
            <br />
            <h4>Select student</h4>
            <asp:DropDownList ID="studentList" runat="server" AutoPostBack ="true" OnSelectedIndexChanged="studentList_SelectedIndexChanged"></asp:DropDownList>  <asp:Button ID="drop" runat="server" Text="Drop" CssClass="w3-button w3-blue w3-card w3-round-large" OnClick="drop_Click"/>
            <br />
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
            <br />
        </div>
        
        <br />
        <br />
        <div style="width:800px" class="w3-card w3-white w3-round-large ">
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="500px" CssClass="w3-table w3-margin"></asp:GridView>
            <br />
            
        </div>
    </center>

</asp:Content>
