<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MoreComplexQueryPage.aspx.cs" Inherits="Web2Test.MoreComplexQueryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:labscalableConnectionString %>" ProviderName="<%$ ConnectionStrings:labscalableConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT ProductCategory.ProductCategoryID, ProductCategory.Name, COUNT(*) AS CountSome FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory ON Product.ProductCategoryID = ProductCategory.ProductCategoryID LEFT OUTER JOIN SalesLT.ProductModel ON Product.ProductModelID = ProductModel.ProductModelID LEFT OUTER JOIN SalesLT.ProductModelProductDescription ON ProductModel.ProductModelID = ProductModelProductDescription.ProductModelID LEFT OUTER JOIN SalesLT.ProductDescription ON ProductModelProductDescription.ProductDescriptionID = ProductDescription.ProductDescriptionID LEFT OUTER JOIN SalesLT.SalesOrderDetail ON Product.ProductID = SalesOrderDetail.ProductID GROUP BY ProductCategory.ProductCategoryID, ProductCategory.Name ORDER BY ProductCategory.Name">
        </asp:SqlDataSource>
    </form>
</asp:Content>
