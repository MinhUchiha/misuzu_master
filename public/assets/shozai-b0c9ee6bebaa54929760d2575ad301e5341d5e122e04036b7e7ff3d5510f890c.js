$(function(){oTable=$("#shozais").DataTable({pagingType:"full_numbers",oLanguage:{sUrl:"../../assets/resource/dataTable_ja.txt"},aoColumnDefs:[{bSortable:!1,aTargets:[4,5,6]},{targets:[4,5,6],width:"15px"}],columnDefs:[{targets:"no-sort",orderable:!1}]})}),$(function(){$("#shozai_background_color").colorpicker(),$("#shozai_text_color").colorpicker(),$("#shozai_background_color").colorpicker().on("changeColor",function(o){$("#preview-backgroud").css("background-color",o.color.toHex()),$(this).val(o.color.toHex())}),$("#shozai_text_color").colorpicker().on("changeColor",function(o){$("#preview-text").css("color",o.color.toHex()),$(this).val(o.color.toHex())}),$("#preview-text").css("color",$("#shozai_text_color").val()),$("#preview-backgroud").css("background-color",$("#shozai_background_color").val())});