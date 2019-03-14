<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hospital_Managment_System.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

               <br /><br />
    
        <div class="col-sm-2">
            </div>
        <div class="col-sm-8">
    <h1 style="font-size:35px;font-weight:bold; text-align:center;">Login</h1>
       
  <div class="panel panel-default container-fluid ">
  <div class="panel-heading text-center">Login</div>
  <div class="panel-body">
   <div class="container-fluid col-md-offset-1">
   
   <div class="form-group ">
     <asp:Label ID="Label3" runat="server" Text="Please Enter Your Id"></asp:Label>
     <asp:TextBox ID="txtId" runat="server" class="form-control" placeholder="Enter Your Id...."></asp:TextBox>
   </div>
       
   <div class="form-group ">
     <asp:Label ID="Label1" runat="server" Text="Please Enter Your Password"></asp:Label>
     <asp:TextBox ID="txtPasssword" runat="server" class="form-control"  TextMode="Password"  placeholder="Enter Your Password...."></asp:TextBox>
   </div>


     <asp:Button ID="btnSignin" runat="server" class ="btn btn-danger btn-md btn-block" OnClick="btnSignin_Click" Text="Login" />
       
   <div class="form-group ">
     <asp:Label ID="lblShowMessage" runat="server" Text=""></asp:Label>
   </div>
   </div>
  </div>
</div>
</div>

</asp:Content>
