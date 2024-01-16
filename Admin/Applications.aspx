<%@ Page Title="" Language="C#" MasterPageFile="/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Applications.aspx.cs" Inherits="MATH1.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
    function buttonClick(pangalan) {
        alert('Client-side Click: ' + pangalan);
    }
    </script>
    <center style="height:1000px">        
      <div runat="server" id="div1">
          <h1> Applications </h1>
           <div style="width:800px;" class="w3-card w3-white w3-round-large">
               <div class="w3-row-padding">
                   <div class="w3-half">
                       <h4> Select</h4>
                       <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                   </div>
                   <div class="w3-half">
                       <h4> Applicant's Information

                       </h4>
                        
           <br />
           <div class="w3-row">
               <div class="w3-half">
                   <p>First Name: 
                        <b>
                           <asp:Label ID="F_name" runat="server" Text="Label"></asp:Label>
                        </b> 
                   </p>
               </div>
                 <div class="w3-half">
                   <p>Last Name: 
                       <b>
                           <asp:Label ID="L_name" runat="server" Text="Label"></asp:Label>
                       </b>
                   </p>
               </div>
           </div>
           <br />
           <p>E-mail: 
               <b>
                    <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
               </b>
           </p>
           <br />
                   </div>
               </div>
           <br />
          
       </div>
       <br />
       <div style="width:800px;" class="w3-card w3-white w3-round-large">
           <h4>Pitch</h4>
           <p>
           <asp:Label ID="pitch1" runat="server" Text="Label"></asp:Label>
           </p>
           <br />
       </div>
      </div>
        <br />
      <div class="w3-row">
          <asp:Label ID="error" runat="server" Text=" "></asp:Label>          
          <asp:Button ID="reject" runat="server" Text="Reject" CssClass="w3-button w3-xxlarge w3-red w3-round-large" />
          <asp:Button ID="accept" runat="server" Text="Accept" CssClass="w3-button w3-xxlarge w3-white w3-round-large" OnClick="accept_Click" />
      </div>
        <br />

      <div runat="server" id="div2">
          <h1>Register Teacher</h1>
          <div style="width:800px;" class="w3-card w3-white w3-round-large">
               <div class="w3-row">
               <div class="w3-half">
                   <p>First Name: 
                        <b>
                           <asp:Label ID="F_name2" runat="server" Text="Label"></asp:Label>
                        </b> 
                   </p>
               </div>
                 <div class="w3-half">
                   <p>Last Name: 
                       <b>
                           <asp:Label ID="L_name2" runat="server" Text="Label"></asp:Label>
                       </b>
                   </p>
               </div>
           </div>
           <br />
           <p>E-mail: 
               <b>
                    <asp:Label ID="email2" runat="server" Text="Label"></asp:Label>
               </b>
           </p>
           <br />              
          </div>
          <br />
          <div style="width:800px;" class="w3-card w3-white w3-round-large">
           <br />
              <h4>Account</h4>
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <br />
              <p>Username: </p>
              <asp:TextBox ID="username" runat="server"></asp:TextBox>
              <br />
              <p>Password: </p>
              <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
              <br />
              <p>Birthday: </p>
              <asp:TextBox ID="age" runat="server" TextMode="Date"></asp:TextBox>
              <br />
              <br />
             <asp:Label ID="error2" runat="server" Text=""></asp:Label>
            </div>         
          <br />
           <asp:Button ID="register" runat="server" Text="Register" CssClass="w3-button w3-xxlarge w3-blue w3-round-large w3-card" OnClick="register_Click"/>
     </div>
     <div  runat="server" id="div3">
         <div style="width:800px;" class="w3-card w3-white w3-round-large">
             <h1>Teacher has been registered! </h1>
             <br />
             <a href="AdminDash.aspx" class="w3-button w3-blue w3-xxlarge w3-round-large w3-margin">Back to dashboard</a>
         </div>
     </div>   
   </center>
      
   
</asp:Content>
