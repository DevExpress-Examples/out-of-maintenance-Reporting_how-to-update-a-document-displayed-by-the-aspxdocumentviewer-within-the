<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.XtraReports.v8.2.Web, Version=8.2.6.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.XtraReports.Web" TagPrefix="dxxr" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.6.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v8.2, Version=8.2.6.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dxpc" %>
<%@ Register Assembly="DevExpress.Web.v8.2, Version=8.2.6.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.v8.2, Version=8.2.6.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxe:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Display first message">
			<ClientSideEvents Click="function(s, e) {
document.getElementById('ReportMsg').value = 'first message';
popup.ShowAtPos(200,20);
viewer.Refresh();
}" />
		</dxe:ASPxButton>
		&nbsp; &nbsp;
		<dxe:ASPxButton ID="ASPxButton2" runat="server"
			Text="Display second message" AutoPostBack="False">
			<ClientSideEvents Click="function(s, e) {
document.getElementById('ReportMsg').value = 'second message';
popup.ShowAtPos(200, 20);
viewer.Refresh();
}" />
		</dxe:ASPxButton>
		&nbsp; &nbsp;&nbsp;&nbsp;<br />
		<input id="ReportMsg" runat="server" type="hidden" />
		<dxpc:ASPxPopupControl ID="ASPxPopupControl1" runat="server" Height="196px" Width="331px" ClientInstanceName="popup" PopupHorizontalAlign="Center">
			<ContentCollection>
				<dxpc:PopupControlContentControl runat="server">
					<dxxr:ReportToolbar ID="ReportToolbar1" runat="server" ShowDefaultButtons="False" ReportViewer="<%#ReportViewer1%>">
						<Items>
							<dxxr:ReportToolbarButton ItemKind="Search" ToolTip="Display the search window" />
							<dxxr:ReportToolbarSeparator />
							<dxxr:ReportToolbarButton ItemKind="PrintReport" ToolTip="Print the report" />
							<dxxr:ReportToolbarButton ItemKind="PrintPage" ToolTip="Print the current page" />
							<dxxr:ReportToolbarSeparator />
							<dxxr:ReportToolbarButton Enabled="False" ItemKind="FirstPage" ToolTip="First Page" />
							<dxxr:ReportToolbarButton Enabled="False" ItemKind="PreviousPage" ToolTip="Previous Page" />
							<dxxr:ReportToolbarLabel Text="Page" />
							<dxxr:ReportToolbarComboBox ItemKind="PageNumber" Width="65px">
							</dxxr:ReportToolbarComboBox>
							<dxxr:ReportToolbarLabel Text="of" />
							<dxxr:ReportToolbarTextBox IsReadOnly="True" ItemKind="PageCount" />
							<dxxr:ReportToolbarButton ItemKind="NextPage" ToolTip="Next Page" />
							<dxxr:ReportToolbarButton ItemKind="LastPage" ToolTip="Last Page" />
							<dxxr:ReportToolbarSeparator />
							<dxxr:ReportToolbarButton ItemKind="SaveToDisk" ToolTip="Export a report and save it to the disk" />
							<dxxr:ReportToolbarButton ItemKind="SaveToWindow" ToolTip="Export a report and show it in a new window" />
							<dxxr:ReportToolbarComboBox ItemKind="SaveFormat" Width="70px">
								<Elements>
									<dxxr:ListElement Text="Pdf" Value="pdf" />
									<dxxr:ListElement Text="Xls" Value="xls" />
									<dxxr:ListElement Text="Rtf" Value="rtf" />
									<dxxr:ListElement Text="Mht" Value="mht" />
									<dxxr:ListElement Text="Text" Value="txt" />
									<dxxr:ListElement Text="Csv" Value="csv" />
									<dxxr:ListElement Text="Image" Value="png" />
								</Elements>
							</dxxr:ReportToolbarComboBox>
						</Items>
						<Styles>
							<LabelStyle>
								<Margins MarginLeft="3px" MarginRight="3px" />
							</LabelStyle>
						</Styles>
					</dxxr:ReportToolbar>
					<dxxr:ReportViewer ID="ReportViewer1" runat="server" ClientInstanceName="viewer" ShowLoadingPanelImage="False" LoadingPanelText="">
					</dxxr:ReportViewer>
				</dxpc:PopupControlContentControl>
			</ContentCollection>
		</dxpc:ASPxPopupControl></div>

	</form>
</body>
</html>
