<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Favorite.aspx.cs" Inherits="MovieCruiser.Favorite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Favorites </h2>
    <asp:panel ID="notification" ForeColor="Green" HorizontalAlign="Center" Visible="false" runat="server">
        <br />
        Movies are Added to the favorites<br /> </asp:panel>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BorderStyle="None" GridLines="None" HorizontalAlign="Center" Width="433px">
                  
    <Columns>
           <asp:BoundField HeaderText="ID" DataField="Id" ItemStyle-Width="30px" >
<ItemStyle Width="30px"></ItemStyle>
             </asp:BoundField>
           <asp:BoundField HeaderText="Title" DataField="Title" ItemStyle-Width="100px" >
<ItemStyle Width="100px"></ItemStyle>
             </asp:BoundField>
             <asp:BoundField HeaderText="BoxOffice" DataField="BoxOffice" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
              <asp:BoundField HeaderText="Genre" DataField="Genre" ItemStyle-Width="150px" >
                  <ItemStyle Width="100px"></ItemStyle>
            
             </asp:BoundField>
            
             <asp:HyperLinkField
            DataNavigateUrlFields="id"
            DataNavigateUrlFormatString="~\Favorite.aspx?id={0}&ShowPanel=True"
            Text="Delete"
            HeaderText="Action" ItemStyle-Width="50px">
 

<ItemStyle Width="50px"></ItemStyle>
             </asp:HyperLinkField>
         
       </Columns>
       
    </asp:GridView>
    <asp:Label ID="NoOfFavorites" runat="server" ></asp:Label>
</asp:Content>
