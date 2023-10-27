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
        <p>Grade Level: </p>
        <asp:TextBox ID="GradeLevel" runat="server"></asp:TextBox>
        <br />
        <p>Title: </p>
        <asp:TextBox ID="title" runat="server"></asp:TextBox>
        <br />
        <p>Type of quiz</p>      
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" >      
        </asp:DropDownList>
         <br />
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
        <div class="w3-row-padding">
            <h4><asp:Label ID="Label4" runat="server" Text="For multiple choice"></asp:Label></h4>
            <div class="w3-third">
                <asp:Label ID="Label1" runat="server" Text="Option 1"></asp:Label>
                <asp:TextBox ID="op1" runat="server"></asp:TextBox>
            </div>
             <div class="w3-third">
                  <asp:Label ID="Label2" runat="server" Text="Option 2"></asp:Label>
                  <asp:TextBox ID="op2" runat="server"></asp:TextBox>
            </div>
             <div class="w3-third">
                  <asp:Label ID="Label3" runat="server" Text="Option 3"></asp:Label>
                    <asp:TextBox ID="op3" runat="server"></asp:TextBox>
            </div>
        </div>
        <br />
        <br />
    </div>
    <br />
    <asp:Button ID="submit" runat="server" Text="Add quiz" AutoPostBack="false" CssClass="w3-button w3-white w3-round-large" OnClick="submit_Click"/>
    <br />
    <br />
    <br />
</asp:Content>
