Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI
Imports DevExpress.XtraPivotGrid

Namespace ASPxPivotGrid_SortBySummary
	Partial Public Class _Default
		Inherits Page
		Protected Sub ASPxPivotGrid1_Load(ByVal sender As Object, ByVal e As EventArgs)

			' Specifies a data field whose summary values should be used to sort values
			' of the Product Name field.
			fieldProductName.SortBySummaryInfo.Field = fieldUnitPrice

			' Specifies a column by which the Product Name field values should be sorted.
			fieldProductName.SortBySummaryInfo.Conditions.Clear()
			fieldProductName.SortBySummaryInfo.Conditions.Add( _
				New PivotGridFieldSortCondition(fieldOrderYear, "1994"))
			fieldProductName.SortBySummaryInfo.Conditions.Add( _
				New PivotGridFieldSortCondition(fieldOrderMonth, "9"))
		End Sub
	End Class
End Namespace
