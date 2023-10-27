<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="ManageQuizzes.aspx.cs" Inherits="MATH1.Teacher.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        body {font-family: Calibri, Helvetica, sans-serif;}
        

        .waowText {
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          box-sizing: border-box;
        }

        .button {
          background-color: black;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
          transition:all 0.3s ease 0s;
        }

        .button:hover {
            background-color:white;
            color:black;
          opacity: 1;
        }

        .cancelbtn {
          width: auto;
          padding: 10px 18px;
          background-color: #f44336;
        }

        .imgcontainer {
          text-align: center;
          margin: 24px 0 12px 0;
        }

        img.avatar {
          width: 40%;
          border-radius: 50%;
        }

        .container1 {
            margin:100px;
          
        }
        .red{
            font-size:20px;
            color:red;
        }
        .TextBoxNiWaow{
            padding:5px;
            font-size:20px;
            font-weight:bold;
            font-family:Calibri;
            border-radius:30px;
        }
        .cardNiWaow{
            background-color:white;
            border-radius:20px;
            margin:50px 500px 50px;
            margin-bottom:25%;
        }
</style>
  <div style="height: 588px">  
      <h1 style="color:black; width:1000px" class="w3-container w3-white w3-round-large">Manage Quiz</h1>
       <div class="w3-row-padding">
          <a href="/Teacher/AddQuiz.aspx" class="w3-container w3-white w3-half w3-round-large" style="height:50px; width:100px; margin:4px;">
             Add Quiz
          </a>
           <asp:LinkButton ID="LinkButton1" runat="server" CssClass="w3-container w3-white w3-half w3-round-large" style="height:50px; width:100px; margin:4px;" OnClick="LinkButton1_Click">Edit
           </asp:LinkButton>
       </div>

      <br />    
     <h2 style="color:white;"> Select a Quiz: 
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
               <asp:ListItem>-- Select number --</asp:ListItem>
           </asp:DropDownList>
    </h2>
      <br />
      <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
      <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all w3-striped" style="width:1000px;"></asp:GridView>
      </div>
</asp:Content>
