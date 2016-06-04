<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashBoardForm.aspx.cs" Inherits="DashBoardForm" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<script type="text/javascript">
    function Search_Gridview(strKey, strGV) {
        var strData = strKey.value.toLowerCase().split(" ");
        var tblData = document.getElementById(strGV);
        var rowData;
        for (var i = 1; i < tblData.rows.length; i++) {
            rowData = tblData.rows[i].innerHTML;
            var styleDisplay = 'none';
            for (var j = 0; j < strData.length; j++) {
                if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                    styleDisplay = '';
                else {
                    styleDisplay = 'none';
                    break;
                }
            }
            tblData.rows[i].style.display = styleDisplay;

        }

    }
</script>






<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


       .graystyle {
       color:gray;
       }

        
        .buttonFP {
   border-top: 1px solid #d8f216;
   background: #b9eddc;
   background: -webkit-gradient(linear, left top, left bottom, from(#a8e3cd), to(#b9eddc));
   background: -webkit-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -moz-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -ms-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -o-linear-gradient(top, #a8e3cd, #b9eddc);
   padding: 4px 8px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: #000000;
   font-size: 14px;
   font-family: 'Lucida Grande', Helvetica, Arial, Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   }
        .buttonFP:hover {
   border-top-color: #deed13;
   background: #deed13;
   color: #120303;
   }
.buttonFP:active {
   border-top-color: #608aa6;
   background: #e9c908;
   }



 .buttonP {
   border-top: 1px solid #43c941;
   background: #b9eddc;
   background: -webkit-gradient(linear, left top, left bottom, from(#a8e3cd), to(#b9eddc));
   background: -webkit-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -moz-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -ms-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -o-linear-gradient(top, #a8e3cd, #b9eddc);
   padding: 4px 8px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: #000000;
   font-size: 14px;
   font-family: 'Lucida Grande', Helvetica, Arial, Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   }
.buttonP:hover {
   border-top-color: #0ee647;
   background: #0ee647;
   color: #120303;
   }
.buttonP:active {
   border-top-color: #4800ff;
   background: #12925a;
   }




.buttonSOP {
   border-top: 1px solid #f01818;
   background: #b9eddc;
   background: -webkit-gradient(linear, left top, left bottom, from(#a8e3cd), to(#b9eddc));
   background: -webkit-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -moz-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -ms-linear-gradient(top, #a8e3cd, #b9eddc);
   background: -o-linear-gradient(top, #a8e3cd, #b9eddc);
   padding: 4px 8px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: #000000;
   font-size: 14px;
   font-family: 'Lucida Grande', Helvetica, Arial, Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   }
.buttonSOP:hover {
   border-top-color: #f02d2d;
   background: #f02d2d;
   color: #120303;
   }
.buttonSOP:active {
   border-top-color: #608aa6;
   background: #ad0707;
   }

        .auto-style1 {
            color: #0000FF;
        }
        .auto-style2 {
            text-decoration: underline;
            color: #0000FF;
            font-size: large;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style4 {
            color: #E5E5E5;
            width: 1343px;
        }
    </style>


    

</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <asp:Panel ID="Panel3" runat="server" Height="95px" style="background-color: #666699" Width="1492px">
            <asp:Panel ID="Panel4" runat="server">
                <h1 class="auto-style4">&nbsp; TBN24&nbsp; ADVERTISEMENT&nbsp; ALLOCATION</h1>
            </asp:Panel>
            &nbsp;<br /> &nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" style="font-weight: 700; color: #CCCCCC; text-decoration: underline" NavigateUrl="~/AdvBookedPage.aspx" Target="_blank">SPOT-ADVERTISEMENT</asp:HyperLink>
            &nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" style="color: #CCCCCC; font-weight: 700; text-decoration: underline" NavigateUrl="~/ExportBookedAdv.aspx" Target="_blank">FILTER-EXPORT</asp:HyperLink>
        </asp:Panel>
        <br />
&nbsp;<strong>&nbsp;&nbsp; <span class="auto-style3">DASHBOARD-PAGE</span></strong><br />
       
        <asp:TextBox ID="TextBox1" runat="server" Width="280px" onkeyup="Search_Gridview(this, 'GridViewDashBrdForm')" BorderStyle="Double" Height="26px"></asp:TextBox>
       
        <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkCssClass="graystyle" WatermarkText="Company Name/Status/Amount/Duration/Year">
        </asp:TextBoxWatermarkExtender>
        &nbsp; 
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false">Numbers-of-Running</asp:LinkButton>
&nbsp;<asp:Label ID="LabelStatus" runat="server">....</asp:Label>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButtonPagging" runat="server" OnClick="LinkButtonPagging_Click">Rmove_Paging</asp:LinkButton>
        &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButtonAllwPaging" runat="server" OnClick="LinkButtonAllwPaging_Click">Allow_Paging</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButtonRefshDashBoard" runat="server" Height="35px" ImageUrl="~/Refresh-icon.png" OnClick="ImageButtonRefshDashBoard_Click" CausesValidation="false" Width="38px" />
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        &nbsp;
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label_Welcome" runat="server" style="color: #669999" Text="Label"></asp:Label>
        <strong>|</strong>
        <asp:LinkButton ID="LinkButtonLogOut" runat="server" OnClick="LinkButtonLogOut_Click">Sign.Out</asp:LinkButton>
       
        <br />
        <asp:GridView ID="GridViewDashBrdForm" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceDashBoard" style="text-align: center" Width="1490px" OnRowDataBound="OnRowDataBound" AllowPaging="True">
            <Columns>
                
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" SortExpression="Company_Name">
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" >
                </asp:BoundField>
                <asp:BoundField DataField="Spot_Off_Peak" HeaderText="Spot_Off_Peak" SortExpression="Spot_Off_Peak" > <HeaderStyle BackColor="#FFFF66" />
                <ItemStyle BackColor="#FFFF66" /> </asp:BoundField>
                <asp:BoundField DataField="Spot_Peak" HeaderText="Spot_Peak" SortExpression="Spot_Peak" > <HeaderStyle BackColor="#00CC00" />
                <ItemStyle BackColor="Lime" /> </asp:BoundField>
                <asp:BoundField DataField="Spot_Super_Off_Peak" HeaderText="Spot_Super_Off_Peak" SortExpression="Spot_Super_Off_Peak" > <HeaderStyle BackColor="Red" />
                <ItemStyle BackColor="#FF5050" /> </asp:BoundField>
                <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
                <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:LinkButton ID="LinkButtonDashBoard" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButtonDashBoard_Click" CausesValidation="false">INSERT POINT</asp:LinkButton>
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Inset" Height="263px" style="font-weight: 700" Width="820px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="ButtonClse" runat="server" Font-Bold="True" Height="22px" Text="X" OnClick="ButtonClse_Click" CausesValidation="False"/>
            <br />
            <asp:TextBox ID="TextBoxCmpName" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCmpNm" runat="server" ControlToValidate="TextBoxCmpName" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <asp:TextBoxWatermarkExtender ID="TextBoxCmpName_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBoxCmpName" WatermarkCssClass="graystyle" WatermarkText="Company Name">
            </asp:TextBoxWatermarkExtender>
            <br />
            <asp:TextBox ID="TextBoxDrtion" runat="server" Width="200px" MaxLength="8"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDrtion" runat="server" ControlToValidate="TextBoxDrtion" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <asp:TextBoxWatermarkExtender ID="TextBoxDrtion_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBoxDrtion" WatermarkCssClass="graystyle" WatermarkText="Duration">
            </asp:TextBoxWatermarkExtender>
            &nbsp;
            <asp:Button ID="ButtonArngeOffpk" runat="server" CssClass="buttonFP" Height="25px" OnClick="ButtonArngeOffpk_Click" Text="Arrange Off-Peak" Width="180px" />
            &nbsp;&nbsp;<asp:Button ID="ButtonArngePk" runat="server" CssClass="buttonP" Height="25px" OnClick="ButtonArngePk_Click" Text="Arrange Peak-Hour" Width="180px" />
            &nbsp;
            <asp:Button ID="ButtonArngeSpk" runat="server" CssClass="buttonSOP" Height="25px" OnClick="ButtonArngeSpk_Click" Text="Arrange Super-Off-Peak" Width="180px" />
            <br />
            <asp:DropDownList ID="DropDownListSptOffp" runat="server" Width="200px">
                <asp:ListItem Text="Spot on OFF-PEAK" Value="" />
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:DropDownList ID="DropDownListSptP" runat="server" Width="200px">
                <asp:ListItem Text="Spot on PEAK Hour" Value="" />
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:DropDownList ID="DropDownListSptSuperOffP" runat="server" Width="200px">
                <asp:ListItem Text="Spot on SUPER-OFF-PEAK" Value="" />
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="TextBoxStrtsDate" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="TextBoxStrtsDate_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBoxStrtsDate" WatermarkCssClass="graystyle" WatermarkText="Start Date">
            </asp:TextBoxWatermarkExtender>
            <br />
            <asp:TextBox ID="TextBoxEndsDate" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="TextBoxEndsDate_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBoxEndsDate" WatermarkCssClass="graystyle" WatermarkText="End Date">
            </asp:TextBoxWatermarkExtender>
            &nbsp;<asp:Label ID="Label_EndDate" runat="server" ForeColor="#FF5050" Text="Need End Date"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxAmmnt" runat="server" Width="200px"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="TextBoxAmmnt_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBoxAmmnt" WatermarkCssClass="graystyle" WatermarkText="Amount">
            </asp:TextBoxWatermarkExtender>
            <br />
            <asp:DropDownList ID="DropDownListStats" runat="server" Width="200px">
                <asp:ListItem Text="Select Status" Value="" />
                <asp:ListItem>Running</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="ButtonDashBrdAdd" runat="server" Height="30px" Text="DashBoard" OnClick="ButtonDashBrdAdd_Click" Width="100px" />
            <asp:Button ID="ButtonRset" runat="server" Height="30px" Text="Reset" Width="96px" OnClick="ButtonRset_Click" CausesValidation="False"/>
        </asp:Panel>
        <br />
        <p style="background-color: #CCCCCC; width: 1490px;">&nbsp;</p>
            <strong>
        <span class="auto-style2">ARRANGE POINT
        
        <br />
        <br />
        <asp:DropDownList ID="DropDownListArrngeoffpk" runat="server" DataSourceID="SqlDataSourceDropdwnArrngOffPeak" DataTextField="Adv_Name" DataValueField="Adv_Name" AutoPostBack="True">
        </asp:DropDownList>
        </span>
        </strong>
        <span class="auto-style1">
        <asp:GridView ID="GridViewArrngeOffpeak" runat="server" AutoGenerateColumns="False" DataKeyNames="No" DataSourceID="SqlDataSourceGrdArrngOffPeak" style="text-align: center" Width="1490px">
            <Columns>
                
                <asp:TemplateField HeaderText="OFF PEAK">
                    <HeaderStyle BackColor="Yellow" width="100"/>
                    <ItemStyle BackColor="#FFFF66" />
                </asp:TemplateField>
                
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time" />
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time" />
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" />
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram" >
                <HeaderStyle BackColor="#33CCFF" />
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program" >
                <HeaderStyle BackColor="Orange" />
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:CommandField ShowEditButton="True" HeaderText="EDIT"/>

                <asp:TemplateField HeaderText="No" Visible="False">
                 <ItemTemplate>
              <asp:Label ID="No" runat="server" Text='<%# Eval("No") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Start_Time" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Start_Time" runat="server" Text='<%# Eval("Start_Time") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

          <asp:TemplateField HeaderText="End_time" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="End_time" runat="server" Text='<%# Eval("End_time") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Adv_Name" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Adv_Name" runat="server" Text='<%# Eval("Adv_Name") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>


                <asp:TemplateField HeaderText="Before_Prorgram" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Before_Prorgram" runat="server" Text='<%# Eval("Before_Prorgram") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="#33CCFF" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program01" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program01" runat="server" Text='<%# Eval("Mid_Break_Program01") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program02" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program02" runat="server" Text='<%# Eval("Mid_Break_Program02") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program03" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program03" runat="server" Text='<%# Eval("Mid_Break_Program03") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="After_Program" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="After_Program" runat="server" Text='<%# Eval("After_Program") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Orange" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Duration" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Duration" runat="server" Text='<%# Eval("Duration") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Selected">
                 <ItemTemplate>
                     <asp:CheckBox ID="Checkdelete" Checked="true" runat="server"></asp:CheckBox>
                 </ItemTemplate>
            </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="ButtonDlteArrngeGrdOffpk" runat="server" Text="Delete" OnClick="ButtonDlteArrngeGrdOffpk_Click" />
        <br />
        </span>
        <asp:DropDownList ID="DropDownListArrngePk" runat="server" DataSourceID="SqlDataSourceDrpdwnArrangePeak" DataTextField="Adv_Name" DataValueField="Adv_Name" AutoPostBack="True">
        </asp:DropDownList>
        <asp:GridView ID="GridViewArrangePke" runat="server" AutoGenerateColumns="False" DataKeyNames="No" DataSourceID="SqlDataSourceGrdArrangPeak" style="text-align: center" Width="1490px">
            <Columns>
                
                <asp:TemplateField HeaderText="PEAK HOUR">
                    <HeaderStyle BackColor="#00CC00" Width="100" />
                    <ItemStyle BackColor="#33CC33" />
                </asp:TemplateField>
                
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time" />
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time" />
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" />
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram" >
                <HeaderStyle BackColor="#33CCFF" />
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program" >
                <HeaderStyle BackColor="Orange" />
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:CommandField ShowEditButton="True" HeaderText="EDIT"/>

                <asp:TemplateField HeaderText="No" Visible="False">
                 <ItemTemplate>
              <asp:Label ID="No" runat="server" Text='<%# Eval("No") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Start_Time" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Start_Time" runat="server" Text='<%# Eval("Start_Time") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

          <asp:TemplateField HeaderText="End_time" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="End_time" runat="server" Text='<%# Eval("End_time") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Adv_Name" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Adv_Name" runat="server" Text='<%# Eval("Adv_Name") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>


                <asp:TemplateField HeaderText="Before_Prorgram" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Before_Prorgram" runat="server" Text='<%# Eval("Before_Prorgram") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="#33CCFF" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program01" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program01" runat="server" Text='<%# Eval("Mid_Break_Program01") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program02" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program02" runat="server" Text='<%# Eval("Mid_Break_Program02") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program03" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program03" runat="server" Text='<%# Eval("Mid_Break_Program03") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="After_Program" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="After_Program" runat="server" Text='<%# Eval("After_Program") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Orange" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Duration" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Duration" runat="server" Text='<%# Eval("Duration") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Selected">
                 <ItemTemplate>
                     <asp:CheckBox ID="Checkdelete" Checked="true" runat="server"></asp:CheckBox>
                 </ItemTemplate>
            </asp:TemplateField>

            </Columns>
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonDelteArrngeGrdpk" runat="server" Text="Delete" OnClick="ButtonDelteArrngeGrdpk_Click" />
        <br />
        <asp:DropDownList ID="DropDownListArrngeSoffpk" runat="server" DataSourceID="SqlDataSourceDropdwnArrngeSuprOffPeak" DataTextField="Adv_Name" DataValueField="Adv_Name" AutoPostBack="True">
        </asp:DropDownList>
        <asp:GridView ID="GridViewArrangSoffPeak" runat="server" AutoGenerateColumns="False" DataKeyNames="No" DataSourceID="SqlDataSourceGrdArrangSprOffPk" style="text-align: center" Width="1490px">
            <Columns>
                
                <asp:TemplateField HeaderText="SUPER OFF PEAK">
                    <HeaderStyle BackColor="Red" width="100"/>
                    <ItemStyle BackColor="Red" />
                </asp:TemplateField>
                
                <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" Visible="False" />
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time" />
                <asp:BoundField DataField="End_time" HeaderText="End_time" SortExpression="End_time" />
                <asp:BoundField DataField="Adv_Name" HeaderText="Adv_Name" SortExpression="Adv_Name" />
                <asp:BoundField DataField="Before_Prorgram" HeaderText="Before_Prorgram" SortExpression="Before_Prorgram" >
                <HeaderStyle BackColor="#33CCFF" />
                <ItemStyle BackColor="#33CCFF" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program01" HeaderText="Mid_Break_Program01" SortExpression="Mid_Break_Program01" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program02" HeaderText="Mid_Break_Program02" SortExpression="Mid_Break_Program02" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="Mid_Break_Program03" HeaderText="Mid_Break_Program03" SortExpression="Mid_Break_Program03" >
                <HeaderStyle BackColor="Lime" />
                <ItemStyle BackColor="Lime" />
                </asp:BoundField>
                <asp:BoundField DataField="After_Program" HeaderText="After_Program" SortExpression="After_Program" >
                <HeaderStyle BackColor="Orange" />
                <ItemStyle BackColor="Orange" />
                </asp:BoundField>
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:CommandField ShowEditButton="True" HeaderText="EDIT"/>
                
                <asp:TemplateField HeaderText="No" Visible="False">
                 <ItemTemplate>
              <asp:Label ID="No" runat="server" Text='<%# Eval("No") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Start_Time" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Start_Time" runat="server" Text='<%# Eval("Start_Time") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

          <asp:TemplateField HeaderText="End_time" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="End_time" runat="server" Text='<%# Eval("End_time") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Adv_Name" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Adv_Name" runat="server" Text='<%# Eval("Adv_Name") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>


                <asp:TemplateField HeaderText="Before_Prorgram" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Before_Prorgram" runat="server" Text='<%# Eval("Before_Prorgram") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="#33CCFF" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program01" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program01" runat="server" Text='<%# Eval("Mid_Break_Program01") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program02" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program02" runat="server" Text='<%# Eval("Mid_Break_Program02") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Mid_Break_Program03" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Mid_Break_Program03" runat="server" Text='<%# Eval("Mid_Break_Program03") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Lime" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="After_Program" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="After_Program" runat="server" Text='<%# Eval("After_Program") %>'></asp:Label>
                 </ItemTemplate>
                    <ItemStyle BackColor="Orange" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Duration" Visible="False">
                 <ItemTemplate>
                     <asp:Label ID="Duration" runat="server" Text='<%# Eval("Duration") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Selected">
                 <ItemTemplate>
                     <asp:CheckBox ID="Checkdelete" Checked="true" runat="server"></asp:CheckBox>
                 </ItemTemplate>
            </asp:TemplateField>

            </Columns>
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonDelteArrngeGrdSpk" runat="server" Text="Delete" OnClick="ButtonDelteArrngeGrdSpk_Click" />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceGrdArrngOffPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TableAdvOffPeak] WHERE [No] = @No" InsertCommand="INSERT INTO [TableAdvOffPeak] ([Start_Time], [End_time], [Adv_Name], [Before_Prorgram], [Mid_Break_Program01], [Mid_Break_Program02], [Mid_Break_Program03], [After_Program], [Duration]) VALUES (@Start_Time, @End_time, @Adv_Name, @Before_Prorgram, @Mid_Break_Program01, @Mid_Break_Program02, @Mid_Break_Program03, @After_Program, @Duration)" SelectCommand="SELECT * FROM [TableAdvOffPeak] WHERE ([Adv_Name] = @Adv_Name)" UpdateCommand="UPDATE [TableAdvOffPeak] SET [Start_Time] = @Start_Time, [End_time] = @End_time, [Adv_Name] = @Adv_Name, [Before_Prorgram] = @Before_Prorgram, [Mid_Break_Program01] = @Mid_Break_Program01, [Mid_Break_Program02] = @Mid_Break_Program02, [Mid_Break_Program03] = @Mid_Break_Program03, [After_Program] = @After_Program, [Duration] = @Duration WHERE [No] = @No">
            <DeleteParameters>
                <asp:Parameter Name="No" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Start_Time" Type="String" />
                <asp:Parameter Name="End_time" Type="String" />
                <asp:Parameter Name="Adv_Name" Type="String" />
                <asp:Parameter Name="Before_Prorgram" Type="String" />
                <asp:Parameter Name="Mid_Break_Program01" Type="String" />
                <asp:Parameter Name="Mid_Break_Program02" Type="String" />
                <asp:Parameter Name="Mid_Break_Program03" Type="String" />
                <asp:Parameter Name="After_Program" Type="String" />
                <asp:Parameter Name="Duration" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListArrngeoffpk" Name="Adv_Name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Start_Time" Type="String" />
                <asp:Parameter Name="End_time" Type="String" />
                <asp:Parameter Name="Adv_Name" Type="String" />
                <asp:Parameter Name="Before_Prorgram" Type="String" />
                <asp:Parameter Name="Mid_Break_Program01" Type="String" />
                <asp:Parameter Name="Mid_Break_Program02" Type="String" />
                <asp:Parameter Name="Mid_Break_Program03" Type="String" />
                <asp:Parameter Name="After_Program" Type="String" />
                <asp:Parameter Name="Duration" Type="String" />
                <asp:Parameter Name="No" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceGrdArrangPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table_AdvPeak] WHERE [No] = @No" InsertCommand="INSERT INTO [Table_AdvPeak] ([Start_Time], [End_time], [Adv_Name], [Before_Prorgram], [Mid_Break_Program01], [Mid_Break_Program02], [Mid_Break_Program03], [After_Program], [Duration]) VALUES (@Start_Time, @End_time, @Adv_Name, @Before_Prorgram, @Mid_Break_Program01, @Mid_Break_Program02, @Mid_Break_Program03, @After_Program, @Duration)" SelectCommand="SELECT * FROM [Table_AdvPeak] WHERE ([Adv_Name] = @Adv_Name)" UpdateCommand="UPDATE [Table_AdvPeak] SET [Start_Time] = @Start_Time, [End_time] = @End_time, [Adv_Name] = @Adv_Name, [Before_Prorgram] = @Before_Prorgram, [Mid_Break_Program01] = @Mid_Break_Program01, [Mid_Break_Program02] = @Mid_Break_Program02, [Mid_Break_Program03] = @Mid_Break_Program03, [After_Program] = @After_Program, [Duration] = @Duration WHERE [No] = @No">
            <DeleteParameters>
                <asp:Parameter Name="No" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Start_Time" Type="String" />
                <asp:Parameter Name="End_time" Type="String" />
                <asp:Parameter Name="Adv_Name" Type="String" />
                <asp:Parameter Name="Before_Prorgram" Type="String" />
                <asp:Parameter Name="Mid_Break_Program01" Type="String" />
                <asp:Parameter Name="Mid_Break_Program02" Type="String" />
                <asp:Parameter Name="Mid_Break_Program03" Type="String" />
                <asp:Parameter Name="After_Program" Type="String" />
                <asp:Parameter Name="Duration" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListArrngePk" Name="Adv_Name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Start_Time" Type="String" />
                <asp:Parameter Name="End_time" Type="String" />
                <asp:Parameter Name="Adv_Name" Type="String" />
                <asp:Parameter Name="Before_Prorgram" Type="String" />
                <asp:Parameter Name="Mid_Break_Program01" Type="String" />
                <asp:Parameter Name="Mid_Break_Program02" Type="String" />
                <asp:Parameter Name="Mid_Break_Program03" Type="String" />
                <asp:Parameter Name="After_Program" Type="String" />
                <asp:Parameter Name="Duration" Type="String" />
                <asp:Parameter Name="No" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceGrdArrangSprOffPk" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TableAdvSuperOffPeak] WHERE [No] = @No" InsertCommand="INSERT INTO [TableAdvSuperOffPeak] ([Start_Time], [End_time], [Adv_Name], [Before_Prorgram], [Mid_Break_Program01], [Mid_Break_Program02], [Mid_Break_Program03], [After_Program], [Duration]) VALUES (@Start_Time, @End_time, @Adv_Name, @Before_Prorgram, @Mid_Break_Program01, @Mid_Break_Program02, @Mid_Break_Program03, @After_Program, @Duration)" SelectCommand="SELECT * FROM [TableAdvSuperOffPeak] WHERE ([Adv_Name] = @Adv_Name)" UpdateCommand="UPDATE [TableAdvSuperOffPeak] SET [Start_Time] = @Start_Time, [End_time] = @End_time, [Adv_Name] = @Adv_Name, [Before_Prorgram] = @Before_Prorgram, [Mid_Break_Program01] = @Mid_Break_Program01, [Mid_Break_Program02] = @Mid_Break_Program02, [Mid_Break_Program03] = @Mid_Break_Program03, [After_Program] = @After_Program, [Duration] = @Duration WHERE [No] = @No">
            <DeleteParameters>
                <asp:Parameter Name="No" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Start_Time" Type="String" />
                <asp:Parameter Name="End_time" Type="String" />
                <asp:Parameter Name="Adv_Name" Type="String" />
                <asp:Parameter Name="Before_Prorgram" Type="String" />
                <asp:Parameter Name="Mid_Break_Program01" Type="String" />
                <asp:Parameter Name="Mid_Break_Program02" Type="String" />
                <asp:Parameter Name="Mid_Break_Program03" Type="String" />
                <asp:Parameter Name="After_Program" Type="String" />
                <asp:Parameter Name="Duration" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListArrngeSoffpk" Name="Adv_Name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Start_Time" Type="String" />
                <asp:Parameter Name="End_time" Type="String" />
                <asp:Parameter Name="Adv_Name" Type="String" />
                <asp:Parameter Name="Before_Prorgram" Type="String" />
                <asp:Parameter Name="Mid_Break_Program01" Type="String" />
                <asp:Parameter Name="Mid_Break_Program02" Type="String" />
                <asp:Parameter Name="Mid_Break_Program03" Type="String" />
                <asp:Parameter Name="After_Program" Type="String" />
                <asp:Parameter Name="Duration" Type="String" />
                <asp:Parameter Name="No" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceDropdwnArrngOffPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Adv_Name] FROM [TableAdvOffPeak]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceDrpdwnArrangePeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Adv_Name] FROM [Table_AdvPeak]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceDropdwnArrngeSuprOffPeak" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Adv_Name] FROM [TableAdvSuperOffPeak]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceDashBoard" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TableDashBoard] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableDashBoard] ([Company_Name], [Duration], [Spot_Off_Peak], [Spot_Peak], [Spot_Super_Off_Peak], [Start_Date], [End_Date], [Amount], [Status]) VALUES (@Company_Name, @Duration, @Spot_Off_Peak, @Spot_Peak, @Spot_Super_Off_Peak, @Start_Date, @End_Date, @Amount, @Status)" SelectCommand="SELECT * FROM [TableDashBoard] ORDER BY [Status] DESC" UpdateCommand="UPDATE [TableDashBoard] SET [Company_Name] = @Company_Name, [Duration] = @Duration, [Spot_Off_Peak] = @Spot_Off_Peak, [Spot_Peak] = @Spot_Peak, [Spot_Super_Off_Peak] = @Spot_Super_Off_Peak, [Start_Date] = @Start_Date, [End_Date] = @End_Date, [Amount] = @Amount, [Status] = @Status WHERE [Id] = @Id">
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
                <asp:Parameter Name="End_Date" DbType="Date" />
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
                <asp:Parameter Name="End_Date" DbType="Date" />
                <asp:Parameter Name="Amount" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       
    </div>
    </form>
</body>
</html>
