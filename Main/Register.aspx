<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MATH1.Main.WebForm6" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .WaowTheGreat{
            font-family:Calibri;
            display:flex;
            flex-direction:column;
            align-items:center;
            
            font-weight:bold;
        }
        .p{
            font-size:15px;
        }
        .grid_container{
             display: grid;
            grid-template-columns: 1fr 1fr;  
            margin:5px;
            padding: 10px;                      
            text-align: center;
        }
        .grid-item {     
            margin:3px;
            padding: 20px;
            font-size: 30px;
            text-align: center;
            transition: all 0.3s ease 0s;
              
        }
        .TextBoxNiWaow{
            padding:5px;
            font-size:20px;
            font-weight:bold;
            font-family:Calibri;
            border-radius:5px;
            border-color:black;
        }
        .grid-item:hover{
            padding: 20px;
            background-color:black;
            color:white;
            border-radius:20px;
        }
        .buttonNiWaow{
            background-color:black;
            color:white;
            transition: all 0.3s ease 0s;
            cursor:pointer;
            padding:20px;
            border-radius:10px;
            margin:50px;
        }
        .buttonNiWaow:hover{
            background-color:white;
            color:black;
            font-size:25px;
        }
        .radiobuttonNiWaow{
            padding:30px;
        }
        .card{
            background-color:white;
            color:black;
            border-radius:40px;
            margin:10px 350px 50px;
            padding:10px;
            

        }
        .red{
            font-size:20px;
            color:red;
        }
        
    </style>
    <center>
        <div style="width:50%; text-align:center;" class="w3-card w3-white w3-margin-bottom w3-round-large">
        <h1>Sign-Up!</h1>
        <asp:Panel ID="Panel1" runat="server"  CssClass="w3-animate-right">
            <p>Username:</p>
            <asp:TextBox ID="username" runat="server" CssClass="TextBoxNiWaow"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="TextBoxNiWaow"></asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  CssClass="w3-animate-right">
            <p>First Name:</p>
            <asp:TextBox ID="f_Name" runat="server" CssClass="TextBoxNiWaow"></asp:TextBox>
            <p>Last Name:</p>
            <asp:TextBox ID="l_Name" runat="server" CssClass="TextBoxNiWaow"></asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="w3-animate-right">
            <p>Age:</p>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxNiWaow"></asp:TextBox>
            <p>Grade Level:</p>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <br />
            <asp:Label ID="Label1" runat="server" Text="    " CssClass="red"></asp:Label>
            <br />
            <asp:Button ID="register" runat="server" Text="Register!" CssClass="buttonNiWaow" OnClick="register_Click" />
        </asp:Panel>
        
    </div>
    </center>
</asp:Content>
