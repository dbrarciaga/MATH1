<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Editquiz.aspx.cs" Inherits="MATH1.Teacher.WebForm6" %>
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
    <a href="ManageQuizzes.aspx" class="w3-button w3-white w3-round-large"><</a>
    <center>
        <div style="width:1000px;" class="w3-container w3-white w3-round-large">
          
    <center>
        
      <h1>Update Quiz: <asp:Label ID="quizNo" runat="server" Text="quizno"></asp:Label>
          <asp:Label ID="testing1" runat="server" Text=" "></asp:Label>
      </h1>
          <h4>Item: 
               <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
               <asp:ListItem>-- Select number --</asp:ListItem>
               </asp:DropDownList>
          </h4>

       <p>
           <asp:GridView ID="GridView1" runat="server" style="width:950px" CssClass="w3-table-all w3-white">               
           </asp:GridView>
       </p>
    </div>
    </center>
    
    <br />
    <br />
   <center>
        <div style="width:700px;" class="w3-container w3-white w3-round-large">
        <p>Question </p>
        <p> <b><asp:Label ID="q" runat="server" Text="/////"></asp:Label></b></p>
        <asp:TextBox ID="question" runat="server"></asp:TextBox><p> </p><asp:CheckBox ID="CheckBox1" runat="server" />
        <br />
        <br />
         <p>Anwser</p>
         <p><b><asp:Label ID="a" runat="server" Text="/////"></asp:Label></b> </p>
        <asp:TextBox ID="answer" runat="server"></asp:TextBox><p> </p><asp:CheckBox ID="CheckBox2" runat="server" />
        <br />
        <br />
        <br />      
    </div>
       <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" CssClass="w3-card w3-button w3-blue w3-margin" />

    <br />
    <br />
   </center>
  <script type="text/javascript">
    function showAlert() {
        alert('Saved!');
    }
  </script>
      
</asp:Content>
