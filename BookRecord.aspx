<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BookRecord.aspx.cs" Inherits="Hospital_Managment_System.PatientRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="None" Height="201px"  Width="909px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="BookAuthour" HeaderText="BookAuthour" SortExpression="BookAuthour" />
                <asp:BoundField DataField="BookEdition" HeaderText="BookEdition" SortExpression="BookEdition" />
                <asp:BoundField DataField="BookPage" HeaderText="BookPage" SortExpression="BookPage" />
                <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString1 %>" DeleteCommand="DELETE FROM [Book] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Book] ([BookName], [BookAuthour], [BookEdition], [BookPage], [BookPrice]) VALUES (@BookName, @BookAuthour, @BookEdition, @BookPage, @BookPrice)" ProviderName="<%$ ConnectionStrings:LibraryConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [BookName], [BookAuthour], [BookEdition], [BookPage], [BookPrice] FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [BookAuthour] = @BookAuthour, [BookEdition] = @BookEdition, [BookPage] = @BookPage, [BookPrice] = @BookPrice WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="BookAuthour" Type="String" />
                <asp:Parameter Name="BookEdition" Type="String" />
                <asp:Parameter Name="BookPage" Type="String" />
                <asp:Parameter Name="BookPrice" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="BookAuthour" Type="String" />
                <asp:Parameter Name="BookEdition" Type="String" />
                <asp:Parameter Name="BookPage" Type="String" />
                <asp:Parameter Name="BookPrice" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

         
</asp:Content>
