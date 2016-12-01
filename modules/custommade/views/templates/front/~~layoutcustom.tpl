{*
* @version 1.0
* @author 202-ecommerce
* @copyright 2014-2015 202-ecommerce
* @license ?
*}

<style>   
	.container {
		width: 1100px;
		margin: 30px auto
	}
	
    .row-eq-height {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
    }

    .no-gutter > [class*='col-'] {
        padding-right: 0;
        padding-left: 0;
    }

    input[type="radio"] {
        display: none;
    }

    input[type="radio"] + label {
        /*color: #292321;*/
        /*font-family: Arial, sans-serif;*/
        font-size: 14px;
    }

    input[type="radio"] + label span {
        display: inline-block;
        width: 10px;
        height: 10px;
        margin: -1px 4px 0 0;
        vertical-align: middle;
        cursor: pointer;
    }

    input[type="radio"] + label span {
        background-color: none;
        border: 1px solid #ddd;
    }

    input[type="radio"]:checked + label span {
        background-color: #8a6293;
        border: 1px solid #8a6293;
    }

    input[type="radio"] + label span,
    input[type="radio"]:checked + label span {
        -webkit-transition: background-color 0.4s linear;
        -o-transition: background-color 0.4s linear;
        -moz-transition: background-color 0.4s linear;
        transition: background-color 0.4s linear;
    }

    .ghost-button {
        color: #a1be7c;
        background-color: #fff;
        border: 2px solid #a1be7c;
        padding: 8px;
    }

    .ghost-button:hover, .ghost-button:focus, .ghost-button:active {
        color: #a1be7c;
        text-decoration: none;
    }

	 .tabs-left, .tabs-right {
            border-bottom: none;
        }

        .tabs-left {
            border-right: 1px solid #ddd;
        }

        .tabs-right {
            border-left: 1px solid #ddd;
        }

        .tabs-left > li, .tabs-right > li {
            float: none;
            margin-bottom: 2px;
        }

        .tabs-left > li {
            margin-right: -1px;
        }

        .tabs-right > li {
            margin-left: -1px;
        }

        .tabs-left > li.active > a,
        .tabs-left > li.active > a:hover,
        .tabs-left > li.active > a:focus {
            border-bottom-color: #ddd;
            border-right-color: transparent;
        }

        .tabs-right > li.active > a,
        .tabs-right > li.active > a:hover,
        .tabs-right > li.active > a:focus {
            border-bottom: 1px solid #ddd;
            border-left-color: transparent;
        }

        .tabs-left > li > a {
            border-radius: 4px 0 0 4px;
            margin-right: 0;
            display: block;
        }

        .tabs-right > li > a {
            border-radius: 0 4px 4px 0;
            margin-right: 0;
        }

        #base-image {
            max-width: 100%;
            max-height: 300px;
        }

        .transform-buttons button {
            height: 40px;
            border-radius: 0 !important;
        }

        .transform-info, .transform-info:hover, .transform-info:active, .transform-info:focus {
            border-radius: 0;
            background-color: #8a6293;
            color: white;
            cursor: default;
            font-size: 18px;
        }

        .button-group button {
            border-radius: 0 !important;
        }

        .customise-section {
            margin-top: 30px;
        }

        .cart-section {
            margin-top: 30px;
        }

        .colour-options {
            font-size: 1.1em;
            margin-top: 30px;
        }

        .colour-options img {
            cursor: pointer;
        }

        .colour-options p {
            margin-top: 10px;
            margin-bottom: 0px;
        }

        .colour-options .greyscale {
            -webkit-filter: grayscale(100%);
            filter: grayscale(100%);
            filter: gray;
            filter: url("data:image/svg+xml;utf8,<svg version='1.1' xmlns='http://www.w3.org/2000/svg' height='0'><filter id='greyscale'><feColorMatrix type='matrix' values='0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0' /></filter></svg>#greyscale");
        }

        .colour-options .sepia {
            filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'old-timey\'><feColorMatrix type=\'matrix\' values=\'0.14 0.45 0.05 0 0 0.12 0.39 0.04 0 0 0.08 0.28 0.03 0 0 0 0 0 1 0\'/></filter></svg>#old-timey");
            -webkit-filter: sepia(1);
            -webkit-filter: sepia(100%);
            -moz-filter: sepia(100%);
            -ms-filter: sepia(100%);
            -o-filter: sepia(100%);
            filter: sepia(100%);
        }

        .previews {
            border: 1px solid #ddd;
            display: inline-block;
            width: 100%;
            overflow: hidden;
        }

        .preview_preview-text-container {
            padding: 10px 10px 0 20px;
            background-color: #dddddd;
            margin: 0;
        }

        .preview_preview-text-container p {
            color: #8a6293;
        }

        .preview_preview-text-container p small {
            color: #aaa;
        }

        .previews .tab-content {
            margin: 0;
        }

        .cart-section {
            border: 1px solid #ddd;
            text-align: center;
            padding-bottom: 20px;
        }

        .choose-area {
            padding-bottom: 0;
        }

        .cart-section h3 {
            padding-bottom: 10px;
            border-bottom: 1px solid #ddd;
            color: grey;
            font-size: 18px;
            font-weight: 300;
        }

        .cart-section .radio label {
            padding: 0;
        }

        .wall-dimensions .radio {
            display: inline-block;
        }

        .choose-info {
            background-color: #a1be7c;
            margin: 0;
            color: white;
        }

        .choose-info:before {
            content: " ";
            background-image: url("https://api.createawall.co.uk/img/info-icon.png");
            background-repeat: no-repeat;
            background-position: center center;
            height: 16px;
            width: 16px;
            position: relative;
            display: inline-block;
            background-repeat: no-repeat;
            top: 3px;
            margin-right: 0px;
        }

        .choose-info p {
            padding: 8px 0.5em 8px;
            display: inline-block;
            margin-bottom: 0;
        }

        .upload-zip-button {
            background-color: #a1be7c;
            color: white;
            border-radius: 0;
            font-size: 1em;
        }

        .single_add_to_cart_button {
            background-color: #a1be7c;
            color: white;
            width: 100%;
            border-radius: 0;
            font-size: 20px;
        }

        .single_add_to_cart_button:hover {
            color: white;
        }

        .single_add_to_cart_button img {
            margin-right: 10px;
        }

        .or {
            margin: 40px 0;
        }

        .canvas-template {
            cursor: pointer;
        }

        .save-design-link-container {
            padding: 21px 0px;
        }

        [name="canvas-variation"] {
            padding: 0;
        }

        .method-info {
            cursor: pointer;
        }

        .not-happy {
            margin-top: 30px;
        }

        #go-back {
            line-height: 19px;
            background: #8a6293;
            border: #8a6293;
        }

        ul.share-buttons {
            list-style: none;
            padding: 15px 0 0 0;
        }

        ul.share-buttons li {
            display: inline;
        }

        .fixedsticky {
            top: 25px;
        }

        .change-image {
            margin-top: 2em;
            background-color: #8b6394;
            color: white;
            padding-top: 3em;
            padding-bottom: 3em;
        }

        .change-image h3 {
            margin-right: 1em
        }

        .change-image .btn {
            margin-top: -13px;
            margin-left: 13px;
        }

        .change-image h3, .change-image .btn {
            display: inline-block;
        }

        #collage-preview-non-sticky img {
            margin-top: 30px;
        }

        #cropper-tool-container {
            min-height: 330px;
            max-height: 500px;
            overflow: hidden;
        }

        @media (max-width: 991px) {
            .change-image h3 {
                font-size: 22px;
            }
        }

        @media (max-width: 767px) {
            .change-image .btn {
                margin-top: 10px;
                margin-left: 0;
            }

            .transform-buttons .btn {
                margin-left: 0 !important;
            }

            .transform-buttons > .btn {
                display: inline-block;
                width: 50%;
            }

            .customise-section .transform-info {
                width: 100%;
                border: 0;
            }

            .previews.customise-section {
                /*display: none;*/
            }

            #left-col {
                margin-bottom: 2em;
            }

            #cropper-tool-container {
                max-height: 300px;
            }
        }
		.overlay {
            position: absolute;
            bottom: 0;
            max-width: 100%;
            top: 0;
        }        
        .overlay {
            position: relative;
        }

            .backdrop {
                position: absolute;
                text-align: center;
                width: 100%;
                background-image: url("https://api.createawall.co.uk/img/wallpaper-bg.png");
            }

            .backdrop .preview {
                height: 100%;
            }
                
        @media (max-width: 767px) {
            .preview_preview-text-container {
                width: 100% !important;
            }

            .tabs-left > li {
                display: inline-block;
                width: auto;
            }

            .tabs-left, .tabs-left > li > a {
                border: none;
            }

            .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
                border: none;
            }
        }
