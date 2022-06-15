			$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(document).on("click","#fileDel", function(){
				$(this).parent().remove();
			})
			
			fn_addFile();
		
					
		
 		function fn_addFile(){
			var fileIndex = 1;
			$(".fileAdd_btn").on("click", function(){
				$("#fileIndex").append("<div><input type='file'  name='file_"+(fileIndex++)+"'>"+"<button type='button' class='btn-btn'  id='fileDelBtn'>"+"삭제"+"</button></div>");
			});
			$(document).on("click","#fileDelBtn", function(){
				$(this).parent().remove();
				
			});
		}
 		var fileNoArry = new Array();
 		
 		var fileNameArry = new Array();
 		
 		function fn_del(value, name){
				
				
				 			
 			fileNoArry.push(value);
 			
 			fileNameArry.push(name);
 			
 			console.log(fileNameArray);
 			$("#fileNoDel").attr("value", fileNoArry);
 			$("#fileNameDel").attr("value", fileNameArry);
 		}
})

