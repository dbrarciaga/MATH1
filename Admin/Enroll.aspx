<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Enroll.aspx.cs" Inherits="MATH1.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="AdminDash.aspx" class="w3-button w3-white w3-margin w3-round-large"> Dashboard</a>
    <div style="height:1000px" class="w3-container">
        <h1>Enroll</h1>
        <div class="w3-container w3-white">
            <h4>Select a student: </h4>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>-- Select number --</asp:ListItem>
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all"></asp:GridView>
            <br />
        </div>
        <br />
        <div class="w3-container w3-white">            
            <p>Enter grade</p>
            <asp:DropDownList ID="GradeLevel" runat="server"></asp:DropDownList>
        </div>
          <div class="w3-container w3-white">            
            <p>Select teacher: </p>
              <asp:DropDownList ID="teacherList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="teacherList_SelectedIndexChanged"></asp:DropDownList>
              <asp:GridView ID="GridView2" runat="server" CssClass="w3-table-all"></asp:GridView>
            <br />

        </div>
        <asp:Label ID="Label1" runat="server" Text=" " CssClass="w3-card w3-margin w3-white w3-round-large w3-xlarge"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="enroll student" CssClass="w3-white w3-button w3-round-large   " OnClick="Button1_Click" />

    </div>
</asp:Content>
