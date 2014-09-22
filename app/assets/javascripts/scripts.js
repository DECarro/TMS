$(document).ready(function(){

 $(".main-info", this).hover(function(){
 	$(".main-info2", this).slideUp(1000);
  },
  function(){
  $(".main-info2",this).slideDown('slow');
});

});

