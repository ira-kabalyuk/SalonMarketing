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

	//обрезка текста 

	$(".search-window__content-block_text").shorten({
		"showChars" : 80,		
});


  //checkbox block

   $(".checkbox-block").click(function( e ) {        
       $(".checkbox-block").removeClass("block-active")
        $(this).addClass("block-active");
       
    });     

  //end checkbox block 

 

  //catalog-menu

   $(".catalog-menu-list li").click(function( e ) {        
       $(".catalog-menu-list li").removeClass("menu-active")
        $(this).addClass("menu-active");
       
    });



    //paging

     $(".paging-list a").click(function( e ) {        
       $(".paging-list a").removeClass("page-active")
        $(this).addClass("page-active");
       
    });  

    //end paging 

   /* objectFit.polyfill({
		selector: 'img', // this can be any CSS selector
		fittype: 'contain', // either contain, cover, fill or none
		disableCrossDomain: 'true' // either 'true' or 'false' to not parse external CSS files.
	});  */


});


	


