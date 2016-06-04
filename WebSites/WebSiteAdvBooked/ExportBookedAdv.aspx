<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdvBooked.master" AutoEventWireup="true" CodeFile="ExportBookedAdv.aspx.cs" Inherits="ExportBookedAdv" %>




<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .graystyle {
       color:gray;
       }

        #Submit1
        {
            width: 93px;
            height: 34px;
        }
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="color: #000000"><strong>&nbsp;<span class="auto-style1">FILTER - EXPORT:</span></strong></h3>
    <p>
        <asp:TextBox ID="TextBoxFilteringAdvExp" runat="server" Height="24px" Width="223px"></asp:TextBox>
        <asp:TextBoxWatermarkExtender ID="TextBoxFilteringAdvExp_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBoxFilteringAdvExp" WatermarkText="Paste Advertisement Name" WatermarkCssClass="graystyle">
        </asp:TextBoxWatermarkExtender>
&nbsp;<input id="Submit1" type="submit" value="SEARCH" />
        </p>
    <p>
        <asp:GridView ID="GridViewHistoryOffPeakhour" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAdvHistoryOffPeak" Width="1365px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:TemplateField HeaderText="OFF PEAK HOUR">
                    <HeaderStyle BackColor="#FFFF66" Width="160px" />
                    <ItemStyle BackColor="#FFFF66" />
                </asp:TemplateField>
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time">
                <HeaderStyle BackColor="#FFFF66" />
                </asp:BoundField>
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time">
                <HeaderStyle BackColor="#FFFF66" />
                </asp:BoundField>
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" Visible="False"></asp:BoundField>
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram">
                <HeaderStyle BackColor="#FFFF66" />
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01">
                <HeaderStyle BackColor="#FFFF66" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02">
                <HeaderStyle BackColor="#FFFF66" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03">
                <HeaderStyle BackColor="#FFFF66" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program">
                <HeaderStyle BackColor="#FFFF66" />
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration">
                <HeaderStyle BackColor="#FFFF66" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridViewHistoryPeak" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAdvHistoryPeak" Width="1365px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:TemplateField HeaderText="PEAK  HOUR">
                    <HeaderStyle BackColor="#00CC00" Width="160px" />
                    <ItemStyle BackColor="#00CC00" />
                </asp:TemplateField>
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time">
                <HeaderStyle BackColor="#00CC00" />
                </asp:BoundField>
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time">
                <HeaderStyle BackColor="#00CC00" />
                </asp:BoundField>
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" Visible="False" />
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram">
                <HeaderStyle BackColor="#00CC00" />
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01">
                <HeaderStyle BackColor="#00CC00" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02">
                <HeaderStyle BackColor="#00CC00" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03">
                <HeaderStyle BackColor="#00CC00" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program">
                <HeaderStyle BackColor="#00CC00" />
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration">
                <HeaderStyle BackColor="#00CC00" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridViewAdvHistorySuperOffPeak"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAdvHistorySuperOffPeak" Width="1365px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:TemplateField HeaderText="SUPER OFF PEAK">
                    <HeaderStyle BackColor="Red" Width="160px" />
                    <ItemStyle BackColor="Red" />
                </asp:TemplateField>
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" Visible="False" />
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram">
                <HeaderStyle BackColor="Red" />
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01">
                <HeaderStyle BackColor="Red" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02">
                <HeaderStyle BackColor="Red" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03">
                <HeaderStyle BackColor="Red" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program">
                <HeaderStyle BackColor="Red" />
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
            </Columns>
            
        </asp:GridView>
    </p>
        <asp:ComboBox ID="ComboBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Status" DataValueField="Status" DropDownStyle="Simple" MaxLength="0" style="display: inline;" Width="200px">
        </asp:ComboBox>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceAdvStatus" style="text-align: center" Width="511px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
               
                 <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" SortExpression="Company_Name"  Visible="false"/>
                <asp:TemplateField HeaderText="Advertisement_Name" Visible="True">
                 <ItemTemplate>
                     <asp:Label ID="Adv_Name" runat="server" Text='<%# Eval("Company_Name") %>'></asp:Label>
                 </ItemTemplate>
                    <HeaderStyle BackColor="#CCCCFF" />
            </asp:TemplateField>

                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" >
                <HeaderStyle BackColor="#CCCCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Spot_Off_Peak" HeaderText="Spot_Off_Peak" SortExpression="Spot_Off_Peak" />
                <asp:BoundField DataField="Spot_Peak" HeaderText="Spot_Peak" SortExpression="Spot_Peak" />
                <asp:BoundField DataField="Spot_Super_Off_Peak" HeaderText="Spot_Super_Off_Peak" SortExpression="Spot_Super_Off_Peak" />
                <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" Visible="False" />
                <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" Visible="False" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" Visible="False" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" Visible="False" />
                
                 </Columns>
        </asp:GridView>
    </p>
    <p>
        <strong style="color: #000000">EXPORT By Click -&gt;</strong>
        <asp:ImageButton ID="ButtonPrint" runat="server" BackColor="White" BorderStyle="None" Height="57px" ImageUrl="~/vozmozhnosti-programmirovaniya-v-excel.png" onclick="ButtonPrint_Click" Width="77px" />
    </p>
    <p>

        <asp:SqlDataSource ID="SqlDataSourceAdvStatus" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TableDashBoard] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ComboBox1" Name="Status" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Status] FROM [Status]"></asp:SqlDataSource>

    </p>
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceAdvHistoryOffPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TableAdvOffPeak] WHERE ([Adv_Name] = @Adv_Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxFilteringAdvExp" Name="Adv_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceAdvHistoryPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table_AdvPeak] WHERE ([Adv_Name] = @Adv_Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxFilteringAdvExp" Name="Adv_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceAdvHistorySuperOffPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TableAdvSuperOffPeak] WHERE ([Adv_Name] = @Adv_Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxFilteringAdvExp" Name="Adv_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

