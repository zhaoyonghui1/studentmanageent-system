<%@ Page Title="" Language="C#" MasterPageFile="~/m.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Add.aspx.cs" Inherits="rewards_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script type="text/javascript"  src="../vali/jquery.min.js"></script>
<script type="text/javascript" src="../vali/jquery.poshytip.js"></script>
<script type='text/javascript' src='../vali/jq.validate.js'></script>
<link rel="stylesheet" type="text/css" href="../vali/reset.css" />
<link rel="stylesheet" type="text/css" href="../vali/tip-yellowsimple/tip-yellowsimple.css" />

<script src="../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-wrap">
				<section class="page-hd">
					<header>
						<h2 class="title">添加奖惩信息</h2>
						
					</header>
					<hr>
				</section>
				
	
				<table class="auto-style1">
                       
                    <tr><td valign="top">

                            <table style="width:100%;">
    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>学号:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_sno" runat="server" width="200" valType="required" msg="<font color =red>*</font>必填"></asp:TextBox>
</div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>类别:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlrtype" runat="server" Width="200">
        <asp:ListItem>奖励</asp:ListItem>
    <asp:ListItem>惩罚</asp:ListItem>
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>日期:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_indate" runat="server" width="200"  class="Wdate" onfocus="WdatePicker()"  valType="required" msg="<font color =red>*</font>必填"></asp:TextBox>

</div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>具体描述:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_memo" runat="server"  width="311px" Height="127px" style="height:127px;" TextMode="MultiLine" valType="required" msg="<font color =red>*</font>必填"></asp:TextBox>
</div> 
 </td></tr>



    <tr>
        <td>&nbsp;</td>
        <td align="left">
            <asp:Button ID="btnAdd" runat="server" Text="提 交"  class="btn btn-info-outline" OnClick="btnSave_Click"  />
            <asp:Button ID="btnCan" runat="server" Text="返 回"  class="btn btn-warning-outline" OnClientClick="document.location='Manage.aspx';return false;" CausesValidation="false" />
        </td>
    </tr>
</table>

                        </td></tr>
                    </table>
			</div>
     
</asp:Content>


