{*
* @version 1.0
* @author 202-ecommerce
* @copyright 2014-2015 202-ecommerce
* @license ?
*}
<style>   

</style>
  <div class="container">
    <div class="row">
        <div class="col-md-8" id="left-col">
            <div id="cropper-tool-container">
                <img id="base-image" src="http://localhost/prestashop-latest/1-large_default/faded-short-sleeves-tshirt.jpg" alt="" class="">
                <div class="cropper-container cropper-bg">
                    <div class="cropper-wrap-box">
                        <div class="cropper-canvas" ><img src="http://localhost/prestashop-latest/1-large_default/faded-short-sleeves-tshirt.jpg" ></div>
                    </div>
                    <div class="cropper-drag-box cropper-modal"></div>
                    <div class="cropper-crop-box">
						<span class="cropper-view-box"><img src="http://localhost/prestashop-latest/1-large_default/faded-short-sleeves-tshirt.jpg"></span>						
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
                    <!-- required for floating -->
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs tabs-left">
                        <!-- 'tabs-right' for right tabs -->
                        {foreach from=$getUnivers item=Univers name=myLoop}
                        <li class="active">
                            <a href="#scene{$getUnivers->univers_id|escape:'html':'UTF-8'}" data-toggle="tab">{$getUnivers->univers_name|escape:'html':'UTF-8'}</a>
                        </li>
                        {/foreach}
                        <!-- 
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
                        </li> -->
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