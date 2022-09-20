$(function(){
	$('#nav>ul>li').on('mouseenter',function(){
		$(this).find('>.twoDepth').stop(true, false).slideDown();
	})
	$('#nav>ul>li').on('mouseleave',function(){
		$(this).find('>.twoDepth').stop(false,true).slideUp();
	})
//--------------------------------------------------------------------------
});