$(document).ready(function(){
   $("#Select").click(function(){
      
      var button_text = $("#Select").text();
      
      if(button_text == "Select All") {
         $(".checkSingle").each(function(){
            this.checked = true;
         });
         $("#Select").html("Deselect All");
      } else {
         $(".checkSingle").each(function(){
            this.checked = false;
         });
         $("#Select").html("Select All");
      }
      
      var checkNum = $('input[type="checkbox"]:checked').length;
      var value = "Download " + checkNum;
      $("#Download").val(value);
   });
   
   $(".checkSingle").change(function(){
      var checkNum = $('input[type="checkbox"]:checked').length;
      var value = "Download " + checkNum;
      $("#Download").val(value);
   });
   
   $("#Sort").change(function(){
      var sortBy = $("#Sort").val();
      //alert(test2);
      $("#SortBy").val(sortBy);
      //var test = $("#SortBy").val();
      //alert(test);
      $("#Refresh").submit();
   });
});
