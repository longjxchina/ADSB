﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="ADSB.UI.UserManage.UserList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户管理</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="data_header">
            <div class="title">
                字典列表</div>
            <div class="operate">
                <a href="UserEdit.aspx" class="jui_button">新增</a>
            </div>
        </div>
        <asp:GridView ID="gvList" runat="server" AutoGenerateColumns="false" CssClass="data_list"
            OnRowCommand="gvList_RowCommand">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="用户名" />
                <asp:BoundField DataField="RealName" HeaderText="真实姓名" />
                <asp:BoundField DataField="Email" HeaderText="邮箱" />
                <asp:BoundField DataField="Tel" HeaderText="电话" />
                <asp:BoundField DataField="Mobile" HeaderText="手机" />
                <asp:BoundField DataField="Sex" HeaderText="性别" />
                <asp:BoundField DataField="Dept" HeaderText="部门" />
                <asp:BoundField DataField="Position" HeaderText="岗位" />
                <asp:BoundField DataField="Status" HeaderText="状态" />
                <asp:BoundField DataField="Remark" HeaderText="备注" />                
                <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>                        
                        <a href='UserEdit.aspx?mode=update&userid=<%# Eval("UserID") %>'>修改</a>
                        <asp:LinkButton ID="btnDataDelete" runat="server" CssClass="delete" CommandName="del"
                            CommandArgument='<%# Eval("UserID") %>'>删除</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
