using System;
using System.Web.UI;
using DevExpress.XtraPivotGrid;

namespace ASPxPivotGrid_SortBySummary {
    public partial class _Default : Page {
        protected void ASPxPivotGrid1_Load(object sender, EventArgs e) {

            // Specifies a data field whose summary values should be used to sort values
            // of the Product Name field.
            fieldProductName.SortBySummaryInfo.Field = fieldUnitPrice;

            // Specifies a column by which the Product Name field values should be sorted.
            fieldProductName.SortBySummaryInfo.Conditions.Clear();
            fieldProductName.SortBySummaryInfo.Conditions.Add(
                new PivotGridFieldSortCondition(fieldOrderYear, "1994"));
            fieldProductName.SortBySummaryInfo.Conditions.Add(
                new PivotGridFieldSortCondition(fieldOrderMonth, "9"));
        }
    }
}
