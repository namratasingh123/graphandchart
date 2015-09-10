<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="graphandchart.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Chart ID="Chart1" runat="server" BackColor="MistyRose" BackGradientStyle="LeftRight" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series ChartType="Doughnut" Name="Series1" XValueMember="Name" YValueMembers="SrNo" YValuesPerPoint="2">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pikachuConnectionString %>" SelectCommand="SELECT * FROM [CityName]"></asp:SqlDataSource>
    </form>
</body>
</html>
