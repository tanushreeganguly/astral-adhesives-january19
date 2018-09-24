$(document).ready(function(){
   var owl = $('#slider_holder').owlCarousel({
        animateOut: 'fadeOut',
        autoplay: true,
        loop: true,
        items: 1,
        margin: 0,
        stagePadding: 0,
        smartSpeed: 1300,
        autoplayTimeout:8000,
        dots: true,
        navigation: false,
        mouseDrag: false,
        pagination: false
    });


    function onSlideChange(){
          TweenMax.set('.bannerDet .overlay', {width:0});
          TweenMax.set('.bannerDet span', {opacity:0, top:'60px'});
          TweenMax.set('.knowMoreBtn', {opacity:0 ,y:10});

          TweenMax.killTweensOf('#slider_holder .owl-stage-outer img');
          setTimeout(function(){
            var currAnim = $('#slider_holder .owl-stage-outer .active');
            TweenMax.staggerTo(currAnim.find('.bannerDet .overlay'), 0.7, {width:'100%', ease:Sine.easeOut, onComplete:function(){
              TweenMax.set(currAnim.find('.bannerDet span'), {opacity:1,});
              TweenMax.staggerTo(currAnim.find('.bannerDet span'), 0.7, {top:0, ease:Sine.easeOut, onComplete:function(){
                TweenMax.to(currAnim.find('.knowMoreBtn'),0.5,{opacity:1,y:0,ease:Sine.easeOut});
              }}, 0.1);
            }}, 0.2);
            

            TweenMax.killTweensOf(currAnim.find('img'));
            TweenMax.set(currAnim.find('img'),{scale:1,opacity:1});
            TweenMax.to(currAnim.find('img'),0.5,{opacity:1,ease:Sine.easeOut});
            TweenMax.to(currAnim.find('img'), 25, {scale:1.1, ease: Sine.easeOut});

          },10);
    }
    onSlideChange();

      owl.on('changed.owl.carousel', onSlideChange);

    owl.on('translated.owl.carousel', function(event) {
     var notActiveSlide = $('.carouselCon .owl-item').not('.active');
     TweenMax.set(notActiveSlide.find('img'),{opacity:0});

    }); 

    var tilesGroup = 8;
    var tilesArr = $('.tilesCon .tiles');
    var item;
    tilesArr.remove();
    
    for (var i=0; i<tilesArr.length; i++) {
      var htmlStr = tilesArr[i];

      if((i%tilesGroup) == 0){
        item = $('<div class="item"></div>')
        $('.tilesCon').append(item);
      }

      item.append($(htmlStr));

    }

    $('.tilesCon').owlCarousel({
        autoplay: false,
        loop: false,
        items: 1,
        margin: 15,
        stagePadding: 0,
        smartSpeed: 1300,
        autoplayTimeout:8000,
        dots: true,
        navigation: false,
        mouseDrag: false,
        pagination: false
    });

    var tilesPagination = $('.tilesCon').find('.owl-dot');
    tilesPagination.each(function(){
      $(this).children('span').text($(this).index()+1);
    });


   $('.counter').counterUp({
        delay: 8,
        time: 1000
   });

   setCubeRolloverEffect();


});

function setCubeRolloverEffect(){
  function set3dEffect(){
    var cubeHeight, halfCubeHeight; 
    function onResize(){
        cubeHeight = $('.tilesCon .tiles').height();
      halfCubeHeight = cubeHeight/2;
      TweenMax.set('.tilesCon .tiles', {perspective:'500px', verticalAlign:'top' });
      TweenMax.set('.tilesCon .cube', {height:cubeHeight,  transformStyle: 'preserve-3d'});
      TweenMax.set('.tilesCon .tile_front_face,.tilesCon .tile_back_face', {height:cubeHeight });   
      TweenMax.set('.tilesCon .tile_back_face', {display:'block' });

    }
      $(window).resize(onResize);
      onResize();
      var cubeParent = $('.tilesCon .tiles');
      cubeParent.hover( function(e){
        var cube = $(this).find('.cube');
        if(e.type == 'mouseenter'){   
          var speed = 0.8;    
          TweenMax.killTweensOf(cube);
          TweenMax.to(cube, speed, { rotationX:90, y:-halfCubeHeight, ease:Sine.easeInOut});
          TweenMax.to(cube, speed/2, { z:-150, ease:Sine.easeOut});
          TweenMax.to(cube, speed/2, { z:-halfCubeHeight, ease:Sine.easeIn, delay:speed/2});
        }
        if(e.type == 'mouseleave'){
          var speed = 0.8;
          TweenMax.killTweensOf(cube);
          TweenMax.to(cube, speed, { rotationX:0, y:0,  ease:Sine.easeInOut});
          TweenMax.to(cube, speed, { z:0, ease:Sine.easeIn});
        }
      })
      TweenMax.set('.tile_back_face', { y:-halfCubeHeight, z:-halfCubeHeight, rotationX:-90});    
  }


  function set2dEffect(){
    var cubeHeight, halfCubeHeight; 
    function onResize(){  
      cubeHeight = $('.tilesCon .tiles').height();
      halfCubeHeight = cubeHeight/2;
      $('.tilesCon .cube').css({height:cubeHeight+'px', overflow:'hidden' }); 
      $('.tilesCon .tile_front_face,.tilesCon .tile_back_face').css({height:cubeHeight+'px' });   
      $('.tilesCon .tile_back_face').css({display:'block', position:'relative'});

    }
      $(window).resize(onResize);
      onResize();
      var cubeParent = $('.tilesCon .tiles');
      cubeParent.hover( function(e){
        var front = $(this).find('.cube .tile_front_face');
        if(e.type == 'mouseenter'){  
          front.animate({
            marginTop: -cubeHeight+'px'
          }, 400);
        }
        if(e.type == 'mouseleave'){         
          front.animate({
            marginTop: '0px'
          }, 400);
        }
      })
  }

  function setMobileEffect(){
    TweenMax.set('.tilesCon .tile_front_face', {display:'none' });
    TweenMax.set('.tilesCon .tile_back_face', {display:'block' });
  }

  function setCommonCSS(){
    var frontFaces = $('.tilesCon .tile_front_face');
    var face;
    for (var i = 0; i < frontFaces.length; i++) {
      face = $(frontFaces[i]);
      var mod4 = i%4;
      if(mod4==0 || mod4==3){
        face.css({background:'#0060ae'});
        face.find('.desc_con').css({color:'#ffffff'});
      }else{
        face.css({background:'#ffffff', color:'#0060ae'});
        face.find('.desc_con').css({color:'#2d2d2d'});
      }


    }

  }
  setCommonCSS();
  if(isMobile.any()){
    setMobileEffect();
  }else if (window.Modernizr && Modernizr.csstransforms3d && Modernizr.preserve3d) {  
    set3dEffect();
  } else {
    set2dEffect();
  }
}
