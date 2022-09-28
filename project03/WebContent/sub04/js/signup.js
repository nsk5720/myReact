$(function(){

	/* 제출 및 취소 버튼 */
	$('.save_button').click(function(e){
		e.preventDefault();
		check_input();
	});
	$('.reset_button').click(function(e){
		e.preventDefault();
		reset_form();
	});
});