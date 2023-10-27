<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SetTeacher.aspx.cs" Inherits="MATH1.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:5%;">
        <center>
            <h1 style="color:white"> Enroll a student</h1>
            <div style="margin-left:5%; width:500px; text-align:center;" class="w3-container w3-white w3-round-large">
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="set " OnClick="Button1_Click" />
    </div>
            <br />
            <br />

    <div  style="margin-left:5%; width:500px; text-align:center;" class="w3-container w3-white w3-round-large">
        <p>
            
            teacher: 
            <asp:TextBox ID="teacher1" runat="server"></asp:TextBox>
        </p>
        <p>
           student ID: 
            <asp:TextBox ID="stud" runat="server"></asp:TextBox>
        </p>
    </div>
        </center>
        
    
    </div>
</asp:Content>
