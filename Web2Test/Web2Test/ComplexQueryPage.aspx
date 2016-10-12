<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ComplexQueryPage.aspx.cs" Inherits="Web2Test.ComplexQueryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:labscalableConnectionString %>" ProviderName="<%$ ConnectionStrings:labscalableConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT ProductCategory.ProductCategoryID, ProductCategory.Name FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory ON Product.ProductCategoryID = ProductCategory.ProductCategoryID INNER JOIN SalesLT.ProductModel ON Product.ProductModelID = ProductModel.ProductModelID INNER JOIN SalesLT.ProductModelProductDescription ON ProductModel.ProductModelID = ProductModelProductDescription.ProductModelID INNER JOIN SalesLT.ProductDescription ON ProductModelProductDescription.ProductDescriptionID = ProductDescription.ProductDescriptionID"></asp:SqlDataSource>
    </form>
</asp:Content>
