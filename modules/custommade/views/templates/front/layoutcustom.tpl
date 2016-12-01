{*
* @version 1.0
* @author 202-ecommerce
* @copyright 2014-2015 202-ecommerce
* @license ?
*}
  <div class="container-custommade">    
		<div class="col-md-12" >
			<div class="row">
				<div class="custom-top">
					<h1 class="product-title">DÉCOR KUBE EMERAUDE</h1>
					<div class="prod_desc">
						<h2>PERSONNALISEZ LE PAPIER PEINT KUBE</h2>
						<p>
							Déplacer la zone du motif à imprimer à l’aide de votre souris. Lors de vos mesures, nous vous conseillons de prendre une marge de sécurité de 5 cm tant sur la hauteur que sur la largeur. La largeur du papier-peint est de 45 cm, c’est ce que nous appelons un lé. Si vos dimensions sont supérieures, votre papier-peint personnalisé sera composé de plusieurs lés.
						</p>
						<p>
							Soyez bien assuré que l’image affichée ci-dessous n’est qu’une prévisualisation en basse résolution. De même, la partie grisée n’apparaîtra pas sur l’image définitive ni les traits rouges montrant les lés.
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="section-content-start" >
			<div class="row">
				<div class="col-md-3" id="left-col">
					<div class="cart-section wall-dimensions">
						<h3>1. Entrez vos dimensions</h3>
						<div class="form-horizontal">
							<div class="form-group widthbox">
								<label for="width" class="control-label">Largeur (cm)</label>
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-arrows-h" aria-hidden="true"></i>
									</div>
									<input value="" class="form-control" id="dimensions-width" type="number" placeholder="300 cm max">
								</div>
							</div>
							<div class="form-group heightbox">
								<label for="height" class="control-label">Hauteur (cm)</label>
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-arrows-v" aria-hidden="true"></i>
									</div>
									<input value="" class="form-control" id="dimensions-height" type="number"  placeholder="300 cm max">
								</div>
							</div>
							<div><a href="#" title="Autres dimensions?">Autres dimensions?</a></div>
						</div>
						<div class="customise-section">
							<h3>2. Choisissez un effet</h3>
							<div class="btn-group transform-buttons" role="group" aria-label="...">
								<!-- <button type="button" class="btn btn-default transform-info">
									Image manipulation tools:
								</button> -->
								<button type="button" class="btn btn-default image-rotate-left">
									<i class="fa fa-undo" aria-hidden="true"></i> Rotation 90&deg;
								</button>
								<!-- <button type="button" class="btn btn-default image-rotate-right">
									Rotate right
								</button> -->
								<!-- <button type="button" class="btn btn-default image-flip-horizontally">
									Flip horizontally
								</button> -->
								<button type="button" class="btn btn-default image-flip-vertically">
									<i class="fa fa-arrows-h" aria-hidden="true"></i> Effet Mirror
								</button>
								<button type="button" class="btn btn-default image-grid">
									Montrer les l&eacute;s
								</button>
							</div>
							<div class="price-section">
								<p class="our_price_display "><b>PRIX:<b><span class="price our_price_display"> 155.94 £</span></p>
								<span class="sq-price">45,00 £/m2</span>
							</div>
							<div class="button-sec">
								<p id="add_to_cart" class="buttons_bottom_block">
									<input type="submit" name="Submit" value="Ajouter au panier" class="exclusive">
								</p>
								<p>Livraison sous 10 jours</p>
								<a href="javascript:void(0)" id="sampleButton" onclick="addSampleToCart(this); return false;">Commander un échantillon</a>
							</div>
						</div> 
						
						<!-- 
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
						</div> -->
							
					</div>
				</div>
				<div class="col-md-9" id="right-col">       
					<div id="cropper-tool-container">
						<img id="base-image" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg" alt="" class="">
						<div class="cropper-container cropper-bg">
							<div class="cropper-wrap-box">
								<div class="cropper-canvas"><img src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg" ></div>
							</div>
							<div class="cropper-drag-box cropper-modal"></div>
							
							<div class="cropper-crop-box">
								<span class="cropper-view-box"><img src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg"></span>
															
								<span class="cropper-dashed dashed-h cropper-hidden"></span>
								<span class="cropper-dashed dashed-v cropper-hidden"></span>
								<span class="cropper-center"></span>
								<span class="cropper-face cropper-move"></span>
								<span class="cropper-line line-e cropper-hidden" data-action="e"></span>
								<span class="cropper-line line-n cropper-hidden" data-action="n"></span>
								<span class="cropper-line line-w cropper-hidden" data-action="w"></span>
								<span class="cropper-line line-s cropper-hidden" data-action="s"></span>
								<span class="cropper-point point-e cropper-hidden" data-action="e"></span>
								<span class="cropper-point point-n cropper-hidden" data-action="n"></span>
								<span class="cropper-point point-w cropper-hidden" data-action="w"></span>
								<span class="cropper-point point-s cropper-hidden" data-action="s"></span>
								<span class="cropper-point point-ne cropper-hidden" data-action="ne"></span>
								<span class="cropper-point point-nw cropper-hidden" data-action="nw"></span>
								<span class="cropper-point point-sw cropper-hidden" data-action="sw"></span>
								<span class="cropper-point point-se cropper-hidden" data-action="se"></span>
							</div>
							<!-- <div class="cropper-crop-box">
								<span class="cropper-view-box"><img src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg"></span>						
							</div> -->
						</div>
					</div>
				</div>	
			</div>
			
			<div class="previews customise-section" id="previews-container">
                <div class="col-xs-12 col-sm-3 no-gutter" style="padding-right:0;padding-left:0;">
                    <!-- required for floating -->
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs tabs-left">
                        <!-- 'tabs-right' for right tabs -->                      
                        <li class="active">
                            <a href="#scene1" data-toggle="tab">Bedroom</a>
                        </li>
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
                                <img class="preview" src="{$base_dir|escape:'html':'UTF-8'}images/product.jpg">
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
				
			<!-- <div class="cart-section">
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
			</div> -->
			
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
            //$('#collage-preview').fixedsticky();

            document.title = "Papier peint luxe, D&eacute;coration murale, Tapisserie design - Au fil des Couleurs";
            var getUrl = window.location;
			var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1]+"/";
			console.log(baseUrl);
            var jobId = '1';
            var base_url = baseUrl;
			var activeAjaxRequests = 0;

            function makeTransformation(type, id, data) {
                var url = "";
                switch (type) {
                    case 'crop':
                        url = base_url + "transform/0/crop";
                        break;
                    case 'rotate':
                        url = base_url + "transform/0/rotate";
                        break;
                    case 'flip':
                        url = base_url + "transform/0/flip";
                        break;
                    case 'filter':
                        url = base_url + "transform/0/filter";
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
                        $('.preview').attr('src', base_url);						
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
                    // scalable: false,
                cropBoxResizable: false,
                minCropBoxHeight: 2000,
                guides: false,
				minContainerWidth: 200,
				minContainerHeight: 500,
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
			
			 /* prabakaran */

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
                    /*case 'meters':
                        values.width = width;
                        values.height = height;
                        break;
                    case 'inch':
                        values.width = width / 39.370;
                        values.height = height / 39.370;
                        break;*/
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
                
  