<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.XtraReports.v13.2.Web, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dxxr" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dxpc" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
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
DocumentViewer.Refresh();
}" />
        </dxe:ASPxButton>
        &nbsp; &nbsp;
        <dxe:ASPxButton ID="ASPxButton2" runat="server"
            Text="Display second message" AutoPostBack="False">
            <ClientSideEvents Click="function(s, e) {
document.getElementById('ReportMsg').value = 'second message';
popup.ShowAtPos(200, 20);
DocumentViewer.GetViewer().Refresh();
}" />
        </dxe:ASPxButton>
        &nbsp; &nbsp;&nbsp;&nbsp;<br />
        <input id="ReportMsg" runat="server" type="hidden" />
        <dxpc:ASPxPopupControl ID="ASPxPopupControl1" runat="server" Height="196px" Width="650px" ClientInstanceName="popup" PopupHorizontalAlign="Center">
            <ContentCollection>
                <dxpc:PopupControlContentControl runat="server">
                    <dxxr:ASPxDocumentViewer ID="DocumentViewer1" runat="server" ClientInstanceName="DocumentViewer" ShowLoadingPanelImage="False" LoadingPanelText="">
                        <SettingsSplitter RightPaneVisible="False" />
                    </dxxr:ASPxDocumentViewer>
                </dxpc:PopupControlContentControl>
            </ContentCollection>
        </dxpc:ASPxPopupControl></div>
        
    </form>
</body>
</html>
