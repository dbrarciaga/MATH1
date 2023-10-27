<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageAccount.aspx.cs" Inherits="MATH1.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
          .card{
            margin:15px;
            display:flex;
            flex-direction:column;
            align-items:center;
            font-family:Calibri;
            font-size:30px;
            border-radius:20px;
            background-color:white;

            

        }
          .buttonG{
            padding: 9px 25px;
            background-color: black;
            border:none;
            border-radius:50px;
            cursor:pointer;
            transition:all 0.3s ease 0s;
            color:white;

        }
        .buttonG:hover {
            background-color: white;
            color:black;
        }
        .grid-container {
              display: grid;
              grid-template-columns: auto auto auto;
              gap: 5px;
              padding: 5px;
            }

            .grid-container > div {
              background-color: rgba(255, 255, 255, 0.8);
              text-align: center;
              padding: 20px 0;              
            }
    </style>
   <div style="margin-left:25%;">
        <div class="card">
            <h1> Manage Account</h1>
                 <asp:gridView id="GridView1" CssClass="w3-table-all w3-hoverable" runat="server"></asp:gridView>
                  <asp:Label ID="Label2" runat="server" Text="  " ForeColor="#990000"></asp:Label>
        <div>
            <asp:TextBox ID="FindSomebody" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" Text="search" CssClass="button1" OnClick="Button2_Click" />
        </div>
        <asp:GridView  runat="server" ></asp:GridView>
         <asp:Label ID="Label1" runat="server" Text="  " ForeColor="#990000"></asp:Label>
        
       
            <br />
            <br />
            <div class="grid-container">
          <div class="item1"> <asp:Button ID="Button1" runat="server" Text="Set as Teacher" CssClass="buttonG" OnClick="Button1_Click" />
              <br />
              <br />
              <asp:Button ID="Button6" runat="server" CssClass="buttonG" OnClick="Button5_Click" Text="Reset Password" Width="230px" />
                </div>
          <div class="item2"> <asp:Button ID="Button3" runat="server" Text="Set as  Admin" CssClass="buttonG" OnClick="Button3_Click" />
              <br />
              <br />
              <asp:Button ID="Button7" runat="server" CssClass="buttonG" OnClick="Button7_Click" Text="Delete Account" />
                </div>
          <div><asp:Button ID="Button4" runat="server" Text="Set as Student"  CssClass="buttonG" OnClick="Button4_Click"/>
              <br />
              <br />
              <br />
              <br />
                </div>      
 
            </div>
       
        </div>
       
   </div>
</asp:Content>
