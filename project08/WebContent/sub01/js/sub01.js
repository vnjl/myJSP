$(function(){
	$('#nav>ul>li').on('mouseenter',function(){
		$(this).find('>.twoDepth').stop(true, false).slideDown(500);
	})
	$('#nav>ul>li').on('mouseleave',function(){
		$(this).find('>.twoDepth').stop(false,true).slideUp(1);
	})

/* 	$('#nav>ul>li').hover(
		function(){
			$(this).find('>.twoDepth').stop(ulue, ulue).slideDown(500);
		}, 
		function(){
			$(this).find('>.twoDepth').stop(false, false).slideUp(1);
			return false;
		}
	) */
//---------------------------------------------------------------
	var class_closed = 'closed';
	$('.QnA').each(function(){
		var ul = $(this);
		var question = ul.find('.titleText');
		var answer = ul.find('.text');
		
		//모두 닫는 함수
		function closeAll () {
			question.addClass(class_closed);
			answer.addClass(class_closed);
		};
		//지정된 요소를 닫는 함수
		function open (q,a) {
			q.removeClass(class_closed);
			a.removeClass(class_closed);
		};
		
		closeAll();
		
		
		question.click(function(){
			var q = $(this);
			var a = q.next();
			closeAll();
			open(q,a);
		});
	});
//----------------------------------------------------------------
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
//----------------------------------------------------------------
  	var ul = $('ul.QnA');
	
	$.ajax({
		url:'data.xml',
		dataType:'xml',
		success:function(data){
			var contents = $(data);
			contents.find('content').each(function(){
				var content = $(this);
				var num = content.find('num').text();
				var title = content.find('title').text();
				var textBox = content.find('textBox').text();
				var ul = $('.QnA');
				var number = $('<p class="titleNum"></p>').text(num);
				var title = $('<div class="titleText"></div>').text(title);
				var textBox = $('<div class="text"></div>').text(textBox);
				/* ul.append(num);
				ul.append(title);
				ul.append(textBox);
				ul.append(ul); */
				
				$('.')
				
			});
		}
	});
});