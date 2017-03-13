<?php

class AjaxCustomShopControllerCore extends FrontController {

    public function displayAjaxSendPassword() {
        $result = [];
        $result['success'] = true;
        if (CustomShopAccount::emailExists(Tools::getValue('email'))) {
            $oCustomAccount = CustomShopAccount::getAccountByEmail(Tools::getValue('email'));
            //send email
            $data = array();
            $data['{shop_name}'] = Tools::safeOutput(Configuration::get('PS_SHOP_NAME', null, null, null));
            $data['{firstname}'] = $oCustomAccount->firstname;
            $data['{lastname}'] = $oCustomAccount->lastname;
            $data['{email}'] = $oCustomAccount->email;
            $data['{passwd}'] = $oCustomAccount->passwd;
            $mail = Mail::Send($this->context->language->id, 'custom_shop_password', 'Password request', $data, $oCustomAccount->email);
            if (!$mail) {
                $result['success'] = false;
                $result['error'] = 'Email could not be sent successfully';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'No account exists with this email';
        }
        echo json_encode($result);
    }

    public function displayAjaxActivateDeactivateShop() {
        $result = [];
        $result['success'] = true;
        if (Tools::getIsset('deactivated') && Tools::getValue('shop')) {
            $oShop = new CustomShop(Tools::getValue('shop'));
            $oShop->deactivated = Tools::getValue('deactivated');
            $oShop->save();
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveStatus() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('status') && Tools::getValue('id_order')) {
            $oOrder = new Order(Tools::getValue('id_order'));
            $oOrder->status = Tools::getValue('status');
            $oOrder->save();
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveTracking() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('tracking') && Tools::getValue('id_order')) {
            $oOrder = new Order(Tools::getValue('id_order'));
            $oOrder->tracking = Tools::getValue('tracking');
            $oOrder->save();
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxPayShop() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('shop')) {
            $aIdOrders = CustomShop::getNonPaidOrdersId(Tools::getValue('shop'));
            if ($aIdOrders) {
                $oBill = new CustomShopBillingHistory(null, ['id_shop' => Tools::getValue('shop'), 'date' => date('Y-m-d')]);
                $oBill->save();
                $oBill->amount = CustomShop::getCurrentSituation(Tools::getValue('shop'))['total_comission'];
                $oBill->save();
                DB::getInstance()->update('orders', ['id_billing' => $oBill->id, 'status' => 5], '`id_order` IN (' . implode(', ', array_column($aIdOrders, 'id_order')) . ')');
                $result['bill'] = $oBill;
            } else {
                $result['success'] = false;
                $result['error'] = 'No orders';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Shop id missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxLoadCartProducts() {
        global $smarty;
        $aProducts = $this->context->cart->getProducts(true, null, null, true);
        $this->context->smarty->assign('products', $aProducts);
        $rendered_content = $smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-front-cart-products.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxRemoveFromCart() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_creation')) {
            $aProduct = CustomShopProduct::getProductById(Tools::getValue('id_creation'));
            if ($this->context->cart->deleteProduct($aProduct['id_product'], null, null, null, null, null, Tools::getValue('id_creation'))) {
                $result['nb_products'] = $result['nb_products'] = $this->context->cart->nbProducts(true);
            } else {
                $result['success'] = false;
                $result['error'] = 'Impossible to remove product from cart, please try again or contact us';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to remove product from cart, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxAddToCartCustomProduct() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_creation')) {
            if (!$this->context->cart->id) {
                if (Context::getContext()->cookie->id_guest) {
                    $guest = new Guest(Context::getContext()->cookie->id_guest);
                    $this->context->cart->mobile_theme = $guest->mobile_theme;
                }
                $this->context->cart->add();
                if ($this->context->cart->id) {
                    $this->context->cookie->id_cart = (int) $this->context->cart->id;
                }
            }

            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));

            if ($this->context->cart->updateQty('1', $oCreation->id_product, null, null, 'up', null, null, null, null, null, null, $oCreation->id)) {
                $result['nb_products'] = $this->context->cart->nbProducts(true);
            } else {
                $result['success'] = false;
                $result['error'] = 'Impossible to add product to cart';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to add product to cart, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxloadTerms() {
        global $smarty;
        $oCms = new CMS(3, $this->context->language->id);
        if (Validate::isLoadedObject($oCms)) {
            $this->context->smarty->assign('cms_page_html', $oCms->content);
        }
        $rendered_content = $smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-cms-content.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxloadContactUs() {
        include_once(_PS_FRONT_CONTROLLER_DIR_ . "/CustomShopFrontContactUsController.php");
        $rendered_content = $this->context->smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-front-contract-us.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxSaveShopImage() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('shop') && Tools::getValue('type') && $_FILES) {
            foreach ($_FILES as $file) {
                $sName = time() . '_' . Tools::getValue('shop') . '_' . $file['name'];
                $sFolder = 'img/custom_shop/' . Tools::getValue('type') . '/';
                if (move_uploaded_file($file['tmp_name'], $sFolder . basename($sName))) {
                    $oShop = new CustomShop(Tools::getValue('shop'));
                    if ($oShop->{Tools::getValue('type')}) {
                        unlink($sFolder . $oShop->{Tools::getValue('type')});
                    }
                    $sImageTitle = str_replace(['.jpg', '.png', '.gif'], '', $file['name']);
                    $result['image_name'] = $sName;

                    if (Tools::getValue('type') === 'logo') {
                        $oShop->setLogo($sName);
                    } else {
                        $oShop->setHeader($sName);
                    }
                    if (!$oShop->save()) {
                        $result['success'] = false;
                    }
                } else {
                    $result['success'] = false;
                }
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to upload the picture, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxDeleteCreation() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_creation')) {
            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));
            $oCreation->delete();
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to remove, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxPublish() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('published') !== null && Tools::getValue('id_creation')) {
            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));
            if ($oCreation->product_name) {
                $oCreation->setPublished((Tools::getValue('published') === 'true' ? true : false));
                $oCreation->save();
            } else {
                $result['success'] = false;
                $result['error'] = 'You have to set a product name to publish the product';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to modify the status, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveCreation() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_product') && Tools::getValue('id_design') && Tools::getValue('custom_picture') && Tools::getValue('shop')) {
            $oCreation = new CustomShopProduct(null, ['id_product' => Tools::getValue('id_product'), 'id_design' => Tools::getValue('id_design'), 'id_shop' => Tools::getValue('shop')]);
            $sImgPath = $oCreation->saveCreationPicture(Tools::getValue('custom_picture'));
            $oCreation->save();
            $result['image'] = $sImgPath;
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to save the creation, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxLoadProducts() {
        $aProducts = Product::getProducts($this->context->language->id, (Tools::getValue('last_range') ? : 0), (Tools::getValue('nb_products') ? : 12), 'date_add', 'DESC', (Tools::getValue('id_category') ? : '45'), true, $this->context);
        foreach ($aProducts as &$aProduct) {
            $aProduct['images'] = (new Product($aProduct['id_product']))->getImages($this->context->language->id);
            foreach ($aProduct['images'] as $key => $image) {
                if ($image['legend'] == 'recess' || is_numeric($image['legend'])) {
                    unset($aProduct['images'][$key]);
                }
            }

            $aQuantities = [1, 5, 10, 25, 50, 100];
            $aPrices = [];
            foreach ($aQuantities as $iQuantity) {
                $aPrices[$iQuantity] = Product::getPriceStatic((int) $aProduct['id_product'], true, null, 2, null, false, true, $iQuantity);
            }
            $aProduct['prices'] = $aPrices;
        }
        $this->context->smarty->assign([
            'products' => $aProducts,
            'bLoadJs' => (Tools::getValue('first_time') == 1),
            'first_item_id' => (Tools::getValue('last_range') ? : 0) + 1
        ]);
        if (Tools::getValue('last_range') == 0) {
            $aCategories = [];
            foreach (array_values(Category::getCategories($this->context->language->id, true, true, 'AND `id_parent` = ' . pSQL('45')))[0] as $key => $aCategory) {
                $aCategories[$key] = $aCategory['infos'];
            }
            $this->context->smarty->assign('categories', $aCategories);
            $this->context->smarty->assign('products_categories', Category::getCategoryInformations(['45']));
        }

        $rendered_content = $this->context->smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-admin-popup-list-products.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxLoadPictureBlocks() {
        $sHtml = '';
        $iOffset = Tools::getValue('offset') ? : 0;
        $iNbrItem = Tools::getValue('nbr') ? : 1;
        $iNumberEnd = $iOffset + $iNbrItem;
        for ($i = $iOffset + 1; $i <= $iNumberEnd; $i++) {
            $sHtml .= '
                <div class="col-sm-4 col-md-4 col-lg-3 margin-bottom-10 block-picture-container block-picture-container-' . $i . '">
                    <div class="trash border" data-id="' . $i . '"  data-db-id=""><span class="glyphicon glyphicon-trash"></span></div>
                    <div class="border shadow block-picture" data-id="' . $i . '">
                        <div class="col-xs-10 margin-auto">
                            <input class="form-control margin-top-5 margin-bottom-5 text-center picture-name picture-name-' . $i . '" data-db-id="" placeholder="Picture name" disabled/>
                        </div>
                        <div class="col-xs-12 thumbnail border-none margin-bottom-0 padding-0 cursor-pointer upload-btn" data-id="' . $i . '">
                            <img class="upload-picture upload-picture-' . $i . '" src="' . __PS_BASE_URI__ . 'img/upload-icon.jpg" title="upload" alt="upload" />
                            <div class="hidden-uploader">
                                <input class="fileupload hidden-fileupload-' . $i . '" data-db-id="" data-id-upload="' . $i . '" type="file" name="files[]">
                            </div>
                        </div>
                        <div class="col-xs-12 margin-top-5 margin-bottom-5">
                            <div class="col-xs-5 margin-top-10">Price:</div>
                            <div class="col-xs-1 margin-top-10 padding-0">$</div>
                            <div class="col-xs-5 input-group-sm padding-0">
                                <input class="form-control margin-0 margin-top-5 price" data-db-id="" data-id="' . $i . '" type="number" min="1" max="1" placeholder="0" disabled/>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>';
        }
        echo $sHtml;
    }

    public function displayAjaxDeletePicture() {
        $result = [];
        $result['success'] = false;
        if (Tools::getValue('id_design')) {
            $oCustomShopDesign = new CustomShopDesign(Tools::getValue('id_design'));
            if ($oCustomShopDesign->delete()) {
                $result['success'] = true;
            }
        }
        echo json_encode($result);
    }

    public function displayAjaxSavePrice() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('price') && Tools::getValue('price') <= 5) {
            if (Tools::getValue('db_id')) {
                $oDesign = new CustomShopDesign(Tools::getValue('db_id'));
                $oDesign->setPrice(Tools::getValue('price'));
            } else {
                $result['success'] = false;
            }
            if (!$oDesign->save()) {
                $result['success'] = false;
            } else {
                $result['id'] = $oDesign->id;
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Price must be minimum 1 and maximum 5';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveCreationName() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_creation')) {
            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));
            $oCreation->setProductName(Tools::getValue('product_name'));
            $oCreation->save();
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to save creation\'s name, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSavePictureName() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('db_id')) {
            $oDesign = new CustomShopDesign(Tools::getValue('db_id'));
            $oDesign->setName(Tools::getValue('picture_name'));
        } else {
            $result['success'] = false;
        }
        if (!$oDesign->save()) {
            $result['success'] = false;
        } else {
            $result['id'] = $oDesign->id;
        }
        echo json_encode($result);
    }

    public function displayAjaxSavePicture() {
        $result = [];
        $result['success'] = true;

        foreach ($_FILES as $file) {
            $sName = time() . '_' . $file['name'];
            $sFolder = 'img/custom_shop/picture/';
            if (move_uploaded_file($file['tmp_name'], $sFolder . basename($sName))) {
                if (Tools::getValue('db_id')) {
                    $oCustomShopDesign = new CustomShopDesign(Tools::getValue('db_id'));
                    unlink($sFolder . $oCustomShopDesign->picture);
                }
                $sImageTitle = str_replace(['.jpg', '.png', '.gif'], '', $file['name']);
                $result['image_name'] = $sName;
                if (isset($oCustomShopDesign)) {
                    $oCustomShopDesign->setPicture($sName);
                } else {
                    $oCustomShopDesign = new CustomShopDesign(null, ['picture' => $sName, 'name' => $sImageTitle, 'price' => 1, 'id_shop' => Tools::getValue('shop')]);
                }
                if (!$oCustomShopDesign->save()) {
                    $result['success'] = false;
                }
                $result['id'] = $oCustomShopDesign->id;
                $result['image_title'] = $oCustomShopDesign->name;
                $result['price'] = $oCustomShopDesign->price;
            } else {
                $result['success'] = false;
            }
        }
        echo json_encode($result);
    }

}
