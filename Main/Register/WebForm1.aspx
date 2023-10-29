<%@ Page Title="" Language="C#" MasterPageFile="~/Main/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MATH1.Main.WebForm1" %>
<asp:Content ContentPlaceHolderID="testing" runat="server">
   <center>
        <div class="w3-containter w3-white w3-round-large" style="width:550px">
            <h4>Your Information</h4>           
            <p>First Name:</p>
            <asp:TextBox ID="fname" runat="server"></asp:TextBox>
            <br />
             <p>Last Name:</p>
            <asp:TextBox ID="lname" runat="server"></asp:TextBox>
            <br />
             <p>Age:</p>
            <asp:TextBox ID="bday" runat="server"></asp:TextBox>
            <br />   
            <p>Select grade level: </p>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <br />
            <br />            
            <asp:Button ID="next" runat="server" Text="Next" OnClick="next_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
   </center>
</asp:Content>