	/* 이미지 슬라이드 버튼 */
	    var num=1
    function nextGallery(){
        num++
        if(num>3) {num=1}
        document.getElementById("mainSlideimage").src="images/img_main_slide0"+num+".png"
        document.getElementById("mainSlideimage2").src="images/img_main_slide0"+num+".png"
        document.getElementById("mainSlideimage3").src="images/img_main_slide0"+num+".png"
        return false
    }

    function prevGallery(){
        num--
        if(num<1) {num=3}
        document.getElementById("mainSlideimage").src="images/img_main_slide0"+num+".png"
        document.getElementById("mainSlideimage2").src="images/img_main_slide0"+num+".png"
        document.getElementById("mainSlideimage3").src="images/img_main_slide0"+num+".png"
        return false
    }
	/* 이미지 슬라이드 버튼 */