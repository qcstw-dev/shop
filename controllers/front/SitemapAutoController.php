<?php

class SitemapAutoControllerCore extends FrontController {
    public function init() {
        parent::init();
        $this->display_column_left = false;
        $this->display_column_right = false;
        $this->display_header = false;
        $this->display_footer = false;
    }
    
    public function initContent() {
        parent::initContent();
        
        header('Content-Type: text/xml; charset=UTF-8'); 
        echo '<?xml version="1.0" encoding="UTF-8"?>'."\n"; ?>
        
        <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"><?php
            $aProducts = Product::getProducts($this->context->language->id, null, null, 'date_add', 'DESC', '45', true, null, true);
            foreach ($aProducts as $aProduct) { ?>
                <url>
                    <loc><![CDATA[<?= $this->context->link->getProductLink($aProduct); ?>]]></loc>
                </url><?php
            }
            $aCustomShops = CustomShop::getAllShops();
            foreach ($aCustomShops as $aCustomShop) { ?>
                <url>
                    <loc><![CDATA[<?= _PS_BASE_URL_SSL_.__PS_BASE_URI__.'shop/'.$aCustomShop['name']?>]]></loc>
                </url><?php
            } ?>
            <url>
                <loc><![CDATA[<?= $this->context->link->getCategoryLink(45); ?>]]></loc>
            </url><?php
            $aProductCategories = Category::getCategories($this->context->language->id, true, true, 'AND c.`id_parent` = ' . pSQL('45'));
            foreach ($aProductCategories[45] as $key => $aProductCategory) { ?>
                <url>
                    <loc><![CDATA[<?= $this->context->link->getCategoryLink($aProductCategory['infos']['id_category']); ?>]]></loc>
                </url><?php
            } 
            $aDesignCategories = Category::getCategories($this->context->language->id, true, true, 'AND c.`id_parent` = ' . pSQL('46'));
            foreach ($aDesignCategories[46] as $key => $aDesignCategory) { ?>
                <url>
                    <loc><![CDATA[<?= $this->context->link->getCategoryLink($aDesignCategory['infos']['id_category']); ?>]]></loc>
                </url><?php
            } 
            
            $aPages = CMS::getCMSPages();
            foreach ($aPages as $aPage) { ?>
                <url>
                    <loc><![CDATA[<?= $this->context->link->getCMSLink($aPage['id_cms']) ?>]]></loc>
                </url><?php
            }
            
            ?>
            <url>
                <loc><![CDATA[<?= _PS_BASE_URL_SSL_.__PS_BASE_URI__.'sitemap' ?>]]></loc>
            </url>
            <url>
                <loc><![CDATA[<?= _PS_BASE_URL_SSL_.__PS_BASE_URI__.'contact-us' ?>]]></loc>
            </url>
            <url>
                <loc><![CDATA[<?= _PS_BASE_URL_SSL_.__PS_BASE_URI__.'custom-shop-introduction' ?>]]></loc>
            </url>
        </urlset><?php 
    }
}
