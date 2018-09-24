var isMobile = new Object();  
isMobile.Android = function() {return navigator.userAgent.match(/Android/i);}
isMobile.BlackBerry = function() {return navigator.userAgent.match(/BlackBerry/i);}
isMobile.iOS = function() {return navigator.userAgent.match(/iPhone|iPad|iPod/i);}
isMobile.iPad = function() {return navigator.userAgent.match(/iPad/i);}
isMobile.Opera = function() {return navigator.userAgent.match(/Opera Mini/i);}
isMobile.Windows = function() {return navigator.userAgent.match(/IEMobile/i);} 
isMobile.Firefox = function() {return navigator.userAgent.match(/Firefox/ig);}  
isMobile.InternetExplorer = function() {return navigator.userAgent.match(/MSIE/ig);} 
isMobile.Opera = function() {return navigator.userAgent.match(/Opera/ig);}  
isMobile.Safari = function() {return navigator.userAgent.match(/Safari/ig);} 

isMobile.Edge = function() {return null}  
if (document.documentMode || /Edge/.test(navigator.userAgent)) {
   isMobile.Edge = function() {return true}  
}
 
isMobile.any = function() {return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());}
if(isMobile.any() && isMobile.iPad()==null){
//return;
}

$(document).ready(function(){
	var winWidth = $(window).innerWidth();

	$('.slimmenu').slimmenu({
		resizeWidth: '1157',
		collapserTitle: '',
		animSpeed:'medium',
		indentChildren: true,
		childrenIndenter: '&raquo;'
	});

	var slider_HT;
	$('ul.slimmenu li').mouseenter(function(){
		slider_HT = $('#slider_holder').innerHeight();
		//setSubNavBackground();
	});

	function setSubNavBackground(){
		$('ul.slimmenu li > ul').css({height:slider_HT+'px'});
	}
	

	$(window).resize(function(){
		slider_HT = $('#slider_holder').innerHeight();
		//setSubNavBackground();
	});

	$(window).scroll(function(){
			if ($(this).scrollTop() > 200) {
		       	TweenMax.set('.hd_top', {display:'none'});
				TweenMax.to('header',2,{position:'fixed',ease:Sine.easeInOut});

		    }else {
		        TweenMax.set('.hd_top', {display:'block'});
				TweenMax.to('header',2,{position:'relative',ease:Sine.easeOut});
		    }
	});

	if(winWidth < 1157){
		var topHeader = $('.hd_top').remove();
		$(topHeader).insertAfter('ul.slimmenu.collapsed > li:last-child');
		TweenMax.set('.hd_top', {display:'block'});
		//console.log(topHeader);
	}

	TweenMax.set('#search_con', { opacity:0, top:'-50%'});
	$('.search').bind('click', function(){
		TweenMax.to('#search_con',0.8,{opacity:1, top:0,ease:Sine.easeInOut});
	});

	$('.closeSearch').bind('click', function(){
		TweenMax.to('#search_con',0.8,{opacity:0, top:'-50%',ease:Sine.easeInOut});
	});


	$('.footerClose').bind('click', function(){
		if($(this).hasClass('open')){
			$('.footerClose').removeClass('open');
			$('.footer').slideDown(500);
			$("html, body").animate({ scrollTop:($('.footer').offset().top)}, {duration:1200, easing:'easeInOutCubic'});
			TweenMax.to('.arrow',0.5, {rotation: 180, ease:Sine.easeInOut});
			$('.ft_close').empty();
			$('.ft_close').text('Close');
		}else{
			$('.footerClose').addClass('open');
			$('.footer').slideUp(500);
			TweenMax.to('.arrow',0.5, {rotation: 0, ease:Sine.easeInOut});
			$('.ft_close').empty();
			$('.ft_close').text('Open');
		}
	});


});