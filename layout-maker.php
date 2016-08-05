<?php

 include(dirname(__FILE__).'/config/config.inc.php');
  Tools::displayFileAsDeprecated();
 
  include(dirname(__FILE__).'/header.php');
 
  $smarty->display(_PS_THEME_DIR_.'layout-maker.tpl');
 
  include(dirname(__FILE__).'/footer.php');