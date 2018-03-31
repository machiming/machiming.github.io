﻿<%@ Control Language="C#" %>
<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.Common.Controls" Assembly="Hidistro.UI.Common.Controls" %>
<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.SaleSystem.Tags" Assembly="Hidistro.UI.SaleSystem.Tags" %>
<%@ Import Namespace="Hidistro.Core" %>	
	

<input class="stxt" id="txt_Search_Keywords" type="text" value="铁三角耳机"  onfocus="this.style.color='#000000';if (value =='铁三角耳机'){value =''}" onblur="this.style.color='#cccccc';if (value ==''){value='输入您要找的宝贝！'}"/>

<input class="sbtn" type="button" value="" onclick="searchs()" />

<script type="text/javascript">
    function searchs() {
        var item = $("#drop_Search_Class").val();
        var key = $("#txt_Search_Keywords").val();
        if (key == undefined || key=="铁三角耳机")
            key = "";

        key = key.replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/'/g, '&#39;').replace(/</g, '&lt;').replace(/>/g, '&gt;');

        var url = "/SubCategory?keywords=" + encodeURIComponent(key);
        if (item != undefined)
            url +=  "&categoryId=" + item;
        window.location.href = url;
    }

    $(document).ready(function () {
        $('#txt_Search_Keywords').keydown(function (e) {
            if (e.keyCode == 13) {
                searchs();
                return false;
            }
        })       
    });
	  
  </script>   
    
    
    

