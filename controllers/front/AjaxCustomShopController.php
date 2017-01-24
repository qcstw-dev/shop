<?php

class AjaxCustomShopControllerCore extends CustomShopAdminControllerCore {

    public function displayAjaxLoadPictureBlocks() {
        $sHtml = '';
        $iOffset = Tools::getValue('offset') ? : 0;
        $iNbrItem = Tools::getValue('nbr') ? : 8;
        $iNumberEnd = $iOffset + $iNbrItem;
        for ($i = $iOffset + 1; $i <= $iNumberEnd; $i++) {
            $sHtml .= '
                <div class="col-xs-6 col-sm-4 col-md-4 col-lg-3 margin-bottom-10 block-picture-container">
                    <div class="trash" data-id="' . $i . '"><span class="glyphicon glyphicon-trash"></span></div>
                    <div class="border block-picture" data-id="' . $i . '">
                        <div class="col-xs-12 padding-0 margin-top-5 margin-bottom-5 text-center bold file-name file-name-' . $i . '">File name</div>
                        <div class="col-xs-12 thumbnail border-none margin-bottom-0 padding-0 cursor-pointer upload-btn" data-id="' . $i . '">
                            <img class="upload-picture upload-picture-' . $i . '" src="' . __PS_BASE_URI__ . 'img/upload-icon.jpg" title="upload" alt="upload" />
                            <div class="hidden-uploader">
                                <input class="fileupload hidden-fileupload-' . $i . '" data-id-upload="' . $i . '" type="file" name="files[]">
                            </div>
                        </div>
                        <div class="col-xs-12 margin-top-5 margin-bottom-5">
                            <label class="col-xs-6 margin-top-5">Price:</label>
                            <input class="col-xs-6" type="number" min="1" max="5" />
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>';
        }
        echo $sHtml;
    }

    public function displayAjaxSavePrice() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('price') && Tools::getValue('price') <= 5) {
            $oDesign = new CustomShopDesign(null, ['price' => Tools::getValue('price'), 'id_shop' => $this->custom_shop->id]);
            if (!$oDesign->save()) {
                $result['success'] = false;
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
                $result['image_name'] = $sName;
                $result['image_title'] = str_replace(['.jpg', '.png', '.gif'], '', $file['name']);
                $oDesign = new CustomShopDesign(null, ['picture' => $sName, 'name' => $result['image_title'], 'id_shop' => $this->custom_shop->id]);
                if (!$oDesign->save()) {
                    $result['success'] = false;
                }
                $result['id'] = $oDesign->id;
            } else {
                $result['success'] = false;
            }
        }
        echo json_encode($result);
    }

}
