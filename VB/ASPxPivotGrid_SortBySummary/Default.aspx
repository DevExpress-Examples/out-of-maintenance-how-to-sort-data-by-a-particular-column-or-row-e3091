<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb"
	Inherits="ASPxPivotGrid_SortBySummary._Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v15.1, Version=15.1.15.0,
	Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPivotGrid"
	TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="AccessDataSource1"
		OnLoad="ASPxPivotGrid1_Load">
			<Fields>
				<dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1"
				Caption="Product Name" FieldName="ProductName" />
				<dx:PivotGridField ID="fieldOrderYear" Area="ColumnArea" AreaIndex="0"
				Caption="Year" FieldName="OrderDate" GroupInterval="DateYear" />
				<dx:PivotGridField ID="fieldUnitPrice" Area="DataArea" AreaIndex="0"
				Caption="UnitPrice" FieldName="UnitPrice" />
				<dx:PivotGridField ID="fieldQuantity" Area="DataArea" AreaIndex="1"
				Caption="Quantity" FieldName="Quantity" />
				<dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0"
				Caption="Category Name" FieldName="CategoryName" />
				<dx:PivotGridField ID="fieldOrderMonth" Area="ColumnArea" AreaIndex="2"
				Caption="Month" FieldName="OrderDate" GroupInterval="DateMonth" />
			</Fields>
		</dx:ASPxPivotGrid>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/nwind.mdb"
			SelectCommand="SELECT [ProductName], [CategoryName], [OrderDate],
			[Quantity], [UnitPrice] FROM [SalesPerson]">
		</asp:AccessDataSource>
	</div>
	</form>
</body>
</html>