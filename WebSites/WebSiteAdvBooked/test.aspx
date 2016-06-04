<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<script type="text/javascript">
    function Search_Gridview(strKey, strGV) {
        var strData = strKey.value.toLowerCase().split(" ");
        var tblData = document.getElementById(strGV);
        var rowData;
        //var e1 = document.getElementById("e1");
       //e1.style.width = "100px";
        
        for (var i = 0; i < tblData.rows.length; i++) {
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
    
   

   


    function CountRows() {
        var totalRowCount = 0;
        var rowCount = 0;
        var gridView = document.getElementById("<%= GridView1.ClientID %>");
        var rows = gridView.getElementsByTagName("tr")
        for (var i = 0; i < rows.length; i++) {
            totalRowCount++;
            if (rows[i].getElementsByTagName("td").length > 0) {
                rowCount++;
            }
        }
        var message = "Total Rows with HeaderRows: " + totalRowCount;
        message += "Number of Rows: " + rowCount;
        alert(message);
        return false;
    }


    $(document).ready(function () {
        gridviewScroll();
    });

    function gridviewScroll() {
        $('#<%=GridView1.ClientID%>').gridviewScroll({
            width: 660,
            height: 200
        });
    }

</script>







<script type = "text/javascript">
    var GridId = "<%=GridView1.ClientID %>";
    var ScrollHeight = 300;
    window.onload = function () {
        var grid = document.getElementById(GridId);
        var gridWidth = grid.offsetWidth;
        var gridHeight = grid.offsetHeight;
        var headerCellWidths = new Array();
        for (var i = 0; i < grid.getElementsByTagName("TH").length; i++) {
            headerCellWidths[i] = grid.getElementsByTagName("TH")[i].offsetWidth;
        }
        grid.parentNode.appendChild(document.createElement("div"));
        var parentDiv = grid.parentNode;
 
        var table = document.createElement("table");
        for (i = 0; i < grid.attributes.length; i++) {
            if (grid.attributes[i].specified && grid.attributes[i].name != "id") {
            table.setAttribute(grid.attributes[i].name, grid.attributes[i].value);
            }
        }

        table.style.cssText = grid.style.cssText;
        table.style.width = gridWidth + "px";
        table.appendChild(document.createElement("tbody"));
        table.getElementsByTagName("tbody")[0].appendChild(grid.getElementsByTagName("TR")[0]);
        var cells = table.getElementsByTagName("TH");
 
        var gridRow = grid.getElementsByTagName("TR")[0];
        for (var i = 0; i < cells.length; i++) {
            var width;
            if (headerCellWidths[i] > gridRow.getElementsByTagName("TD")[i].offsetWidth) {
                width = headerCellWidths[i];
            }
            else {
                width = gridRow.getElementsByTagName("TD")[i].offsetWidth;
            }
            cells[i].style.width = parseInt(width - 3) + "px";
            gridRow.getElementsByTagName("TD")[i].style.width = parseInt(width - 3) + "px";
        }
        parentDiv.removeChild(grid);
 
        var dummyHeader = document.createElement("div");
        dummyHeader.appendChild(table);
        parentDiv.appendChild(dummyHeader);
        var scrollableDiv = document.createElement("div");
        if(parseInt(gridHeight) > ScrollHeight){
        gridWidth = parseInt(gridWidth) + 17;
        }
        scrollableDiv.style.cssText = "overflow:auto;height:" + ScrollHeight + "px;width:" + gridWidth + "px";
        scrollableDiv.appendChild(grid);
        parentDiv.appendChild(scrollableDiv);
    }
   </script>










<!DOCTYPE html>

 



<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

   


    <title></title>
</head>
<body>

     <style type="text/css">

       .graystyle {
       color:gray;
       }

       .button {
   border-top: 1px solid #c7c568;
   background: #8bd4d9;
   background: -webkit-gradient(linear, left top, left bottom, from(#a8e3cd), to(#8bd4d9));
   background: -webkit-linear-gradient(top, #a8e3cd, #8bd4d9);
   background: -moz-linear-gradient(top, #a8e3cd, #8bd4d9);
   background: -ms-linear-gradient(top, #a8e3cd, #8bd4d9);
   background: -o-linear-gradient(top, #a8e3cd, #8bd4d9);
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
.button:hover {
   border-top-color: #e4eb12;
   background: #e4eb12;
   color: #120303;
   }
.button:active {
   border-top-color: #608aa6;
   background: #608aa6;
   }


         .FixedHeader {
         position:absolute;
         font-weight: bold;
         }




         </style>


    <form id="form1" runat="server">
    <div style="height: 466px">
        <br />
        <asp:DropDownList ID="DropDownList3" runat="server" Height="19px" Width="109px">
        </asp:DropDownList>
&nbsp;<asp:Button ID="Buttonrefresh" runat="server" OnClick="Buttonrefresh_Click" Text="Button" />
        &nbsp;<asp:TextBox ID="TextBox7" runat="server" AutoPostBack="True" OnTextChanged="TextBox7_TextChanged" onkeyup="Search_Gridview(this, 'GridView1')" ></asp:TextBox>

        


        <asp:Button ID="ButtonDlete" runat="server" OnClick="ButtonDlete_Click" Text="Delete" Width="78px" />

        


        <asp:Button ID="Button3" runat="server" CssClass="button" OnClick="Button3_Click" Text="Button" Width="180px" onkeyup="Search_Gridview()"/>

        


        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Test]"></asp:SqlDataSource>

        


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Test]" DeleteCommand="DELETE FROM [Test] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Test] ([Name], [Username]) VALUES (@Name, @Username)" UpdateCommand="UPDATE [Test] SET [Name] = @Name, [Username] = @Username WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        


        <asp:Button ID="btCount" runat="server" Height="31px" Text="Button" Width="120px"  OnClientClick="return CountRows()" OnClick="btCount_Click"/>

        


    &nbsp;<asp:Label ID="lblrecords" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtFind" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Panel ID="Panel1" runat="server" Height="143px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  DataKeyNames="Id" OnRowDataBound="OnRowDataBound">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                </Columns>
            </asp:GridView>
        </asp:Panel>

        


        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="**"></asp:RequiredFieldValidator>
        <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkText="water mark">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#FF5050" Text="Fill up this textbox"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" Width="105px">
            <asp:ListItem Value="-- SELECT --">-- SELECT --</asp:ListItem>
            <asp:ListItem>0</asp:ListItem>
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
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList5" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="66px" />
        <asp:Label ID="Label1" runat="server" BorderStyle="Groove" style="margin-right: 0px" Width="30px">0</asp:Label>
        Times Added.&nbsp;&nbsp; 
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
