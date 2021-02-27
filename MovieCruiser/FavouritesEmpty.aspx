<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="FavouritesEmpty.aspx.cs" Inherits="MovieCruiser.FavouriteEmpty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Favourites</h1>
    <p style="font-size: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No items in Favourites. Use 'Add to Favourite' option in 
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MovieListCustomerNotification.aspx">Movie List</asp:HyperLink>
    </p>
    <br /> <br /> <br /> <br /> <br /> <br /> <br />
</asp:Content>
