<%@ Page   MaintainScrollPositionOnPostback="true" Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="selectionPage.aspx.cs" Inherits="MATH1.OnSession.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
          .flex-container {
              display: flex;
              flex-direction:column;
              
              padding: 1px;             
        }
        .grid-item {
            background-color:white;
            border-radius:15px;
            margin-bottom:15px;
            width:600px;
            height:150px;
            transition: all 0.3s ease 0s;
        }
        .grid-item:hover{            
            padding:80px;
            background-image:url('https://www.clipartmax.com/png/small/2-24527_plus-sign-clip-art-chadholtz-addition-sign.png');
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
    
    
    <div style=" padding-bottom:31.01%;" id="form1" class="bgPattern w3-container">
        <a href="/OnSession/dashboard/dasdboard.aspx" class="w3-button w3-white w3-round-large"><h4><</h4>  </a>

        <h2  class="w3-container" style="color:white; text-align:center"><b><asp:Label ID="Label1" runat="server" Text="Grade" CssClass="w3-container"></asp:Label></b></h2>
       

       
           <center><i style="color:white">Select a topic</i> </center>
            <!-- first row -->
        
            <div class="w3-row-padding">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton1_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/FmXDahQ.png" style="width:350px; height:350px" class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4>ADDITION</h4>      
                           <asp:Label ID="Label11" runat="server" Text=" "></asp:Label>
  	                </div>
                </asp:LinkButton> 
                <asp:LinkButton ID="LinkButton2"  runat="server"  CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton2_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/w2JtBcx.png" style="width:350px; height:350px"  class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4>SUBTRACTION</h4>
                        <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
  	                </div>
                </asp:LinkButton> 
                <asp:LinkButton ID="LinkButton3" runat="server"  CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton3_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/yH1VCDi.png" style="width:350px; height:350px"  class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4>MULTIPLICATION</h4>
                        <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
  	                </div>
                </asp:LinkButton> 
               

            </div>
            <!-- second row -->

            <div class="w3-row-padding">
                 <asp:LinkButton ID="LinkButton4" runat="server"  CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton4_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/m1ICHiY.png " style="width:350px; height:350px"  class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4>DIVISION</h4>
                        <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
  	                </div>
                </asp:LinkButton> 
                <asp:LinkButton ID="LinkButton5" runat="server"  CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton5_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/FmXDahQ.png" style="width:350px; height:350px"  class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4 style="font-size:19px;">ADD AND SUBTRACT INTEGER</h4>
                        <asp:Label ID="Label7" runat="server" Text=" "></asp:Label>
  	                </div>
                </asp:LinkButton> 
                <asp:LinkButton ID="LinkButton6" runat="server"  CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton6_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/FmXDahQ.png" style="width:350px; height:350px"  class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4>MULTIPLY INTEGER</h4>
                        <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
  	                </div>
                </asp:LinkButton> 
             

            </div>
            <!-- third row -->
        
            <div class="w3-row-padding">
                
                   <asp:LinkButton ID="LinkButton7" runat="server"  CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton7_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/FmXDahQ.png" style="width:350px; height:350px"  class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4>DIVISION OF INTEGER</h4>
                        <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                        
  	                </div>
                </asp:LinkButton>

                 <asp:LinkButton ID="LinkButton8" runat="server"  CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton8_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/FmXDahQ.png" style="width:350px; height:350px"  class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4>EXPONENT</h4>
                        <asp:Label ID="Label9" runat="server" Text=" "></asp:Label>
                       
  	                </div>
                </asp:LinkButton> 
                <asp:LinkButton ID="LinkButton9" runat="server"  CssClass="w3-third w3-mobile w3-margin-top" OnClick="LinkButton9_Click" class="no-refresh">
  	                <img src="https://i.imgur.com/FmXDahQ.png" style="width:350px; height:350px"  class="w3-round-large">
  	                <div style="width:350px; text-align:center; color:white;">
  		                <h4>OPERATIONS</h4>
                        <asp:Label ID="Label8" runat="server" Text=" "></asp:Label>
  	                </div>
                </asp:LinkButton> 
                
               
                         
            </div>

           
            
              
     </div>      
      <script>
          $(document).ready(function () {
              $(".no-refresh").click(function (event) {
                  event.preventDefault();
              });
          });
      </script>
  
</asp:Content>
