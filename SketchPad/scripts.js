$(function(){
	var input = window.prompt("Insert input","16");
	if(input == null) 
		input = 16;
	
	for(var i = 0; i < input*input; i++){
		$('.grid').css({
			width: 34*input + 'px',
			height: 34*input + 'px'
		});
		$('.grid').append('<div class="gridBlock"></div>')
	}

	var blocks = $('.gridBlock');

	for(var i = 0; i < blocks.length; i++){
		$($('.gridBlock')[i]).on('mouseenter',function(){
			$(this).css({
				background: 'red'
			});
		});
	}


	$('#clear').click(function(event) {
		clear();
	});

	function clear(){
		for(var i = 0; i < blocks.length; i++){
		$($('.gridBlock')[i]).css({
				background: 'gray'
			});
	}
	}
});