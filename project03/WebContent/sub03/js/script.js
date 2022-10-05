$(function(){
	

	
	
	
	
	
	
	//가이드 텍스트
	var guideClass = "guideText"						// 회색에서 다른 색으로 바꿀때마다 .gray -> .해당클래스명 으로 바꿔만 주면 됨
	$('.guideText').each(function(){
		var guideText = this.defaultValue;
		var element = $(this);
		/* element.get(1); 0이면 첫번째 1이면 두번째*/
		element.focus(function(){					//focus 되어있는 상태에서
			if(element.val()===guideText){			//element.val = 적혀있는값이 guideText(defaultValue)와 같다면
				element.val('');					//비워라
				element.removeClass(guideClass);
			};
		}).blur(function(){					//같은 element 사용하므로 element 제거 가능
			if(element.val()===""){
				element.val(guideText);
				element.addClass(guideClass);
			}
		});
		
		if(element.val()===guideText){				//초기값
			element.addClass(guideClass);				//기본회색으로
		}
		
	});
	
	
	
	
	
	
	
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
	
	
	
	
	
		
		/* 메뉴(투뎁스) */			
	$('nav>#lnbNav>li').on('mouseenter', function(){
		$(this).find('.twoDepth').stop(true, true).slideDown();
	});
	$('nav>#lnbNav>li').on('mouseleave', function(){
		$(this).find('.twoDepth').stop(false, false).slideUp();
	});

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});