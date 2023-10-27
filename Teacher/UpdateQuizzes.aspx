<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="UpdateQuizzes.aspx.cs" Inherits="MATH1.Teacher.WebForm8"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <center> <p>
        UPDATE QUIZZES</p>
      <p>
          <asp:Label ID="Label1" runat="server" ForeColor="#00CC00" Text="Label"></asp:Label>
          <asp:Label ID="Label2" runat="server" ForeColor="#FF0066" Text="Label"></asp:Label>
      </p>
      <p>
          <asp:GridView ID="GridView1" runat="server" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                  <asp:CommandField ShowDeleteButton="True" />
              </Columns>
          </asp:GridView>
      </p></center> 
    <p>
        &nbsp;</p>
</asp:Content>
