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
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

/// <summary>
/// Summary description for XtraReport1
/// </summary>
public class XtraReport1 : DevExpress.XtraReports.UI.XtraReport
{
    private DevExpress.XtraReports.UI.DetailBand Detail;
    private XRLabel xrLabel1;
    private DevExpress.XtraReports.Parameters.Parameter test;
	/// <summary>
	/// Required designer variable.
	/// </summary>
	private System.ComponentModel.IContainer components = null;

	public XtraReport1()
	{
		InitializeComponent();
		//
		// TODO: Add constructor logic here
		//
	}
	
	/// <summary> 
	/// Clean up any resources being used.
	/// </summary>
	/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
	protected override void Dispose(bool disposing) {
		if (disposing && (components != null)) {
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	#region Designer generated code

	/// <summary>
	/// Required method for Designer support - do not modify
	/// the contents of this method with the code editor.
	/// </summary>
	private void InitializeComponent() {
        string resourceFileName = "XtraReport1.resx";
        this.Detail = new DevExpress.XtraReports.UI.DetailBand();
        this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
        this.test = new DevExpress.XtraReports.Parameters.Parameter();
        ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
        // 
        // Detail
        // 
        this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel1});
        this.Detail.Height = 39;
        this.Detail.Name = "Detail";
        this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
        this.Detail.RepeatCountOnEmptyDataSource = 20;
        this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
        // 
        // xrLabel1
        // 
        this.xrLabel1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
        this.xrLabel1.Location = new System.Drawing.Point(17, 0);
        this.xrLabel1.Name = "xrLabel1";
        this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
        this.xrLabel1.Size = new System.Drawing.Size(525, 25);
        this.xrLabel1.StylePriority.UseFont = false;
        this.xrLabel1.Text = "Report Content";
        // 
        // test
        // 
        this.test.Name = "test";
        this.test.Value = "";
        // 
        // XtraReport1
        // 
        this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail});
        this.Margins = new System.Drawing.Printing.Margins(0, 0, 100, 100);
        this.PageHeight = 400;
        this.PageWidth = 600;
        this.PaperKind = System.Drawing.Printing.PaperKind.Custom;
        this.Parameters.AddRange(new DevExpress.XtraReports.Parameters.Parameter[] {
            this.test});
        this.Version = "8.2";
        this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.XtraReport1_BeforePrint);
        ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

	}

	#endregion

    private void XtraReport1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e) {
        this.xrLabel1.Text += " -- " + this.Parameters["test"].Value.ToString();
    }
}
