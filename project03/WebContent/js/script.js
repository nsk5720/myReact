$(function(){
	
	/* 탭메뉴 */
	var tab = $('.tab>li');
	var content = $('.tabContent>div');
	content.hide().eq(0).show();	
	
	tab.click(function(){
		var tg = $(this);
		var i = tg.index();
		tab.removeClass('active');
		tg.addClass('active');
		content.css('display','none');
		content.eq(i).css('display','block');
		return false
	});
	/* 탭메뉴 */
	
	

	/* 이미지 슬라이드 */
	var banner = $('#imageSlide ul li');
	var current = 0;
	var timer;
	
	function move(tg,start,end,op1,op2){   
		tg.css({left: start,opacity:op1}).stop().animate({left:end,opacity:op2},500);	
		};
	timer = setInterval(function(){
		var prev = banner.eq(current);
		move(prev,'0%','-100%',1,0);
		current++;
		if(current>=banner.size()){current = 0 ;}
		var next = banner.eq(current);
		move(next,'100%','0%',0,1);
	},2000);
	
	banner.hover(
		function(){
			clearInterval(timer);
		},
		function(){
	timer = setInterval(function(){
		var prev = banner.eq(current);
		move(prev,'0%','-100%',1,0);
		current++;
		if(current>=banner.size()){current = 0 ;}
		var next = banner.eq(current);
		move(next,'100%','0%',0,1);
	},2000);
		}
	);
	/* 이미지 슬라이드 */

	
	

	
	
	
	/* 팝업 */
	$('.pop').fadeIn();
	
	$('.pop>.popFooter>label>span>a').click(function(){
		$('.pop').fadeOut();
	});
	$('.pop>.popFooter>div>a').click(function(){
		$('.pop').fadeOut();
	});
	
	
	
		
		/* 메뉴(투뎁스) */			
	$('nav>#lnbNav>li').on('mouseenter', function(){
		$(this).find('.twoDepth').stop(true, true).slideDown();
	});
	$('nav>#lnbNav>li').on('mouseleave', function(){
		$(this).find('.twoDepth').stop(false, false).slideUp();
	});

	
	
	
	
	/* 베너이미지 */
	var interval = 2000;
	$('#bannerSlide').each(function(){
		var timer;
		var container = $(this);
		function switchImg(){
			/* var imgs = container.find('img');
			var first = imgs.eq(0);
			var second = imgs.eq(1); */			
			
			var anchors = container.find('a');
			var first = anchors.eq(0);
			var second = anchors.eq(1);
			first.fadeOut().appendTo(container);
			second.fadeIn()
		};
		function startTimer(){
			timer = setInterval(switchImg, interval);
		};
		function stopTimer(){
			clearInterval(timer)
		};
		
		container.find('a').hover(stopTimer,startTimer);
		startTimer();			/* 실행해줘야함 한번은 */
	
	});
		/* 베너이미지 */
	
	
	
	
	/* 중간메뉴 호버 */
	var quickMenu = $('#quickMenu>div');
	quickMenu.each(function(){
		var menu = $(this);
		menu.hover(
			function(){
				menu.stop(true, true).animate({"top":"-30px"},500)
			},
			function(){
				menu.stop(false, false).animate({"top":"0px"},500)
			});
	})
	
	/* 중간메뉴 호버 */
	
	
	
	
	
	
	
			

	
	
	
	
	
	
	
	/* SNS 이미지 호버이미지 : bind 사용*/
/* 	$('.rollover').each(function(){
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
	}); */
	
		/* SNS 이미지 호버이미지 : hover 사용*/
	
		$('.rollover').each(function(){
		var a = $(this);
		var img = a.find('img');
		
		var src_off = img.attr('src');
		
		var src_on = src_off.replace('_off.png','_on.jpg');
		img.hover(
			function(){
			img.attr('src',src_on);
			}, 
			function(){
			img.attr('src',src_off);
			}
		);
		});
		/* 다른 함수 사용한 호버이미지 */
		/* $('<img />').attr('src', src_on);			
		a.bind('mouseenter focus',function(){ 		
			img.attr('src',src_on);
		});
			
		a.bind('mouseleave blur',function(){
			img.attr('src',src_off);
		}); */

	
	
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
		
		
		
		
		
		
	/* 이미지 애니메이션 */
	$("#summerImg").hover(function(){
			$("#summerImg>a").stop().animate({"margin-left":"-695px"},500)
		},
		function(){
			$("#summerImg>a").stop().animate({"margin-left":"0px"},500)
		}
	);
	/* 이미지 애니메이션 */	
		
	
	
	
	
	 /* 날씨 */ 
        $.getJSON('http://api.openweathermap.org/data/2.5/weather?id=1835848&APPID=b37f7152531639d4f98b7c81f6644b09&units=metric',
		function(data){
			var $minTemp=data.main.temp_min;
			var $maxTemp = data.main.temp_max;
			var $cTemp = data.main.temp;
			var $pressure = data.main.pressure;
			var $humidity = data.main.humidity;
			
			var $now = new Date(Date.now());
			var month = $now.getMonth()+1
			var $cDate = $now.getFullYear() + '년 ' + month + '월 '+$now.getDate()+'일 '+$now.getHours()+'시 '+ $now.getMinutes()+'분 ';
			var $wIcon = data.weather[0].icon;
						
			$('.cDate').append($cDate);
			$('.clowtemp').append($minTemp);
			$('.ctemp').append($cTemp);
			$('.chightemp').append($maxTemp);
			$('.pressure').append($pressure);
			$('.humidity').append($humidity);
			$('.cicon').append('<img src="http://openweathermap.org/img/wn/'+$wIcon+'.png"/>');
			
		});
		 
		/*  날씨  */
	
	
	
	/* 새소식, 날씨서비스 호버 */
	$('.newsService').each(function(){
		$(this).find('.newsContent').hover(function(){
			$(this).addClass('newsBorder');
		},
		function(){
			$(this).removeClass('newsBorder');
		}
		)
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});