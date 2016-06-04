<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdvBooked.master" AutoEventWireup="true" CodeFile="AdvBookedPage.aspx.cs" Inherits="AdvBookedPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            width: 69%;
            background-color: #003399;
        }
        .style41
        {
            width: 349px;
        }
        .style27
        {
            color: #FFFFFF;
        }
        .style44
        {
            width: 185px;
        }
        .style13
        {
            width: 189px;
        }
        .style14
        {
            width: 191px;
        }
        .style15
        {
            width: 190px;
        }
        .style16
        {
            width: 121px;
        }
        .style17
        {
            width: 79px;
        }
        .style50
        {
            width: 238px;
        }
        .style43
        {
            width: 181px;
        }
        .style35
        {
            width: 92px;
        }
        .style51
        {
            width: 312px;
        }
        .style32
        {
            width: 193px;
        }
        .style33
        {
            width: 97px;
        }
        #Reset1 {
            height: 36px;
            width: 91px;
        }
        .auto-style2 {
            width: 102px;
        }
        .auto-style4 {
            width: 819px;
        }
        .auto-style6 {
            width: 178px;
        }
        .auto-style7 {
            width: 725px;
        }
        .auto-style8 {
            width: 731px;
        }
        .auto-style9 {
        text-decoration: underline;
            color: #003300;
        }
        .auto-style10 {
            background-color: #DBDBDB;
        }
        .auto-style11 {
            color: #003300;
        }
        .auto-style12 {
            color: #FF0000;
        }
        .auto-style13 {
            color: #800000;
        }
        .auto-style15 {
            background-color: #FFFF66;
        }
        .auto-style17 {
            background-color: #FFCCCC;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="94px" style="background-color: #666699" Width="1314px">
        <h1 class="auto-style4">&nbsp; TBN24&nbsp; ADVERTISEMENT&nbsp; ALLOCATION</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLinkFilterAdv" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#66FFFF" NavigateUrl="~/ExportBookedAdv.aspx" Target="_blank">FILTER-EXPORT</asp:HyperLink>
        &nbsp; <asp:HyperLink ID="HyperLinkRmvEditAdv" runat="server" BorderColor="#CCCCCC" Font-Bold="True" Font-Underline="True" ForeColor="#66FFFF" NavigateUrl="~/LogIn.aspx" Target="_blank">   DASHBOARD      </asp:HyperLink>
</asp:Panel>
<p class="auto-style10">
        <span class="auto-style11">&nbsp;&nbsp;&nbsp; </span>
        <span class="auto-style9"> <strong>SPOT ADVERTISEMENT</strong></span><br />
        <table class="style7" frame="above">
            <tr>
                <td class="auto-style4"><span class="style27"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Start Time:- </strong></span><asp:DropDownList ID="DropDownListOffPeak" runat="server" DataSourceID="SqlDataSource3" DataTextField="Start_Time" DataValueField="Start_Time" Height="20px" Width="98px" AutoPostBack="True">
                    </asp:DropDownList>
                    </td>
                <td class="auto-style6">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Start_Time] FROM [TableAdvOffPeak] ORDER BY [Start_Time] DESC"></asp:SqlDataSource>
                </td>
                <td class="style13">&nbsp;</td>
                <td class="style13">&nbsp;</td>
                <td class="style14">&nbsp;</td>
                <td class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/Refresh-icon.png" OnClick="ImageButton1_Click" Width="31px" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridViewAdvOffPeak" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAdvOffpeak" Width="1314px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:TemplateField HeaderText="OFF PEAK HOUR">
                    <HeaderStyle BackColor="#FFFF66" Width="160px" />
                    <ItemStyle BackColor="#FFFF66" />
                </asp:TemplateField>
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time" />
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time" />
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" Visible="False" />
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram">
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program">
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            </Columns>
        </asp:GridView>
    </p>
    <p style="width: 1313px; height: 2px; " class="auto-style10">
        &nbsp;</p>
    <p style="background-color: #DBDBDB">
        <table class="style7" frame="above">
            <tr>
                <td class="auto-style7"><span class="style27"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Start Time:- </strong></span><asp:DropDownList ID="DropDownListPeak" runat="server" DataSourceID="SqlDataSource2" DataTextField="Start_Time" DataValueField="Start_Time" Height="20px" Width="96px" AutoPostBack="True">
                    </asp:DropDownList>
                    </td>
                <td class="style43">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Start_Time] FROM [Table_AdvPeak]" ></asp:SqlDataSource>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="style13">&nbsp;</td>
                <td class="style14">&nbsp;</td>
                <td class="style16">&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridViewAdvPeakhour" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAdvPeak" Width="1314px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:TemplateField HeaderText="PEAK HOUR">
                    <HeaderStyle BackColor="#33CC33" Width="160px" />
                    <ItemStyle BackColor="#33CC33" />
                </asp:TemplateField>
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time" />
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time" />
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" Visible="False" />
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram">
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program">
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            </Columns>
        </asp:GridView>
    </p>
    <p style="height: 2px; width: 1325px; background-color: #DBDBDB">
        &nbsp;</p>
    <p style="background-color: #DBDBDB">
        <table class="style7" frame="above">
            <tr>
                <td class="auto-style8"><span class="style27"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Start Time:- </strong></span>
                    <asp:DropDownList ID="DropDownListSuperOffPeak" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Start_Time" DataValueField="Start_Time" Height="20px" Width="96px">
                    </asp:DropDownList>
                    </td>
                <td class="style32">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Start_Time] FROM [TableAdvSuperOffPeak] ORDER BY [Start_Time]"></asp:SqlDataSource>
                </td>
                <td class="style33">&nbsp;</td>
                <td class="style13">&nbsp;</td>
                <td class="style14">&nbsp;</td>
                <td class="style16">&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridviewAdvSprOffPeak" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAdvSuperOffPeak" Width="1314px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:TemplateField HeaderText="SUPER OFF PEAK">
                    <HeaderStyle BackColor="Red" Width="160px" />
                    <ItemStyle BackColor="Red" />
                </asp:TemplateField>
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time" />
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time" />
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" Visible="False" />
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram">
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03">
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program">
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceAdvOffpeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TableAdvOffPeak] WHERE ([Start_Time] = @Start_Time) ORDER BY [Start_Time]">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListOffPeak" Name="Start_Time" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceAdvPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table_AdvPeak] WHERE ([Start_Time] = @Start_Time)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListPeak" Name="Start_Time" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceAdvSuperOffPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TableAdvSuperOffPeak] WHERE ([Start_Time] = @Start_Time) ORDER BY [Start_Time]">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListSuperOffPeak" Name="Start_Time" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TableDashBoard]" DeleteCommand="DELETE FROM [TableDashBoard] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableDashBoard] ([Company_Name], [Duration], [Spot_Off_Peak], [Spot_Peak], [Spot_Super_Off_Peak], [Start_Date], [End_Date], [Amount], [Status]) VALUES (@Company_Name, @Duration, @Spot_Off_Peak, @Spot_Peak, @Spot_Super_Off_Peak, @Start_Date, @End_Date, @Amount, @Status)" UpdateCommand="UPDATE [TableDashBoard] SET [Company_Name] = @Company_Name, [Duration] = @Duration, [Spot_Off_Peak] = @Spot_Off_Peak, [Spot_Peak] = @Spot_Peak, [Spot_Super_Off_Peak] = @Spot_Super_Off_Peak, [Start_Date] = @Start_Date, [End_Date] = @End_Date, [Amount] = @Amount, [Status] = @Status WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Company_Name" Type="String" />
            <asp:Parameter Name="Duration" Type="String" />
            <asp:Parameter Name="Spot_Off_Peak" Type="String" />
            <asp:Parameter Name="Spot_Peak" Type="String" />
            <asp:Parameter Name="Spot_Super_Off_Peak" Type="String" />
            <asp:Parameter Name="Start_Date" Type="String" />
            <asp:Parameter DbType="Date" Name="End_Date" />
            <asp:Parameter Name="Amount" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Company_Name" Type="String" />
            <asp:Parameter Name="Duration" Type="String" />
            <asp:Parameter Name="Spot_Off_Peak" Type="String" />
            <asp:Parameter Name="Spot_Peak" Type="String" />
            <asp:Parameter Name="Spot_Super_Off_Peak" Type="String" />
            <asp:Parameter Name="Start_Date" Type="String" />
            <asp:Parameter DbType="Date" Name="End_Date" />
            <asp:Parameter Name="Amount" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <span class="auto-style12"><strong>EXPIRED DATE VIEW: </strong></span>
    <span class="auto-style13"><span class="auto-style17">&nbsp;2days </span>&nbsp;&gt; <span class="auto-style15">&nbsp;5days </span>&nbsp;</span><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4" OnRowDataBound="GridView1_RowDataBound" style="text-align: center" Width="1314px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" SortExpression="Company_Name" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:BoundField DataField="Spot_Off_Peak" HeaderText="Spot_Off_Peak" SortExpression="Spot_Off_Peak" Visible="False" />
            <asp:BoundField DataField="Spot_Peak" HeaderText="Spot_Peak" SortExpression="Spot_Peak" Visible="False" />
            <asp:BoundField DataField="Spot_Super_Off_Peak" HeaderText="Spot_Super_Off_Peak" SortExpression="Spot_Super_Off_Peak" Visible="False" />
            <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
            <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" Visible="False" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" Visible="False" />
        </Columns>
    </asp:GridView>
    <br />
</asp:Content>

