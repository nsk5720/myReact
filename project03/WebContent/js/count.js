	/* @@@@@@@@@팝업에 카운터@@@@@@@@@ */
		// 숫자 자릿수 나누기
		function unit(x){	// 1의 자리 숫자
			var m = x%10
			return m
		}
		function tenth(y){	// 10의 자리 숫자
			var m = y/10%10
			m = Math.floor(m)
			return m
		}
		function hund(v){
			var m = v/100
			m = Math.floor(m)
			return m
		}
		// 카운트 함수 정의 
		function ddaycount(){
			imgArr = ['/project03/images/num0.png','/project03/images/num1.png','/project03/images/num2.png','/project03/images/num3.png','/project03/images/num4.png','/project03/images/num5.png','/project03/images/num6.png','/project03/images/num7.png','/project03/images/num8.png','/project03/images/num9.png']
			// 목표되는 날짜(타겟되는 날짜)
			doomsday = new Date('Marc 1, 2023 00:00:00')
			// Janu Febr Marc Apri May June July Augu Sept Octo Nove Dece
			today = new Date()
			howfar = doomsday - today					//여친과의 디데일은 투데이에서 빼야함
			if(howfar>0) {
				setTimeout('ddaycount()',1000)
			} else {
				clearTimeout('ddaycount()')
				document.getElementById('countment').innerHTML='카운트가 종료되었습니다.'			// = jquery에서 $('#countment'); 와같음
				
			}
			// 하루 = 24시간 * 60분 * 60초 * 1000밀리초
			days = Math.floor(howfar/(1000*60*60*24))
			hours = Math.floor(howfar/(1000*60*60))
			mins = Math.floor(howfar/(1000*60))
			secs = Math.floor(howfar/(1000))
			
			d = days
			h = hours-days*24
			m = mins-hours*60 
			s = secs-mins*60
			
			//시간 이미지 실행
			document.getElementById('day100').setAttribute('src',imgArr[hund(d)])
			document.getElementById('day10').setAttribute('src',imgArr[tenth(d)])
			document.getElementById('day1').setAttribute('src',imgArr[unit(d)])
			document.getElementById("hour10").setAttribute("src",imgArr[tenth(h)])
			document.getElementById("hour1").setAttribute("src",imgArr[unit(h)])
			document.getElementById("min10").setAttribute("src",imgArr[tenth(m)])
			document.getElementById("min1").setAttribute("src",imgArr[unit(m)])
			document.getElementById("sec10").setAttribute("src",imgArr[tenth(s)])
			document.getElementById("sec1").setAttribute("src",imgArr[unit(s)])
			
			if(d<10) {d='00'+d} else if(d<100) {d='0'+d}
			if(h<10) {h="0"+h}
			if(m<10) {m="0"+m}
			if(s<10) {s="0"+s}
		}
		/* @@@@@@@@@팝업에 카운터@@@@@@@@@ */