</style>
  <div class="container">
    <div class="row">
        <div class="col-md-8" id="left-col">
            <div id="cropper-tool-container">
                <img id="base-image" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg" alt="" class="">
                <div class="cropper-container cropper-bg">
                    <div class="cropper-wrap-box">
                        <div class="cropper-canvas" ><img src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg" ></div>
                    </div>
                    <div class="cropper-drag-box cropper-modal"></div>
                    <div class="cropper-crop-box">
						<span class="cropper-view-box"><img src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg"></span>						
					</div>
                </div>
                <p>
                    You can add effects and transform your image using the following tools.
                    If you do not wish to alter your image in any way,
                    simply choose the area you wish to be included on your wallpaper and complete your order.
                </p>
            </div>
            <div class="customise-section">
                <div class="btn-group transform-buttons" role="group" aria-label="...">
                    <button type="button" class="btn btn-default transform-info">
                    Image manipulation tools:
                    </button>
                    <button type="button" class="btn btn-default image-rotate-left">
                    Rotate left
                    </button>
                    <button type="button" class="btn btn-default image-rotate-right">
                    Rotate right
                    </button>
                    <button type="button" class="btn btn-default image-flip-horizontally">
                    Flip horizontally
                    </button>
                    <button type="button" class="btn btn-default image-flip-vertically">
                    Flip vertically
                    </button>
                </div>
            </div>
            <div class="customise-section row colour-options text-center">
                <div class="col-xs-4">
                    <img class="normal" data-filter-type="none" src="{$base_dir|escape:'html':'UTF-8'}images/product_normal.jpg" alt="">
                    <p>
                        Original
                    </p>
                </div>
                <div class="col-xs-4">
                    <img data-filter-type="greyscale" src="{$base_dir|escape:'html':'UTF-8'}images/product_black_white.jpg" alt="">
                    <p>
                        Black and White
                    </p>
                </div>
                <div class="col-xs-4">
                    <img data-filter-type="sepia" src="{$base_dir|escape:'html':'UTF-8'}images/product_sepia.jpg" alt="">
                    <p>
                        Sepia
                    </p>
                </div>
            </div>
            <div class="previews customise-section" id="previews-container">
                <div class="col-xs-12 col-sm-3 no-gutter" style="padding-right:0;padding-left:0;">
                    
                    
                    <ul class="nav nav-tabs tabs-left">
                    
                        {foreach from=$getUnivers item=Univers name=myLoop}
                        <li class="active">
                            <a href="#scene{$getUnivers->univers_id|escape:'html':'UTF-8'}" data-toggle="tab">{$getUnivers->univers_name|escape:'html':'UTF-8'}</a>
                        </li>
                        {/foreach}
                        
                        <li>
                            <a href="#scene2" data-toggle="tab">Boy's Room</a>
                        </li>
                        <li>
                            <a href="#scene3" data-toggle="tab">Dining Room</a>
                        </li>
                        <li>
                            <a href="#scene4" data-toggle="tab">Girl's Room</a>
                        </li>
                        <li>
                            <a href="#scene5" data-toggle="tab">Kitchen</a>
                        </li>
                        <li>
                            <a href="#scene6" data-toggle="tab">Nursery</a>
                        </li>
                        <li>
                            <a href="#scene7" data-toggle="tab">Office</a>
                        </li>
                        <li>
                            <a href="#scene8" data-toggle="tab">Living Room</a>
                        </li> 
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-9 no-gutter" >
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="scene1">
                            <div class="backdrop" >
                                <img  class="preview">
                            </div>
                            <div class="overlay">
                                <img src="{$base_dir|escape:'html':'UTF-8'}images/bedroom.png">
                            </div>
                        </div>
                        <div class="tab-pane" id="scene2">
							<div class="backdrop" >
                                <img class="preview" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg">
                            </div>
                            <div class="overlay">
                                <img src="{$base_dir|escape:'html':'UTF-8'}images/boys_room.png">
                            </div>
                        </div>
                        <div class="tab-pane" id="scene3">
                            <div class="backdrop" >
                                <img class="preview" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg">
                            </div>
                            <div class="overlay">
                                <img src="{$base_dir|escape:'html':'UTF-8'}images/dining_room.png">
                            </div>
                        </div>
                        <div class="tab-pane" id="scene4">
                           <div class="backdrop" >
                                <img class="preview" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg">
                            </div>
                            <div class="overlay">
                                <img src="{$base_dir|escape:'html':'UTF-8'}images/girls_room.png">
                            </div>
                        </div>
                        <div class="tab-pane" id="scene5">
							<div class="backdrop" >
                                <img class="preview" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg">
                            </div>
                            <div class="overlay">
                                <img src="{$base_dir|escape:'html':'UTF-8'}images/kitchen.png">
                            </div>
                        </div>
                        <div class="tab-pane" id="scene6">
                            <div class="backdrop" >
                                <img class="preview" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg">
                            </div>
                            <div class="overlay">
                                <img src="{$base_dir|escape:'html':'UTF-8'}images/nursery.png">
                            </div>
                        </div>
                        <div class="tab-pane" id="scene7">
                            <div class="backdrop" >
                                <img class="preview" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg">
                            </div>
                            <div class="overlay">
                                <img src="{$base_dir|escape:'html':'UTF-8'}images/office.png">
                            </div>
                        </div>
                        <div class="tab-pane" id="scene8">
                            <div class="backdrop" >
                                <img class="preview" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg">
                            </div>
                            <div class="overlay">
                                <img src="{$base_dir|escape:'html':'UTF-8'}images/living-room.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4" id="right-col">            
            <div class="cart-section wall-dimensions">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <h3>
                            Enter your wall dimensions:
                        </h3>
                        <div class="radio">
                            <p>
                                <input id="dimensions-unit-cm" value="centimeters" name="dimension-unit" type="radio">
                                <label class="dimension-unit-label" for="dimensions-unit-cm"><span></span>CM</label>
                            </p>
                        </div>
                        <div class="radio">
                            <p>
                                <input id="dimensions-unit-m" checked="checked" value="meters" name="dimension-unit" type="radio">
                                <label class="dimension-unit-label" for="dimensions-unit-m"><span></span>M</label>
                            </p>
                        </div>
                        <div class="radio">
                            <p>
                                <input id="dimensions-unit-inch" value="inch" name="dimension-unit" type="radio">
                                <label class="dimension-unit-label" for="dimensions-unit-inch"><span></span>Inch</label>
                            </p>
                        </div>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label for="width" class="col-sm-3 control-label">Width</label>
                                <div class="col-sm-9">
                                    <input value="2.5" class="form-control" id="dimensions-width" type="number">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="height" class="col-sm-3 control-label">Height</label>
                                <div class="col-sm-9">
                                    <input value="2" class="form-control" id="dimensions-height" type="number">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart-section">
                <div class="row">
                    <div class="col-xs-10 col-xs-offset-1">
					 <div style="width: 100%;display: inline-table;">
                                <h3 class="text-left" style="width: 50%; display: inline-block">
                                    Total Price:
                                </h3>
                                <h3 class="text-right" style="width: 50%; display: inline-block; font-weight: 500; font-size: 22px">
                                    £<span class="price">155.94</span>
                                </h3>
                            </div>
                        <p id="add_to_cart" class="buttons_bottom_block no-print">
							<button type="submit" name="Submit" class="exclusive">
								<span>Add to cart</span>
							</button>
						</p>
						<p class="or">
							or
						</p>
                        <p>
                            <a href="#" class="ghost-button" id="save-design">
								SAVE YOUR DESIGN
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript">

