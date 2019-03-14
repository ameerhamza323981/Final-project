<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SearchData.aspx.cs" Inherits="Hospital_Managment_System.SearchData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
       <div class = "form-group">
	 <asp:Label ID="Label2" runat="server" Text="Select User Name"></asp:Label>	
        <asp:DropDownList ID="drpName"  class ="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="BookName" DataValueField="BookName">
        </asp:DropDownList>
	       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usmanDB %>" SelectCommand="SELECT [BookName] FROM [Book]"></asp:SqlDataSource>
	</div>


    <asp:Button ID="btnGetLogin" runat="server" class ="btn btn-danger btn-md btn-block"  Text="Search" OnClick="btnGetLogin_Click1"  />
    
    <asp:Panel ID="Panel1" Visible ="false" runat="server">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="900px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="BookAuthour" HeaderText="BookAuthour" SortExpression="BookAuthour" />
                <asp:BoundField DataField="BookEdition" HeaderText="BookEdition" SortExpression="BookEdition" />
                <asp:BoundField DataField="BookPage" HeaderText="BookPage" SortExpression="BookPage" />
                <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
            </Columns>
        </asp:GridView>

        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:usmanDB %>" SelectCommand="SELECT * FROM [Book] WHERE ([BookName] = @BookName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="drpName" Name="BookName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        
    </asp:Panel>
           
</asp:Content>
