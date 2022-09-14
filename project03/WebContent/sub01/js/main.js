$(function(){
	window.open("popup.html","","resizable=no, toolbar=no, width=384, height=404")
	$('#nav>ul>li').on('mouseenter',function(){
		$(this).find('>.twoDepth').stop(true, false).slideDown(500);
	})
	$('#nav>ul>li').on('mouseleave',function(){
		$(this).find('>.twoDepth').stop(false,true).slideUp(1);
	})
/* 	$('#nav>ul>li.oneDepth').hover(
		function(){
			$('#nav>ul>li.oneDepth>.twoDepth').stop().slideDown();
		},
		function(){
			$('#nav>ul>li.oneDepth>.twoDepth').stop().slideUp();
		}
	);	 */

/* ------------------------------------------------------------	*/
	$('.mainSlideImg').width();
		
	var mainSlideImg = $('.slidePanelInner');
	var textBanner = $('.sliderText'); 
	var slideControlBtn = $('.controlButton');
	var current = 0;
	var slideTimer;
	var slideClickTime = 'no'
	var prevClickCurrent; 
	
	$('.slideTextAnchor').hover(
		function(){
			clearInterval(slideTimer);
			slidePlay = 'no';
			slide_play_btn.css('background','url(images/main_slide/main-autoplay-play.png) no-repeat');
		},
		function(){
			slideInterval();
			slidePlay = 'yes';
			slide_play_btn.css('background','url(images/main_slide/main-autoplay-stop.png) no-repeat');
		}
	);
	
	function slideTotal(){
		var prevImg = mainSlideImg.eq(current);
		var slideImgWidth = mainSlideImg.width();
 		var prevTextBanner = textBanner.eq(current);
		moveBanner(prevImg,'0%','-100%',0,162);
		setTimeout(function(){
			prevImg.css('z-index','2');
			prevImg.hide();	
			},500);
		fadeinBanner(prevTextBanner,1,0,slideImgWidth);
		slideControlBtn.eq(current).removeClass('activeBtn').stop().animate({'width':'10px'},300);
		current++;
		if(current >= mainSlideImg.size()){current=0;};
		var nextImg = mainSlideImg.eq(current);
		var nextTextBanner=textBanner.eq(current);
		nextImg.show();
		moveBanner(nextImg,'100%','0%',-162,0);
		nextImg.css('z-index','3');
		fadeinBanner(nextTextBanner,0,1,slideImgWidth);
		slideControlBtn.eq(current).addClass('activeBtn').stop().animate({'width':'30px'},300);
	}

 	function clickSlideTotal(clickCurrent, prevClickCurrent){
		if(prevClickCurrent){current=prevClickCurrent};
		if(current==clickCurrent){return;}
		else {
		var prevImg = mainSlideImg.eq(current);
		var slideImgWidth = mainSlideImg.width();
		var prevTextBanner = textBanner.eq(current);
		prevImg.show();
		moveBanner(prevImg,'0%','-100%',0,162);
		setTimeout(function(){
			prevImg.css('z-index','2');
			prevImg.hide();
			},500);
		fadeinBanner(prevTextBanner,1,0,slideImgWidth);
		slideControlBtn.eq(current).removeClass('activeBtn').stop().animate({'width':'10px'},300);
		var nextImg = mainSlideImg.eq(clickCurrent);
		var nextTextBanner=textBanner.eq(clickCurrent);
		nextImg.show();
		moveBanner(nextImg,'100%','0%',-162,0);
		nextImg.css('z-index','3');
		fadeinBanner(nextTextBanner,0,1,slideImgWidth);
		slideControlBtn.eq(clickCurrent).addClass('activeBtn').stop().animate({'width':'30px'},300);
		prevClickCurrent = clickCurrent;
		current=clickCurrent;
		}
	} 
	
	function slideInterval(){
		slideTimer = setInterval(function(){
				slideTotal();
			},2000);		
	}
	slideInterval();

	function moveBanner (tg,start,end){
 		tg.css({left:start}).stop().animate({left:end},500);
	};
	function fadeinBanner (tg,op1,op2,imgWidth){		
		if(op1==1){
			tg.css({opacity:op1, left:0}).stop().animate({left:-imgWidth, opacity:op2},500,function(){
				tg.css('display','none');
			});
		} else if(op1==0){
			tg.css('display','block')
			tg.css({opacity:op1,left:imgWidth}).stop().animate({left:'0', opacity:op2},500);
		};
		
	};	
/* ------------------------------------------------------------	*/
	var tab = $('#mainEvent>ul>li');
	var content = $('.tabCon>div');
	content.hide().eq(0).show();
	tab.click(function(){
		var tg = $(this);
		var i = tg.index();
		
		tab.removeClass('active');
		tg.addClass('active');
		
		content.css('display', 'none');
		content.eq(i).css('display', 'block');
		return false;
	});
/* ------------------------------------------------------------	*/
	box1=$('.twitter');
	box1.each(function(){
		var anchor = $(this);
		
		box1.bind('mouseenter focus',function(){
			box1.css('background-position','0px 0px');
		});
		box1.bind('mouseleave blur',function(){
			box1.css('background-position','0px -35px');
		});
	});
	
	box2=$('.facebook');
	box2.each(function(){
		var anchor = $(this);
		
		box2.bind('mouseenter focus',function(){
			box2.css('background-position','-40px 0px');
		});
		box2.bind('mouseleave blur',function(){
			box2.css('background-position','-40px -35px');
		});
	});
	
	box3=$('.naver');
	box3.each(function(){
		var anchor = $(this);
		
		box3.bind('mouseenter focus',function(){
			box3.css('background-position','-80px 0px');
		});
		box3.bind('mouseleave blur',function(){
			box3.css('background-position','-80px -35px');
		});
	});
/* ------------------------------------------------------------ */
	$('.quickIcon>li').hover(
		function(){
			var num = $(this).index()+1;
			$(this).find('>a>img').attr({'src':'images/quick_on_0'+num+'.png'});
		},
		function(){
			var num = $(this).index()+1;
			$(this).find('>a>img').attr({'src':'images/quick_0'+num+'.png'});

		}
	);
	
	quick = true;
	$('.quickToggle').click(function(){
		if(quick){
			$(this).addClass('quickOpen');
			$(this).stop(true,true).animate({'margin-right': '-70px'},500);
			$('.quickmenu').stop(true, true).animate({'margin-right':'-70px'},500,function(){quick=false});
		}else{
			$(this).removeClass('quickOpen');
			$(this).stop(true, true).animate({'margin-right': '0px'},500);
			$('.quickmenu').stop(true, true).animate({'margin-right':'0px'},500,function(){quick=false});
		}
	});
/* ------------------------------------------------------------ */
	var balloon = $('<div class="balloon"></div>').appendTo('body');
	
	function updateBalloonPosition(x, y){
		balloon.css({left: x+15, top: y});
	};
	
	function showBalloon(){
		balloon.stop().css('opacity',0).show().animate({opacity:1}, 1000);
	};
	function hideBalloon(){
		balloon.stop().animate({opacity:0}, 1000,function(){balloon.hide()});
	};
	
	$('body').each(function(){
		var element = $(this);
		var text = element.attr('title');
		element.attr('title','');
		
		element.hover(
			function(a){
				balloon.text(text);
				updateBalloonPosition(a.pageX, a.pageY);
				showBalloon();
			},
			function(){
				hideBalloon();
			}
		);
		
		element.mousemove(function(event){
			updateBalloonPosition(event.pageX, event.pageY);
		});
	});
	/* ------------------------------------------------------------	*/
    $('.pop button').click(function(){
        $('.pop').fadeOut()
    });
});