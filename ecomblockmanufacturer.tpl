
	{if !empty($ecommanufacturers )}
		<div id="ecomblockmanufacturer" class="block ecomblockmanufacturer carousel slide col-xs-12 col-sm-12 col-md-12 col-lg-12">
				{if $show_title}
					<!-- <h4 class="title_block nostyle">{l s='Our Brands' mod='ecomblockmanufacturer'}</h4> -->
				{/if}

				<div class="block_content">
						{$tabname="ecomblockmanufacturer_hook"}
						{if !empty($ecommanufacturers)}
							<div id="{$tabname}">
								{* if count($ecommanufacturers) > $manuf_page}
									<div class="carousel-controls">
										
										<a class="carousel-control right" href="#{$tabname}" data-slide="next">&rsaquo;</a>
									</div>
								{/if *}
								<div class="carousel-brands">
									{$ecommanufacterer=array_chunk($ecommanufacturers,$manuf_page)}
									{foreach from=$ecommanufacterer item=ecommanufacturers name=mypLoop}
										{foreach from=$ecommanufacturers item=manuf name=ecommanufacturer}
											<div style="width:150px; outline:none;">
												<div class="block_manuf clearfix">
													{if $manuf.linkIMG}
														<div class="blog-image">
															<a href="{$manuf.link|escape:'html':'UTF-8'}" title="View {$manuf.name} brand at Light Online">
																<img class="img-responsive" src="{$img_manu_dir}{$manuf.linkIMG}" alt="Shop {$manuf.name} lighting products online at Light Online" title="Shop {$manuf.name} brand lighting products online at Light Online" />
															</a>
														</div>
													{/if}
												</div>
											</div>
										{/foreach}
									{/foreach}
								</div>
							</div>
						{/if}
				</div>
			
		</div>
	{/if}
<!-- /MODULE Block ecomblockmanufacturer -->

 {literal}
  <script type="text/javascript">
  /*$(document).ready(function() {
      $('#{/literal}{$tabname}'{literal}).each(function(){
          $(this).carousel({
              pause: 'hover',
              interval: {/literal}{$interval}{literal}
          });
      });
  });*/
	$(document).ready(function(){
	  $('.carousel-brands').slick({
	    infinite: true,
	    slidesToShow: 8,
  		slidesToScroll: 1,
  		lazyLoad: 'ondemand',
  		prevArrow:'<a class="carousel-controlx left">&lsaquo;</a>',
  		nextArrow:'<a class="carousel-controlx right">&rsaquo;</a>',
  		responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 1,
        infinite: true,
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
	  });
	});
  </script>
 {/literal}
