' Developer Express Code Central Example:
' How to update a document displayed by the ASPxDocumentViewer within the ASPxPopupControl
' 
' This example illustrates how to update a web report's content on the fly by
' placing the ASPxDocumentViewer
' (http://documentation.devexpress.com/#XtraReports/CustomDocument5193) within the
' ASPxPopupControl
' (http://documentation.devexpress.com/#AspNet/CustomDocument8289) and calling the
' ASPxClientDocumentViewer.Refresh method.
' An additional hidden field is provided
' on the web page to pass parameter values to a report before its document is set
' forth and published using the ASPxDocumentViewer.
' 
' You can find sample updates and versions for different programming languages here:
' http://www.devexpress.com/example=E914


Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxPopupControl
Imports DevExpress.Web.ASPxCallbackPanel
Imports DevExpress.XtraReports.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		Dim test As String = String.Empty
		Dim hf As HtmlInputHidden = CType(Me.Page.FindControl("ReportMsg"), HtmlInputHidden)
		Dim report As New XtraReport1()
		report.Parameters("test").Value = hf.Value.ToString()
		report.CreateDocument()
		Me.DocumentViewer1.Report = report
		Me.DocumentViewer1.DataBind()
	End Sub
End Class
