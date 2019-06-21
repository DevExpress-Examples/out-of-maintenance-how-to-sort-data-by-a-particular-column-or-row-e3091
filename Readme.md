<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/ASPxPivotGrid_SortBySummary/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_SortBySummary/Default.aspx))
* [Default.aspx.cs](./CS/ASPxPivotGrid_SortBySummary/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_SortBySummary/Default.aspx.vb))
<!-- default file list end -->
# How to sort data by a particular column or row
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3091/)**
<!-- run online end -->


<p>The following example demonstrates how to sort data by a particular column.</p><p>In this example, values of the Product Name field are sorted by September 1994 column summary values. To do this, two sort conditions represented by PivotGridFieldSortCondition instances are created. One of them identifies the '1994' field value, while another identifies the 'September' value. These sort conditions are added to the Product Name field's PivotGridFieldBase.SortBySummaryInfo.Conditions collection to specify the column by which Product Name values should be sorted. A data field that identifies the column is specified via the PivotGridFieldBase.SortBySummaryInfo.Field property.</p>

<br/>