(function ($) {
        $(document).ready(function () {
            var masonryGrid = $('.masonry-grid');
            masonryGrid.masonry({
                itemSelector: '.image',
                columnWidth: '.image',
                percentPosition: true
            });

            masonryGrid.imagesLoaded().progress( function() {
                masonryGrid.masonry('layout');
            });

        });
    })(jQuery);
</script>
 
<script>

(function ($) {

            $('#collage-preview').fixedsticky();

            document.title = "Floodlights on Area - Create A Wall";
            
            var jobId = '1';
            var base_url = 'https://api.createawall.co.uk';

            function makeTransformation(type, id, data) {
                var url = "";

                switch (type) {
                    case 'crop':
                        url = "https://api.createawall.co.uk/transform/0/crop";
                        break;
                    case 'rotate':
                        url = "https://api.createawall.co.uk/transform/0/rotate";
                        break;
                    case 'flip':
                        url = "https://api.createawall.co.uk/transform/0/flip";
                        break;
                    case 'filter':
                        url = "https://api.createawall.co.uk/transform/0/filter";
                        break;
                    default:
                        return false;
                }

                url = url.replace('0', id);

                var manipulationButtons = $('.transform-buttons button');

                // Add the image data to the transformation data.
                data = addImageData(data);

                $.ajax({
                    url: url,
                    method: 'POST',
                    data: data,
                    beforeSend: function () {
                        manipulationButtons.each(function (key, button) {
                            $(button).addClass('disabled');
                        });
                    },
                    success: function (response) {
                        $('.preview').attr('src', base_url + response.processedImageUrl);
                    },
                    complete: function () {
                        manipulationButtons.each(function (key, button) {
                            $(button).removeClass('disabled');
                        });
                    }
                });
            }

            /**
             * Add the image data to the provided object.
             */
            function addImageData(data) {
                var imageData = image.cropper('getImageData');

                /**
                 * If the image has been rotated on it's side flip the width and height to ensure the server-side
                 * percentage conversion is correct.
                 */
                switch (imageData.rotate) {
                    case 90:
                    case 270:
                        data.imageWidth = imageData.naturalHeight;
                        data.imageHeight = imageData.naturalWidth;
                        break;
                    default:
                        data.imageWidth = imageData.naturalWidth;
                        data.imageHeight = imageData.naturalHeight;
                }

                return data;
            }

            var image = $('#base-image');
            var options = {
                viewMode: 1, // Can use 'viewMode: 3' to remove the canvas borders but causes zoom issues on rotate.
                aspectRatio: 1 / 1,
                dragMode: 'move',
                checkCrossOrigin: false,
                zoomOnWheel: false,
                zoomable: false,
                movable: false,
                //        scalable: false,
                cropBoxResizable: false,
                minCropBoxHeight: 2000,
                guides: false,
                cropend: function (e) {
                    makeTransformation('crop', jobId, $(this).cropper('getData'));
                }
            };

            
            image.cropper(options);

            $(document).on('click', '.transform-info', function (e) {
                e.preventDefault();
            });

            $(document).on('click', '.image-rotate-left', function (e) {
                e.preventDefault();

                if ($(this).hasClass('disabled')) {
                    return;
                }

                image.cropper('rotate', -90);
                makeTransformation('rotate', jobId, image.cropper('getData'));
            });

            $(document).on('click', '.image-rotate-right', function (e) {
                e.preventDefault();

                if ($(this).hasClass('disabled')) {
                    return;
                }

                image.cropper('rotate', 90);
                makeTransformation('rotate', jobId, image.cropper('getData'));
            });
		   
		   /*           prabakaran                  */
		   
		 			$(document).on('click', '.image-flip-horizontally', function (e) {
                e.preventDefault();

                if ($(this).hasClass('disabled')) {
                    return;
                }

                var reversed = -1 * image.cropper('getData').scaleX;
                image.cropper('scaleX', reversed);

               
            });

            $(document).on('click', '.image-flip-vertically', function (e) {
                e.preventDefault();

                if ($(this).hasClass('disabled')) {
                    return;
                }

                var reversed = -1 * image.cropper('getData').scaleY;
                image.cropper('scaleY', reversed);                
            });

            $(document).on('click', '.image-reset', function (e) {
                e.preventDefault();

                if ($(this).hasClass('disabled')) {
                    return;
                }

                image.cropper('reset');              
            });

            $(document).on('click', '.colour-options img', function (e) {
                e.preventDefault();
                var button = $(this);

                if ($(this).hasClass('disabled')) {
                    return;
                }               
            });

			
			 /*           prabakaran                  */

            /**
             * Update The Hidden Fields
             */

            /**
             * Calculate wall dimensions and update quantity hidden field.
             */

            var updateWallPrice = function () {
                var dimensions = calculateWallDimension();
                var hiddenQuantity = $('[name="quantity"]');
                var hiddenVariation = $('[name="variation_id"]');

                                /**
                 * Quantity is actually now based on a 100th of a meter squared.
                 */
                var quantity = dimensions.squared * 100;
                hiddenQuantity.val(quantity);

                var hiddenWidth = $('[name="wallpaper_width"]');
                var hiddenHeight = $('[name="wallpaper_height"]');
                hiddenWidth.val(dimensions.width);
                hiddenHeight.val(dimensions.height);
                
                var applicationMethod = $('[name="application-method"]:checked');
                hiddenVariation.val(applicationMethod.val());

                var price = applicationMethod.data('price');
                var totalPrice = price * quantity;

                // Multiply price by 1.2 due to the client requiring VAT to be included
                $('.price').text((totalPrice * 1.2).toFixed(2));
            };
			
            $(document).ready(function () {
                updateWallPrice();
            });
            
            $(document).on('click', '[name="dimension-unit"], .dimension-unit-label, [name="application-method"], .application-method-label', function () {
                updateWallPrice();
            });

            $(document).on('change keyup blur', '#dimensions-height, #dimensions-width', function () {
                var width = $('#dimensions-width').val();
                var height = $('#dimensions-height').val();

                if (window.currentWidth == width && window.currentHeight == height) {
                    return;
                }

                window.currentWidth = width;
                window.currentHeight = height;

                updateWallPrice();
                resizeAspectRatio(width, height);
            });

            function resizeAspectRatio(width, height) {
                options.aspectRatio = width / height;
                image.cropper('destroy').cropper(options);
            }

            image.on('built.cropper', function () {
                makeTransformation('crop', jobId, image.cropper('getData'));
            });

            function calculateWallDimension() {
                var width = $('#dimensions-width').val();
                var height = $('#dimensions-height').val();
                var unit = $('[name="dimension-unit"]:checked').val();

                var values = {};

                switch (unit) {
                    case 'centimeters':
                        values.width = width / 100;
                        values.height = height / 100;
                        break;
                    case 'meters':
                        values.width = width;
                        values.height = height;
                        break;
                    case 'inch':
                        values.width = width / 39.370;
                        values.height = height / 39.370;
                        break;
                }

                values.squared = (values.width * values.height).toFixed(2);

                return values;
            }

            /**
             * Update Canvas Cart
             */
            var updateCanvasHiddenFields = function () {
                var select = $('[name="canvas-variation"]');
                var selectedOption = select.find('option:selected');
                var hiddenVariation = $('[name="variation_id"]');

                // Multiply price by 1.2 due to the client requiring VAT to be included
                $('.price').text((selectedOption.data('price') * 1.2).toFixed(2));
                hiddenVariation.val(selectedOption.val());
            };

            function resizeCanvasAspectRatio() {
                var select = $('[name="canvas-variation"]');
                var selectedOption = select.find('option:selected');
                var layout = $('[name="layout"]:checked');
                var width = selectedOption.data('width');
                var height = selectedOption.data('height');

                if (layout.val() == 'portrait') {
                    resizeAspectRatio(width, height);
                    return;
                }

                resizeAspectRatio(height, width);
            }

            function updateOrientationHiddenField() {
                var layout = $('[name="layout"]:checked');
                var orientationHiddenField = $("[name='canvas_orientation']");

                orientationHiddenField.val(layout.val());
            }

            $(document).on('change', '[name="layout"]', function () {
                resizeCanvasAspectRatio();
                updateOrientationHiddenField();
                updatePreviewCss();
            });

            $(document).on('change', '[name="canvas-variation"]', function () {
                updateCanvasHiddenFields();
                resizeCanvasAspectRatio();
                updatePreviewCss();
            });

            
            
            
            function updateCollageTemplateHiddenField() {
                var selectedTemplate = $('[name="canvas-template"]:checked').val();
                var hiddenField = $('[name="canvas_template"]');
                hiddenField.val(selectedTemplate);
            }

            $(document).on('change', '[name="canvas-template"]', function () {
                updateCollageTemplateHiddenField();
                console.log('chnanged');
            });

            
            $(document).on('click', '.upload-zip-button', function (e) {
                e.preventDefault();
                var fileInput = $('#user_collage_zip');
                fileInput.click();
            });

            $(document).on('change', '#user_collage_zip', function () {
                var input = $(this);
                var file = this.files[0];

                if (this.files.length == 0) {
                    return;
                }

                if (file.type !== 'application/zip' && file.type !== 'application/x-zip-compressed') {
                    alert('You must select a zip file');
                    return;
                }

                var formData = new FormData();
                formData.append('file', file);

                var submitButton = $('.single_add_to_cart_button');
                var uploadButton = $('.upload-zip-button');
                var uploadText = uploadButton.html();

                $.ajax({
                    url: 'https://api.createawall.co.uk/library/job/update-original-file/05eb03a7-b22d-11e6-9a4d-00155d141523/',
                    type: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    beforeSend: function () {
                        submitButton.prop('disabled', true);
                        uploadButton.html('Uploading your zip file...');
                    },
                    error: function () {
                        alert('There was an error uploading your file.');
                        uploadButton.html(uploadText);
                    },
                    success: function (response) {
                        alert('Your zip file has been successfully uploaded.');
                        $('.single_add_to_cart_button').addClass('has-file');
                        submitButton.prop('disabled', false);
                        uploadButton.html("CHOOSE A DIFFERENT ZIP FILE");
                    },
                    complete: function () {

                    }
                });
            });

            $(document).on('click', '#save-design', function (e) {
                e.preventDefault();
                var button = $(this);
                var buttonVal = button.html();

                button.html('<img src="https://api.createawall.co.uk/img/loading-small.gif">');

                setTimeout(function () {
                    button.html(buttonVal);
                    $('#save-modal').modal('show');
                }, 1000);
            });

            $(document).on('click', '.previews img', function () {
                $('#show-share-modal').click();
            });

            $('#method-info-modal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                var name = button.data('method-name');
                var description = button.data('method-description');

                var modal = $(this);
                modal.find('.modal-title').text(name);
                modal.find('.modal-body p').html(description);
            });

            function updatePreviewCss() {
                var layout = $('[name="layout"]:checked').val();
                var size = $('[name="canvas-variation"] option:selected').data('size');
                var horizontalPreviews = $('.horizontal-preview-button');
                var verticalPreviews = $('.vertical-preview-button');

                $('.horizontal-preview, .vertical-preview').removeClass('active');

                switch (layout) {
                    case 'landscape':
                        horizontalPreviews.show();
                        verticalPreviews.hide();
                        var previewType = 'horizontal';
                        break;
                    case 'portrait':
                        verticalPreviews.show();
                        horizontalPreviews.hide();
                        var previewType = 'vertical';
                        break;
                }

                var previews = $('.' + previewType + '-preview');
                $(previews[0]).addClass('active');
                previews.each(function (key, preview) {
                    var preview = $(preview);
                    var id = $(preview).attr('id');
                    var settings = previewSettings['canvas'][id][size];
                    var image = preview.find('.backdrop img');
                    var overlay = preview.find('.overlay img');

                    overlay.attr('src', settings.overlayUrl);
                    image.css('top', settings.top);
                    image.css('width', settings.width);
                    image.css('left', settings.left);

                    console.log(id, settings);
                });
            }

            $(document).on('click', '.go-back', function (e) {
                e.preventDefault();
                window.history.back();
            });

            function updateCanvasBleedType() {
                var select = $('#canvas-bleed-type');
                var selectedType = select.find('option:selected').val();
                var hiddenField = $("[name='canvas_bleed']");
                hiddenField.val(selectedType);
            }

            $(document).on('change', '#canvas-bleed-type', function (e) {
                updateCanvasBleedType();
            });

            $(document).on('click', '.single_add_to_cart_button.is-collage', function (e) {
                var button = $(this);

                if (!button.hasClass('has-file')) {
                    e.preventDefault();
                    alert('You must upload a zip file before adding to your bag.');
                }
            });
/*
            $(document).on('click', '#email-design', function (e) {
                var sendButton = $(this);
                var emailAddress = $('#email-address');
                var saveModal = $('#save-modal');

                if (sendButton.hasClass('disabled')) {
                    return;
                }

                if (emailAddress.val().length == 0) {
                    emailAddress.focus();
                    alert('Please enter your email address');

                    return;
                }

                $.ajax({
                    url: 'https://api.createawall.co.uk/library/job/05eb03a7-b22d-11e6-9a4d-00155d141523/photo_wall_mural/email-design',
                    data: {
                        email_address: emailAddress.val()
                    },
                    beforeSend: function () {
                        sendButton.html('Sending email...');
                        sendButton.addClass('disabled');
                    },
                    success: function () {
                        saveModal.modal('hide');
                        alert('Design has been sent to ' + emailAddress.val());
                    },
                    error: function (errors) {
                        alert(errors.responseJSON.message);
                    },
                    complete: function () {
                        sendButton.html('Send Email');
                        sendButton.removeClass('disabled');
                    }
                });
            });*/

        })(jQuery);

</script>
                
  