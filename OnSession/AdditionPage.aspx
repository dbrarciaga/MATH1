<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="AdditionPage.aspx.cs" Inherits="MATH1.OnSession.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link rel="stylesheet" href="../Responsive.css" />
      <style>
          *{
              box-sizing: border-box;
          }
          .grid-container {
              display: grid;
              grid-template-columns: 300px 300px 300px;
              gap: 1px;
              padding: 1px;             
        }
        .grid-item {
            background-color:white;
            border-radius:15px;
            align-items:center;   
            margin:50px;
            width:250px;
            height:250px;
            transition: all 0.3s ease 0s;
            
            
        }
        .grid-item:hover{            
            width:265px;
            height:265px;         
                     
            background-image:url('https://www.clipartmax.com/png/small/2-24527_plus-sign-clip-art-chadholtz-addition-sign.png');
            background-size:cover;
        }
      
         .card {
          box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
          transition: all 0.3s ease 0s;         
        }

        .container1 {
          background-color:white;
          margin:5px;
          padding:15px;
          border-radius:20px;
        }
        .waowHeader{
            display:flex;
            flex-direction:column;
            align-items:center;
            font-weight:bold;
            background-color:white;
            border-radius:20px;
            margin-left:20%;
            margin-right:20%;
        }
    
    </style>
    
    
    <div style="margin-left:18%; padding-bottom:31.01%;" class="bgPattern">        

        <h2  style="color:white; text-align:center"><b>Addition</b></h2>
       
         <div class="w3-row-padding w3-margin-top">            
             
             <asp:LinkButton ID="LinkButton1" runat="server" CssClass="w3-third" OnClick="LinkButton1_Click">
            <div style="width:300px" class="w3-card">
            <img src="https://i.imgur.com/FmXDahQ.png" style="width:300px">
            <div style="background-color:white;" class="w3-container">
            <h4>Ones</h4>
            <p>testing</p>
            </div>
            </div>
             </asp:LinkButton>

             <asp:LinkButton ID="LinkButton2" runat="server" CssClass="w3-third">
            <div style="width:300px" class="w3-card">
            <img src="https://i.imgur.com/FmXDahQ.png" style="width:300px">
            <div style="background-color:white;" class="w3-container">
            <h4>Tens</h4>
            <p>testing</p>
            </div>
            </div>
             </asp:LinkButton>

            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="w3-third" >
            <div style="width:300px" class="w3-card">
            <img src="https://i.imgur.com/FmXDahQ.png" style="width:300px">
            <div style="background-color:white;" class="w3-container">
            <h4>Hundreds</h4>
            <p>testing</p>
            </div>
            </div>
            </asp:LinkButton>


            </div>
     
       
        

           
            
              
     </div>      
       
  
</asp:Content>
