console.log('\'Allo \'Allo!');

 
jQuery(document).ready(function() {

  //slider
$('.popup-gallery').slick({
  infinite: true,
  slidesToShow: 6,
  slidesToScroll: 1,
  mobileFirst: true,
  arrows:true,
  responsive: [           
            {
              breakpoint: 767,
              settings: {               
                slidesToShow: 6,
                slidesToScroll: 1,                             
              }
            },

            {
              breakpoint: 667,
              settings: {               
                slidesToShow: 4,                                          
              }
            },

            {
              breakpoint: 540,
              settings: {               
                slidesToShow: 3,                                          
              }
            },

            {
              breakpoint: 10,
              settings: {               
                slidesToShow: 2,                                          
              }
            }
        ]   
});



$('.popup-gallery').slickLightbox({
  itemSelector: 'a',
  navigateByKeyboard:true
});

//end slider

//article slider

$('.article-gallery').slick({
  dots: false,
  infinite: true,
  speed: 300,
  slidesToShow: 1,
  adaptiveHeight: true,
  arrows:true,
});

//end article slider

    if ($('html').width() > 1025) {


    $('.post').addClass("is-hidden").viewportChecker({
        classToAdd: 'visible animated fadeIn',
        offset: 100
    });

    $('.in-top').addClass("is-hidden").viewportChecker({
        classToAdd: 'visible animated slideInDown',
        offset: 200
    });

    $('.in-fly').addClass("is-hidden").viewportChecker({
        classToAdd: 'visible animated slideInUp',
        offset: 200
    });

    }    

   
    /*$('html').smoothScroll(300);*/

    /* placeholder*/       
    $('input, textarea').each(function(){
        var placeholder = $(this).attr('placeholder');
        $(this).focus(function(){ $(this).attr('placeholder', '');});
        $(this).focusout(function(){             
            $(this).attr('placeholder', placeholder);           
        });
    });
    /* placeholder*/ 

		//nav
		
		$(".bt-menu").click(function( e ) {        
			$(".bt-menu").toggleClass("bt-menu-open")			
	 	});  
		
			$('.menu-trigger').click(function() {
				$('nav ul').slideToggle(500);
			});//end slide toggle
			
			$(window).resize(function() {		
				if (  $(window).width() > 767 ) {			
					$('nav ul').removeAttr('style');
				 }
			});		
		

	//nav end
	
	//search 

	$(".search-button").click(function( e ) {        
		$(".search-input").toggleClass("search-input-open"),
		$(".search-button").toggleClass("search-button-open")	
	 });


   //switch

   $(".switch-block i").click(function( e ) {        
		$(".autors__layot-block").toggleClass("active")	
	 });

	//вход

	$(".entry").click(function( e ) {
		e.stopPropagation();
		/*$(".cart").toggleClass("is-emersione");*/
		$(".entry-window").slideToggle(400);		
	}); 

	$(".close-entry-window").click(function( e ) {       
		$(this).parents( ".entry-window" ).slideToggle(400)    
	
 }); 


	//вход конец

  //subnav

 	$(".subnav__item_btn").click(function( e ) {
		e.stopPropagation();	
		$(".drop-menu").slideToggle(400);		
	}); 

  $(".drop-menu__close").click(function( e ) {       
		$(this).parents( ".drop-menu" ).slideToggle(400)    
	
 }); 

	//обрезка текста 

	$(".search-window__content-block_text").shorten({
		"showChars" : 80,		
	});

  

	 // tabbed content
    // http://www.entheosweb.com/tutorials/css/tabs.asp
    $(".tab_content").hide();
    $(".tab_content:first").show();

  /* if in tab mode */
    $("ul.tabs li").click(function() {
		
      $(".tab_content").hide();
      var activeTab = $(this).attr("rel"); 
      $("#"+activeTab).fadeIn();		
		
      $("ul.tabs li").removeClass("active");
      $(this).addClass("active");

	  $(".tab_drawer_heading").removeClass("d_active");
	  $(".tab_drawer_heading[rel^='"+activeTab+"']").addClass("d_active");
	  
    });
	/* if in drawer mode */
	$(".tab_drawer_heading").click(function() {
      
      $(".tab_content").hide();
      var d_activeTab = $(this).attr("rel"); 
      $("#"+d_activeTab).fadeIn();
	  
	  $(".tab_drawer_heading").removeClass("d_active");
      $(this).addClass("d_active");
	  
	  $("ul.tabs li").removeClass("active");
	  $("ul.tabs li[rel^='"+d_activeTab+"']").addClass("active");
    });
	
	
	/* Extra class "tab_last" 
	   to add border to right side
	   of last tab */
	$('ul.tabs li').last().addClass("tab_last");
	
  $(document).ready(function() {
    $('select').niceSelect();
  });

  //upload button

  $('#chooseFile').bind('change', function () {
  var filename = $("#chooseFile").val();
  if (/^\s*$/.test(filename)) {
    $(".file-upload").removeClass('active');
    $("#noFile").text("Файл не выбран..."); 
  }
  else {
    $(".file-upload").addClass('active');
    $("#noFile").text(filename.replace("C:\\fakepath\\", "")); 
  }
});

});


	


