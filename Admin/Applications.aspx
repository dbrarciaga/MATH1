<%@ Page Title="" Language="C#" MasterPageFile="/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Applications.aspx.cs" Inherits="MATH1.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center style="height:1000px">        
      <div runat="server" id="div1">
          <h1> Applications </h1>
           <div style="width:800px;" class="w3-card w3-white w3-round-large">
           <br />
           <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
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
              <br />
              <p>Username: </p>
              <asp:TextBox ID="username" runat="server"></asp:TextBox>
              <br />
              <p>Passowrd: </p>
              <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
              <br />
              <p>Birthday: </p>
              <asp:TextBox ID="age" runat="server" TextMode="Date"></asp:TextBox>
            </div>
     </div>
   </center>
      
   
</asp:Content>
