$(function(){
	$('#nav>ul>li').on('mouseenter',function(){
		$(this).find('>.twoDepth').stop(true, false).slideDown();
	})
	$('#nav>ul>li').on('mouseleave',function(){
		$(this).find('>.twoDepth').stop(false,true).slideUp();
	})
// ------------------------------------------------------------
	var guideClass = "gray";
	$('.guideText').each(function(){
		var guideText = this.defaultValue;
		var element = $(this);
		element.focus(function(){
			if(element.val()===guideText){
				element.val('');
				element.removeClass(guideClass);
			}
		});
		element.blur(function(){
			if(element.val()===""){
				element.val(guideText);
				element.addClass(guideClass);
			}
		});
		
		if(element.val()===guideText){
			element.addClass(guideClass);
		}
	});

// ------------------------------------------------------------
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
// ------------------------------------------------------------
});