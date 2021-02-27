<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="MovieListCustomer.aspx.cs" Inherits="MovieCruiser.MovieListCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Movies</h2>
       <asp:Panel runat="server"  ID="notification" Visible="false" HorizontalAlign="Center" ForeColor="Green" > Movie added to Favorites successfully </asp:Panel>
   
    <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" Width="592px" HorizontalAlign="Center"  BorderStyle="None" CellPadding="6" GridLines="None">
        <Columns>
             <asp:BoundField HeaderText="ID" DataField="Id" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
           <asp:BoundField HeaderText="Title" DataField="Title" ItemStyle-Width="100px" >
<ItemStyle Width="300px"></ItemStyle>
             </asp:BoundField>
             <asp:BoundField HeaderText="BoxOffice" DataField="BoxOffice" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
              <asp:BoundField HeaderText="Genre" DataField="Genre" ItemStyle-Width="150px" >
                  <ItemStyle Width="100px"></ItemStyle>
             </asp:BoundField>
              <asp:BoundField HeaderText="HasTeaser" DataField="HasTeaser" ItemStyle-Width="50px" >
            
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
            
             <asp:HyperLinkField
            DataNavigateUrlFields="id"
            DataNavigateUrlFormatString="~\MovieListCustomer.aspx?id={0}&ShowPanel=True"
            Text="Add To Favorite"
            HeaderText="Action" ItemStyle-Width="500px">
 

<ItemStyle Width="500px"></ItemStyle>
             </asp:HyperLinkField>
 

        </Columns>
        <EditRowStyle HorizontalAlign="Left" />
        <RowStyle HorizontalAlign="Left" />
    </asp:GridView>

     <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
     </asp:LinqDataSource>

    <br />
    <br />
     
    
</asp:Content>
