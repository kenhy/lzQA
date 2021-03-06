﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User2Position.aspx.cs" Inherits="SystemUI_UserUI_User2Position" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
        <style>
            .style2
        {
            width: 391px;
        }
        .style3
        {
            width: 81px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div>
    
        <table style="width: 500px;">
            <tr>
                <td style=" width:200px; font-size:14px; text-align:left; font-weight:bold;">
                    所有组织：</td>
                <td class="style2">
                    &nbsp;</td>
                <td style="width:200px; font-size:14px; text-align:left; font-weight:bold;">
                    拥有组织：</td>
            </tr>
            <tr>
                <td style=" width:200px; font-size:14px; text-align:left; font-weight:bold;" 
                    rowspan="7">
                    <asp:ListBox ID="list_Source" runat="server" DataSourceID="ObjectDataSource1" 
                        DataTextField="PosiName" DataValueField="PosiCode" Height="193px" 
                        Width="212px">
                    </asp:ListBox>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td style="width:200px; font-size:14px; text-align:left; font-weight:bold;" 
                    rowspan="7">
                    <asp:ListBox ID="list_Aim" runat="server" DataSourceID="ObjectDataSource2" 
                        DataTextField="PosiName" DataValueField="PosiCode" Height="192px" 
                        Width="213px">
                    </asp:ListBox>
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btn_Right" runat="server" onclick="btn_Right_Click" 
                        Text="&gt;&gt;" Width="65px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btn_Left" runat="server" onclick="btn_Left_Click" 
                        style="height: 26px" Text="&lt;&lt;" Width="65px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
    <asp:Button ID="btn_Add" runat="server" onclick="btn_Add_Click" Text="确认提交" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    
        <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetOrganList" TypeName="BLL.PositionBLL">
        <SelectParameters>
            <asp:SessionParameter Name="organID" SessionField="OrganID" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        SelectMethod="GetPosi2User" TypeName="BLL.PositionBLL">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="userID" QueryStringField="code" 
                                Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
