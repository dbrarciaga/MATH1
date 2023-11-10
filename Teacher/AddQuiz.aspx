<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="AddQuiz.aspx.cs" Inherits="MATH1.Teacher.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h1 style=" color:white;">
         <a href="ManageQuizzes.aspx" class="w3-button w3-white w3-round-large"><</a>
        Add Quiz
    </h1>
    
    <div class="w3-container w3-white w3-round-large" style="width:1000px;">
        <p>Quiz number: </p>
        <asp:TextBox ID="QuizNum" runat="server"></asp:TextBox>
        <br /> 
        <p>Class: </p>
        <asp:DropDownList ID="DropDownList1" runat="server" >      
        </asp:DropDownList>
        <br />
        <p>Title: </p>
        <asp:TextBox ID="title" runat="server"></asp:TextBox>
        <br />
        <br />
    </div>
    <br />
    <asp:Label ID="testing" runat="server" Text=" "></asp:Label>
    <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all" style="width:1000px;"></asp:GridView>
    <br />
    <div class="w3-container w3-white w3-round-large" style="width:1000px;">
        <p>Item number: </p>
        <asp:TextBox ID="item" runat="server"></asp:TextBox>
        <br />
        <p>Question: </p>
        <asp:TextBox ID="question" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <p>Answer: </p>
        <asp:TextBox ID="ans" runat="server"></asp:TextBox>
        <br />
        <br />
    </div>
    <br />
    <asp:Button ID="submit" runat="server" Text="Add quiz" AutoPostBack="false" CssClass="w3-button w3-white w3-round-large" OnClick="submit_Click"/>
    <br />
    <br />
    <br />
</asp:Content>
