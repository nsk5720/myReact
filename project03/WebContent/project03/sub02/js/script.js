$(function(){
	
		/* 호버기능(혓바닥) */	
	var boardClosed = 'closed';		
	
	$('#low').each(function(){
		var board = $(this);
		var allTitle = board.find('.qaTitle');
		var allList = board.find('.qaList');
				
		//모두 닫는 함수
		function closeAll(){
			allTitle.addClass(boardClosed);
			allList.addClass(boardClosed);
		}
				
		//지정된 요소를 닫는 함수
		function open(title,list){
			title.removeClass(boardClosed);
			list.removeClass(boardClosed);
		}
		
		closeAll();
		
		allTitle.click(function(){
			var title = $(this);
			var list = title.next();
						
			closeAll();
			open(title,list);
			
		});
			
	});
		/* 호버기능(혓바닥) */	
		
		
		
		
		
			/* 메뉴(투뎁스) */			
	$('nav>#lnbNav>li').on('mouseenter', function(){
		$(this).find('.twoDepth').stop(true, true).slideDown();
	});
	$('nav>#lnbNav>li').on('mouseleave', function(){
		$(this).find('.twoDepth').stop(false, false).slideUp();
	});

	
	
	
	
	
		/* SNS 이미지 호버이미지 */
	$('.rollover').each(function(){
		var a = $(this);
		var img = a.find('img');
		
		var src_off = img.attr('src');
		
		var src_on = src_off.replace('_off.png','_on.jpg');
	
		$('<img />').attr('src', src_on);			
		a.bind('mouseenter focus',function(){ 		
			img.attr('src',src_on);
		});
			
		a.bind('mouseleave blur',function(){
			img.attr('src',src_off);
		});
	});
		/* SNS 이미지 호버이미지 */
	
	
	
	
	
	
	
	
	
		/* 툴팁 */
	var tooltip = $('<div class="tooltip"></div>').appendTo('body');	//객체생성
	
	//풍선 도움말 위치를 업데이트하는 함수
	function updateTooltipPosition(x,y){
		tooltip.css({left: x+15, top: y+15});
	};
	
	function showTooltip(){
		tooltip.stop().css('opacity',0).show().animate({opacity:1},800);
	};
	function hideTooltip(){
		tooltip.stop()/* .css('opacity',1).hide() */.animate({opacity:0},800,function(){tooltip.hide()});				//하이드가 앞에서 실행되면 안보임
	};
	
	
	$('.showTooltip').each(function(){
		var element = $(this);
		var text = element.attr('title');
		element.attr('title','');			//파라메타 2개 비워라!! 기본제공 타이틀 제거
		
		element.hover(
			function(event){
				tooltip.text(text);					//text메소드(기입)와 (변수text)
				updateTooltipPosition(event.pageX, event.pageY);//위치를 잡은 다음에
				showTooltip();									//보여				
			},
			function(){
				hideTooltip();
		});
											
		// mousemove이벤트 - 마우스가 움직이면 발생하는 이벤트를 설정
		element.mousemove(function(event){
			updateTooltipPosition(event.pageX, event.pageY);
		});
	});
		/* 툴팁 */
		
	
		$.ajax({
			url:'data/data.xml',						
			dataType:'xml',
			success:function(xml){				
				var data = $(xml);
				data.find('faqs').each(function(index){
					var faqs = $(this);
					var qaTitle = faqs.find('qaTitle').text();
					var qaContent = faqs.find('qaContent').text();
					
					$('.accordion>.qaTitle').eq(index).text(qaTitle);
					$('.accordion .qaContent').eq(index).text(qaContent);
				});
			}
		});	
			
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});