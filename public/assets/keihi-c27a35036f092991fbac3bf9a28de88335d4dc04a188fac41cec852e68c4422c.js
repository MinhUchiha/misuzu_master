$(function(){oKaisha_search_modal=$("#kaisha-table-modal").DataTable({pagingType:"simple_numbers",oLanguage:{sUrl:"../../assets/resource/dataTable_ja.txt"}}),oKikan_search_modal=$("#kikan-table-modal").DataTable({pagingType:"simple_numbers",oLanguage:{sUrl:"../../assets/resource/dataTable_ja.txt"}}),oEki_search_modal=$("#eki-table-modal").DataTable({pagingType:"simple_numbers",oLanguage:{sUrl:"../../assets/resource/dataTable_ja.txt"}})}),$(function(){}),$(function(){var a,e,i,s,t;$("#summary").click(function(){a=0,e=0,i=0,s=0,$(".koutsuhi").each(function(){var a=$(this).val();isNaN(a)||0==a.length||(e+=parseFloat(a))}),$(".nittou").each(function(){var a=$(this).val();isNaN(a)||0==a.length||(i+=parseFloat(a))}),$(".shukuhaku").each(function(){var a=$(this).val();isNaN(a)||0==a.length||(s+=parseFloat(a))}),$(".sonotha").each(function(){var e=$(this).val();isNaN(e)||0==e.length||(a+=parseFloat(e))});var l=$("#keihihead_\u4eee\u6255\u91d1").val(),h=$("#keihihead_\u652f\u7d66\u54c1").val();(isNaN(l)||0==l.length)&&(l=0),(isNaN(h)||0==h.length)&&(h=0);var n=0,o=0,r=0,u=0;$(".check-remove").each(function(){if("1"==$(this).val()){var a=$(this).closest("tr").find(".koutsuhi").val();isNaN(a)||0==a.length||(o+=parseFloat(a));var a=$(this).closest("tr").find(".nittou").val();isNaN(a)||0==a.length||(r+=parseFloat(a));var a=$(this).closest("tr").find(".shukuhaku").val();isNaN(a)||0==a.length||(u+=parseFloat(a));var a=$(this).closest("tr").find(".sonotha").val();isNaN(a)||0==a.length||(n+=parseFloat(a))}}),e-=o,i-=r,s-=u,a-=n,$("#keihihead_\u4ea4\u901a\u8cbb\u5408\u8a08").val(e),$("#keihihead_\u65e5\u5f53\u5408\u8a08").val(i),$("#keihihead_\u5bbf\u6cca\u8cbb\u5408\u8a08").val(s),$("#keihihead_\u305d\u306e\u4ed6\u5408\u8a08").val(a),$("#keihihead_\u65c5\u8cbb\u5408\u8a08").val(e+i+s),$("#keihihead_\u5408\u8a08").val(e+i+s+a),$("#keihihead_\u904e\u4e0d\u8db3").val(e+i+s+a-l-h),t=$("#keihihead_shinsheino").val(),$(".shinsheino").val(t),line=0,$(".line-no").each(function(){line+=1,$(this).val(line)})})}),$(function(){$("#keihihead_\u6e05\u7b97\u4e88\u5b9a\u65e5").datetimepicker({format:"YYYY/MM/DD",showTodayButton:!0,showClear:!0,calendarWeeks:!0,keyBinds:!1,focusOnShow:!1})});