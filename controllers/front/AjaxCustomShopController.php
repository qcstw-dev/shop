<?php

class AjaxCustomShopControllerCore extends CustomShopAdminControllerCore {

    public function displayAjaxLoadPictureBlocks() {
        $sHtml = '';
        $iOffset = Tools::getValue('offset') ? : 0;
        $iNbrItem = Tools::getValue('nbr') ? : 1;
        $iNumberEnd = $iOffset + $iNbrItem;
        for ($i = $iOffset + 1; $i <= $iNumberEnd; $i++) {
            $sHtml .= '
                <div class="col-xs-6 col-sm-4 col-md-4 col-lg-3 margin-bottom-10 block-picture-container block-picture-container-' . $i . '">
                    <div class="trash" data-id="' . $i . '"  data-db-id=""><span class="glyphicon glyphicon-trash"></span></div>
                    <div class="border shadow block-picture" data-id="' . $i . '">
                        <div class="col-xs-10 margin-auto">
                            <input class="form-control margin-top-5 margin-bottom-5 text-center file-name file-name-' . $i . '" placeholder="Picture name"/>
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
        if (Tools::getValue('id_picture')) {
            $oCustomShopDesign = new CustomShopDesign(Tools::getValue('id_picture'));
            $sFolder = 'img/custom_shop/picture/';
            unlink($sFolder . $oCustomShopDesign->picture);
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
                $oDesign = new CustomShopDesign(null, ['price' => Tools::getValue('price'), 'id_shop' => $this->custom_shop->id]);
            }
            if (!$oDesign->save()) {
                $result['success'] = false;
            } else {
                $result['id'] = $oDesign->id;
            }
        } else {
            $result['success'] = false;
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
                $result['image_name'] = $sName;
                $result['image_title'] = str_replace(['.jpg', '.png', '.gif'], '', $file['name']);
                if (isset($oCustomShopDesign)) {
                    $oCustomShopDesign->setName($result['image_title']);
                    $oCustomShopDesign->setPicture($sName);
                } else {
                    $oCustomShopDesign = new CustomShopDesign(null, ['picture' => $sName, 'name' => $result['image_title'], 'id_shop' => $this->custom_shop->id]);
                }
                if (!$oCustomShopDesign->save()) {
                    $result['success'] = false;
                }
                $result['id'] = $oCustomShopDesign->id;
            } else {
                $result['success'] = false;
            }
        }
        echo json_encode($result);
    }

}
