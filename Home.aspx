<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hospital_Managment_System.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <br  /><br  />
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="Images/Slider.jpg" alt="First Slider" style="width:100%;height:700px;" />
    </div>

    <div class="item">
      <img src="Images/Slider1.jpg" alt="Second Slider" style="width:100%;height:700px;"  />
    </div>

    <div class="item">
      <img src="Images/Slider2.jpg" alt="Third Slider"  style="width:100%;height:700px;"  />
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    
    <%--end of carousel--%>

    <%--Start of Panel--%>

    <br />
<div class="container-fluid" >
  
  <div class="col-md-4" >
  <div class="panel panel-success" style="height:220px;">
    <div class="panel-heading  text-center">Libray</div>
    <div class="panel-body">Our library provide you services 24/7 and also give free books to poor and needy people.</div>
      &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;<asp:Button runat="server" ID ="Button1" Text="View More" class="btn btn-danger"/>
  </div>
</div>

  <div class="col-md-4" >

  <div class="panel panel-success" style="height:220px;">
    <div class="panel-heading  text-center" >Staff</div>
    <div class="panel-body">Our staff is co-oprative and treat like a family member. They contact with you politely</div>
    <br />      &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;<asp:Button runat="server" ID ="Button2" Text="View More" class="btn btn-danger"/>
  </div>

  </div>

  <div class="col-md-4">
  <div class="panel panel-success" style="height:220px;">
    <div class="panel-heading  text-center">Customer</div>
    <div class="panel-body">We provide services for and you can buy book at any time.</div>
     &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;<asp:Button runat="server" ID ="Button3" Text="View More" class="btn btn-danger"/>
  </div>

  </div>
</div>
    
 <%--End of Panel--%>
      <div>
      <img src="Images/Link.jpg" alt="Link" style="width:100%;height:500px;" />
    </div>
    <br /><br />




</asp:Content>
