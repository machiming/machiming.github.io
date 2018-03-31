﻿<%@ Control Language="C#" %>
<%@ Import Namespace="Hidistro.Core" %>
<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.Common.Controls" Assembly="Hidistro.UI.Common.Controls" %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tab_box1">
    <tr id="spqingdan_title">
        <td align="center" style="width:128px">提现金额</td>
        <td align="center" style="width:228px">提现账号</td>
        <td align="center" style="width:128px">申请日期</td>
        <td align="center" style="width:128px">审核状态</td>
        <td align="center" style="width:228px">管理员备注</td>
        <td align="center" style="width:128px">处理日期</td>
    </tr>
    <asp:Repeater ID="rptSplittinDraws" runat="server">
        <ItemTemplate>
            <tr>
                <td align="center">&nbsp;
                    <%#Eval("Amount", "{0:F2}") %></td>
                <td align="center">&nbsp;
                    <%# Eval("IsWithdrawToAccount").ToBool()?"提现至预付款账户":Eval("IsWeixin").ToBool()?"提现至微信":Eval("IsAlipay").ToBool()?"支付宝"+Eval("AlipayCode").ToNullString(): Eval("BankName").ToNullString()+ Eval("MerchantCode").ToNullString()%></td>
                <td align="center">&nbsp;
                    <Hi:FormatedTimeLabel ID="lblTradeDate" runat="server" Time='<%# Eval("RequestDate") %>'></Hi:FormatedTimeLabel></td>
                <td align="center">&nbsp;
                    <Hi:SplitDrawStatusLable Status = '<%#Eval("AuditStatus")%>' RequestState='<%#Eval("RequestState")%>' runat="server"></Hi:SplitDrawStatusLable></td>
                <td align="center">&nbsp;<%# Eval("ManagerRemark") %></td>
                <td align="center">&nbsp;
                    <Hi:FormatedTimeLabel ID="FormatedTimeLabel1" runat="server" Time='<%# Eval("AccountDate") %>'></Hi:FormatedTimeLabel></td>
            </tr>
            
        </ItemTemplate>
    </asp:Repeater>
</table>
