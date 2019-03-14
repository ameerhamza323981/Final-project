<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="Hospital_Managment_System.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br /><br />
    <h1 style="font-size:35px;font-weight:bold; text-align:center;">New Book Registration</h1>
  <div class="panel panel-default container-fluid ">
  <div class="panel-heading text-center">Register New Book</div>
  <div class="panel-body">
   <div class="container-fluid col-md-offset-1">
   
   <div class="form-group ">
     <asp:Label ID="Label3" runat="server" Text="Enter Book Name"></asp:Label>
     <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Book Name...."></asp:TextBox>
   </div>

   <div class="form-group ">
     <asp:Label ID="Label12" runat="server" Text="Book Authour"></asp:Label>
     <asp:TextBox ID="txtAuthour" runat="server" class="form-control"   placeholder="Book Authour...."></asp:TextBox>
   </div>
    
       
   <div class="form-group ">
     <asp:Label ID="Label14" runat="server" Text="Book Edition"></asp:Label>
     <asp:TextBox ID="txtEdition" runat="server" class="form-control"   placeholder="Book Edition....." TextMode="Phone"></asp:TextBox>
   </div>
  
   <div class="form-group ">
     <asp:Label ID="Label4" runat="server" Text="Book Pages"></asp:Label>
     <asp:TextBox ID="txtPage" runat="server" class="form-control"   placeholder="Book Pages....." TextMode="Phone"></asp:TextBox>
   </div>
  
  
   <div class="form-group ">
     <asp:Label ID="Label5" runat="server" Text="Book Price"></asp:Label>
     <asp:TextBox ID="txtPrice" runat="server" class="form-control"   placeholder="Book Price....." TextMode="Phone"></asp:TextBox>
   </div>
  
  
  

     <asp:Button ID="btnGetLogin" runat="server" class ="btn btn-danger btn-md btn-block" OnClick="btnGetLogin_Click" Text="Save"  />
       <div class = "form-group">
	 <asp:Label ID="lblMessage" runat="server"></asp:Label>	

	</div>

</div></div></div>


</asp:Content>
