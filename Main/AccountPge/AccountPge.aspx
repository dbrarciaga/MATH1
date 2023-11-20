<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" CodeBehind="AccountPge.aspx.cs" Inherits="MATH1.Main.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .first{
            
            font-family:Calibri;
            align-items:center;
        }
        .grid-container {
          display: grid;
          grid-template-columns: auto auto auto;         
          padding: 10px;
          margin:25px 50px 1000px;
          justify-content:center;
          
        }
        .regis{
            background-image:url('https://media.istockphoto.com/id/1097305476/photo/close-up-of-registration-desk-in-front-of-conference-center-with-businessman-writing-on-the.jpg?s=1024x1024&w=is&k=20&c=t07yCuvrrXTG1bxlLdRreYTxwaa4s-YYFpSTj01wvHw=');
             background-color: rgba(255, 255, 255, 0.8);
              width:150px;
              margin:auto;
              padding: 10px;
              padding-bottom:300px;
              font-size: 30px;
              font-family:Calibri;
              margin:5px 10px;
              text-align: center;
              align-items:end;
              border-radius: 25px;
              grid-template-columns:1fr;
              transition:all 0.3s ease 0s;
        }
        regis:hover{
            color:white;
            width:200px;
            margin:auto;
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            animation: gradient 5s ease infinite;
            background-size: 400% 400%;
        }
        .grid-item {
          background-color: rgba(255, 255, 255, 0.8);
          width:150px;
          margin:auto;
          padding: 10px;
          padding-bottom:300px;
          font-size: 30px;
          font-family:Calibri;
          margin:5px 10px;
          text-align: center;
          align-items:end;
          border-radius: 25px;
          grid-template-columns:1fr;
          transition:all 0.3s ease 0s;
          
        }
        .vl {
          border-left: 10px black;
          height: inherit;
        }
         
        
        .grid-item:hover {            
            color:white;
            width:200px;
            margin:auto;
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            animation: gradient 5s ease infinite;
            background-size: 400% 400%;
        }
        @keyframes gradient {
	        0% {
		        background-position: 0% 50%;
	        }
	        50% {
		        background-position: 100% 50%;
	        }
	        100% {
		        background-position: 0% 50%;
	        }
        }
       
    </style>
    <section style="text-align:center" class=" w3-container w3-white w3-margin-bottom">
   
            <h1>Join MATHiNIQUE now or already a user?</h1>
            <div class="w3-row-padding w3-block">
                 <div class="w3-half w3-animate-left">
                   <a href="../Register/WebForm1.aspx" class="w3-card-4 w3-button w3-round-large w3-margin" style="width:100%;">
                       <div class="w3-container">
                      <p> Not a yet a student? Register now!</p>
                    </div>
                    <header class="w3-container w3-deep-purple">
                      <h1>Register</h1>
                    </header>

                    
           
                  </a>

               </div>
                 <div class="w3-half w3-animate-right">
                   <a href="../Login/LogIn.aspx" class="w3-card-4 w3-button w3-round-large w3-margin" style="width:100%;">
                       <div class="w3-container">
                      <p> Are you a student?</p>
                    </div>
                    <header class="w3-container w3-deep-purple">
                      <h1>Log-In</h1>
                    </header>

                    
           
                  </a>

               </div>
               
            </div>

           
      
   
      

    </section>
</asp:Content>
