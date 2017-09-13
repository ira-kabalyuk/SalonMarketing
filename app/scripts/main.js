console.log('\'Allo \'Allo!');

 
jQuery(document).ready(function() {

  //slider

 $('.popup-gallery').magnificPopup({      
        /*midClick: true,
		delegate: 'a',
		type: 'image',
		tLoading: 'Loading image #%curr%...',
		mainClass: 'mfp-img-mobile',*/
		gallery: {
			enabled: true,
			/*navigateByImgClick: true,
			preload: [0,1] // Will preload 0 - before current, and 1 after the current image*/
		},
		image: {
			tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
			/*titleSrc: function(item) {
				return item.el.attr('title') + '<small>by Marsel Van Oosten</small>';
			}*/
		},
        items: [
            {
            src: '#v1',
            type: 'inline'
          },          
          {
            src: 'http://farm9.staticflickr.com/8382/8558295631_0f56c1284f_b.jpg'
          },
          {
            src: 'http://farm9.staticflickr.com/8225/8558295635_b1c5ce2794_b.jpg'
          },
          {
            src: 'http://farm9.staticflickr.com/8235/8559402846_8b7f82e05d_b.jpg'
          },

          {
            src: 'http://farm9.staticflickr.com/8235/8559402846_8b7f82e05d_s.jpg'
          },

          {
            src: 'http://farm9.staticflickr.com/8235/8558295467_e89e95e05a_b.jpg'
          },
          {
            src: 'http://farm9.staticflickr.com/8378/8559402848_9fcd90d20b_b.jpg'
          },
          {
            src: 'images/photo.jpg'
          },
          
        ],
        type: 'image' // this is default type
	});

//end slider

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
	


});


	


