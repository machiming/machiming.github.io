﻿<%@ OutputCache Duration="600" VaryByParam="None" %>
<%@ Control Language="C#" %>
<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.Common.Controls" Assembly="Hidistro.UI.Common.Controls" %>
<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.SaleSystem.Tags" Assembly="Hidistro.UI.SaleSystem.Tags" %>
<%@ Import Namespace="Hidistro.Core" %>
<!--footer-->
<div class="footerbg" id="footer"><div class="footerm"><div class="link"><Hi:Common_FriendLinks runat="server" TemplateFile="/HomeTags/Common_Comment/Skin-Common_FriendLinks.ascx" /></div><div class="copyright"><Hi:PageFooter ID="PageFooter1" runat="server" />
         <Hi:CnzzShow ID="CnzzShow1" runat="server" /></div></div></div>

  
  
<script src="/Utility/china.js"></script>
<script src="/Utility/jquery.cookie.js"></script>
<script type="text/javascript">
    var uid = 0;
    $(document).ready(function () {
        uid = parseInt($.cookie("uid"));
        if (isNaN(uid)) uid = 0;
        if (uid == 1) {
            uid ? (run()) : (run());
            $("#id_c").html("切换简体");
        }
    });
    $(document).bind('click', function (e) {
        var a = $(e.target).attr('id');
        if (a == 'id_c') {
            uid ? (run()) : (run());
            (uid == 1) ? (uid = 0, $('#id_c').html('切换繁体')) : (uid += 1, $('#id_c').html('切换简体'));
            $.cookie("uid", uid);
        }
    });
    $(function () {
        $(".dialog_title_r").click(function () {
            $("#loginForBuy").hide();
            $(".modal_qt").remove();
        });
    });
    $(function () {
        $(".dialog_title_r").click(function () {
            $("#loginForBuy").hide();
            $(".modal_qt").remove();
        });
    });
</script>

</body>
</html> 