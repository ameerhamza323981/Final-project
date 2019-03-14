<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Hospital_Managment_System.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <br /><br />
    
        <div class="col-sm-2">
            </div>
        <div class="col-sm-8">

    <h1 style="font-size:35px;font-weight:bold; text-align:center;">Contact Us</h1>
  <div class="panel panel-default container-fluid ">
  <div class="panel-heading text-center">Contact Us</div>
  <div class="panel-body">
   <div class="container-fluid col-md-offset-1 ">
   

   

   <div class="form-group ">
     <asp:Label ID="Label11" runat="server" Text="Please Enter Your Name"></asp:Label>
     <asp:TextBox ID="txtName" runat="server" class="form-control"   placeholder="Enter Your Name....."></asp:TextBox>
   </div>

              
   <div class="form-group ">
     <asp:Label ID="Label14" runat="server" Text="Please Enter Your Contact No"></asp:Label>
     <asp:TextBox ID="txtContact" runat="server" class="form-control"   placeholder="Enter Your Contact No....."></asp:TextBox>
   </div>
       
   <div class="form-group ">
     <asp:Label ID="Label1" runat="server" Text="Please Enter Your Email Address"></asp:Label>
     <asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email"   placeholder="Enter Your EMail Adddress....."></asp:TextBox>
   </div>
          
   <div class="form-group ">
     <asp:Label ID="Label15" runat="server" Text="Please Enter Your Message"></asp:Label>
     <asp:TextBox ID="txtMessage" runat="server" class="form-control" TextMode="MultiLine"   placeholder="Enter Your Message....."></asp:TextBox>
   </div>


                
     <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" class ="btn btn-warning btn-block" Text="Send" />
            
   <div class="form-group ">
     <asp:Label ID="lblMessage" runat="server"></asp:Label>
   </div>
   </div>
  </div>


</div>
    </div>
    
    <div class="col-sm-2">
</div>
</asp:Content>
