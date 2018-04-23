// Developer Express Code Central Example:
// How to update a document displayed by the ASPxDocumentViewer within the ASPxPopupControl
// 
// This example illustrates how to update a web report's content on the fly by
// placing the ASPxDocumentViewer
// (http://documentation.devexpress.com/#XtraReports/CustomDocument5193) within the
// ASPxPopupControl
// (http://documentation.devexpress.com/#AspNet/CustomDocument8289) and calling the
// ASPxClientDocumentViewer.Refresh method.
// An additional hidden field is provided
// on the web page to pass parameter values to a report before its document is set
// forth and published using the ASPxDocumentViewer.
// 
// You can find sample updates and versions for different programming languages here:
// http://www.devexpress.com/example=E914

using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxPopupControl;
using DevExpress.Web.ASPxCallbackPanel;
using DevExpress.XtraReports.Web;

public partial class _Default : System.Web.UI.Page 
{

    protected void Page_Load(object sender, EventArgs e) {
        string test = string.Empty;
        HtmlInputHidden hf = (HtmlInputHidden)this.Page.FindControl("ReportMsg");
        XtraReport1 report = new XtraReport1();
        report.Parameters["test"].Value = hf.Value.ToString();
        report.CreateDocument();
        this.DocumentViewer1.Report = report;
        this.DocumentViewer1.DataBind();
    }
}
