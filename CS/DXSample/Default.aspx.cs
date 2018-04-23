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
