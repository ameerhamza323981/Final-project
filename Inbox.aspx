<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="Hospital_Managment_System.Inbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 

    <p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="RequestNo" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." GridLines="None" Height="164px" Width="724px">
        <Columns>
            <asp:BoundField DataField="RequestNo" HeaderText="RequestNo" ReadOnly="True" SortExpression="RequestNo" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            <asp:CommandField ButtonType="Button" HeaderText="Delete Record" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString1 %>" DeleteCommand="DELETE FROM [ContactUs] WHERE [RequestNo] = @RequestNo" InsertCommand="INSERT INTO [ContactUs] ([Name], [ContactNo], [Email], [Message]) VALUES (@Name, @ContactNo, @Email, @Message)" ProviderName="<%$ ConnectionStrings:LibraryConnectionString1.ProviderName %>" SelectCommand="SELECT [RequestNo], [Name], [ContactNo], [Email], [Message] FROM [ContactUs]" UpdateCommand="UPDATE [ContactUs] SET [Name] = @Name, [ContactNo] = @ContactNo, [Email] = @Email, [Message] = @Message WHERE [RequestNo] = @RequestNo">
        <DeleteParameters>
            <asp:Parameter Name="RequestNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="RequestNo" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
 

</asp:Content>
