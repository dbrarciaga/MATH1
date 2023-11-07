<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Enroll.aspx.cs" Inherits="MATH1.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:1000px" class="w3-container">
        <h1>Enroll student</h1>
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
            <p>Enter section</p>
            <asp:DropDownList ID="GradeLevel" runat="server"></asp:DropDownList>
        </div>
          <div class="w3-container w3-white">            
            <p>Select teacher: </p>
              <asp:DropDownList ID="teacherList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="teacherList_SelectedIndexChanged"></asp:DropDownList>
              <asp:GridView ID="GridView2" runat="server" CssClass="w3-table-all"></asp:GridView>
            <br />

        </div>
        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="enroll student" OnClick="Button1_Click" />

    </div>
</asp:Content>
