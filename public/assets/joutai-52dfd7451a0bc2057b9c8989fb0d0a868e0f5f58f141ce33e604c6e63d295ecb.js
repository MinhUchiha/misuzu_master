$(function(){oTable=$("#joutaimaster").DataTable({pagingType:"full_numbers",oLanguage:{sUrl:"../../assets/resource/dataTable_ja.txt"},aoColumnDefs:[{bSortable:!1,aTargets:[9,10,11]},{targets:[9,10,11],width:"15px",targets:[7],width:"90px"}],columnDefs:[{targets:"no-sort",orderable:!1}]})}),$(function(){$("#joutaimaster_\u8272").colorpicker(),$("#joutaimaster_text_color").colorpicker(),$("#joutaimaster_\u8272").colorpicker().on("changeColor",function(o){$("#preview-backgroud").css("background-color",o.color.toHex()),$(this).val(o.color.toHex())}),$("#joutaimaster_text_color").colorpicker().on("changeColor",function(o){$("#preview-text").css("color",o.color.toHex()),$(this).val(o.color.toHex())}),$("#preview-text").css("color",$("#joutaimaster_text_color").val()),$("#preview-backgroud").css("background-color",$("#joutaimaster_\u8272").val())});