$(document).ready(function() {
        });
        $(window).on("load", function() {
           var $grid = $('.gallery-masonry');

                    $grid.shuffle({
                        itemSelector: '.item',
                        gutterWidth: 0
                    });


$("#rot-feat").owlCarousel({

      navigation : true,
      slideSpeed : 300,
      paginationSpeed : 400,
      pagination: false,

      // "singleItem:true" is a shortcut for:
      items : 5 ,
      navigation:false
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false

      });
        });