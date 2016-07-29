<?php /* Smarty version Smarty-3.1.19, created on 2016-07-29 09:07:22
         compiled from "C:\wamp64\www\shop\modules\sampledatainstall\views\templates\admin\sampledatainstallimport.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13007579b00aa27fd11-54579597%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e5ae519099f20b38857f217319e9884b3488fbb2' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\modules\\sampledatainstall\\views\\templates\\admin\\sampledatainstallimport.tpl',
      1 => 1469775910,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13007579b00aa27fd11-54579597',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'actions' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579b00aa45c6e5_88847328',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579b00aa45c6e5_88847328')) {function content_579b00aa45c6e5_88847328($_smarty_tpl) {?>
<script type="text/javascript">
	var baseDir = '<?php echo $_smarty_tpl->tpl_vars['actions']->value['baseDir'];?>
';
	var import_text = new Array(),
	max_file_size = '<?php echo $_smarty_tpl->tpl_vars['actions']->value['max_file_size'];?>
';
	SDI_show_message = 0;

	import_text['error_upload']		= "<?php echo smartyTranslate(array('s'=>'Upload Error','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['error_size']		= "<?php echo smartyTranslate(array('s'=>'The file is too big!','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['error_type']		= "<?php echo smartyTranslate(array('s'=>'Wrong file type!','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['error_folder']		= "<?php echo smartyTranslate(array('s'=>'Folders can not be uploaded!','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['format_error']		= "<?php echo smartyTranslate(array('s'=>'Wrong file! Only sample data files can be used!','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['error_added']		= "<?php echo smartyTranslate(array('s'=>'File already added!','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['uploading']		= "<?php echo smartyTranslate(array('s'=>'Uploading','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['upload']			= "<?php echo smartyTranslate(array('s'=>'Upload','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['upload_complete']	= "<?php echo smartyTranslate(array('s'=>'Upload Complete','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['item']				= "<?php echo smartyTranslate(array('s'=>'item','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['items']			= "<?php echo smartyTranslate(array('s'=>'items','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['uploaded_status_text']= "<?php echo smartyTranslate(array('s'=>'Sample data installing. It can take some time. You can drink some tea and eat a croissant.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['uploaded_status_text_1']= "<?php echo smartyTranslate(array('s'=>'Well done! Upload complete. Please click Continue Install button to proceed.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['uploaded_status_text_2']= "<?php echo smartyTranslate(array('s'=>'Files are not uploaded.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['uploaded_status_text_3']= "<?php echo smartyTranslate(array('s'=>'Not all files are successfully uploaded.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['uploaded_status_text_4']= "<?php echo smartyTranslate(array('s'=>'Files successfully uploaded.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['uploaded_status_text_5']= "<?php echo smartyTranslate(array('s'=>'Not all files are successfully uploaded. Please click Continue Install button to proceed.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['uploaded_status_text_6']= "<?php echo smartyTranslate(array('s'=>'Settings file is not loaded.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";

	import_text['import_complete']= "<?php echo smartyTranslate(array('s'=>'Sample data installation complete','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['instal_error']= "<?php echo smartyTranslate(array('s'=>'Sample data installation failed','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['not_supported_status']= "<?php echo smartyTranslate(array('s'=>'This sample data is not compatible with your store.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";


	import_text['diferent_ps_version']= "<?php echo smartyTranslate(array('s'=>'Your Prestashop and the sample data versions are different. ','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['diferent_db_version']= "<?php echo smartyTranslate(array('s'=>'Your database and the sample data database versions are different. ','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['current_ps_version']= "<?php echo smartyTranslate(array('s'=>' Your Prestashop version: ','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['sd_ps_version']= "<?php echo smartyTranslate(array('s'=>' Sample data version: ','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['current_db_version']= "<?php echo smartyTranslate(array('s'=>' Your database version: ','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['sd_db_version']= "<?php echo smartyTranslate(array('s'=>' Sample data database version: ','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
	import_text['files_missed_text']= "<?php echo smartyTranslate(array('s'=>'Some file(s) is(are) missed : ','mod'=>'sampledatainstall'),$_smarty_tpl);?>
";
</script>
<div class="bootstrap" id="data_location_message">
	<div class="alert alert-danger">
        <p><?php echo smartyTranslate(array('s'=>'Please note! Intalling demo store data will completely replace your store content. All products, module settings, pages and configurations will be replaced. Make sure to create store database backup before sample data installation.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</p>
    </div>
    <div class="alert alert-warning">
        <p><?php echo smartyTranslate(array('s'=>'Theme sample data files are located in sources/sample_data.zip archive of your template directory','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</p>
    </div>
</div>
<div class="panel">
    <!-- drag drop form -->
    <form enctype="multipart/form-data" method="post" action="" id="upload_files">
        <div id="area-drag-drop">
            <div class="drag-drop-inside">
            	<div class="drop_icon"></div>
                <h6 class="drop_heading"><?php echo smartyTranslate(array('s'=>'Please Drop all needed files here to import sample data','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</h6>
                <p><?php echo smartyTranslate(array('s'=>'or','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</p>
                <p class="drag-drop-buttons">
                    <button class="upload-files new-btn btn btn-danger btn-lg" type="button" class="button"><?php echo smartyTranslate(array('s'=>'Browse local files','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</button>
                    <input id="upload_files_html5" style="visibility: hidden; width: 0; height: 0; overflow: hidden; margin:0;" type="file" multiple>
                </p>
                <p class="max-upload-size">
                	<?php echo smartyTranslate(array('s'=>'Maximum file size:','mod'=>'sampledatainstall'),$_smarty_tpl);?>
<?php echo $_smarty_tpl->tpl_vars['actions']->value['max_file_size_text'];?>
 <br />
                    <?php echo smartyTranslate(array('s'=>'You can change it in your server settings.','mod'=>'sampledatainstall'),$_smarty_tpl);?>

                </p>
                <?php if (($_smarty_tpl->tpl_vars['actions']->value['output'])) {?>
                	<div class="alert alert-warning">
                    	<?php echo smartyTranslate(array('s'=>'Caution! Some of your server settings do not meet the requirements for installing the sample data. Please, consult with your hosting provider on how to increase the required values.','mod'=>'sampledatainstall'),$_smarty_tpl);?>

                    </div>
                    <table id="server_settings" class='table text-left'>
                    	<thead>
                        	<tr>
                        		<th><?php echo smartyTranslate(array('s'=>'Server Settings','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</th>
                            	<th class="text-center"><?php echo smartyTranslate(array('s'=>'Current','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</th>
                                <th class="text-center"><?php echo smartyTranslate(array('s'=>'Required','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<?php echo $_smarty_tpl->tpl_vars['actions']->value['output'];?>

                        </tbody>
                    </table>
                <?php }?>
            </div>
        </div>
    </form>
    
    <!-- end drag drop form -->
    <div id="import_step_2" class="hidden_ell">
    <!-- file_list -->
        <div id="file_list_holder">
            <div id="file_list">
                <div id="file_list_header">
                    <div class='row'>
                        <div class="column_1"><?php echo smartyTranslate(array('s'=>'File name','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</div>
                        <div class="column_2"><?php echo smartyTranslate(array('s'=>'File size','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</div>
                        <div class="column_3 text-center"><?php echo smartyTranslate(array('s'=>'Uploaded file:','mod'=>'sampledatainstall'),$_smarty_tpl);?>
 
                            <span id="upload_counter">
                                <b>0</b>
                            </span>
                            <span class="items_name"><?php echo smartyTranslate(array('s'=>'item','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</span>
                        </div>
                    </div>
                </div>
                <div id="file_list_body"></div>
            </div>
        </div>
        <div id="import_xml_status" class="hidden_ell">
            <div id="status_log">
                <p><i class ="loader"></i><?php echo smartyTranslate(array('s'=>'Installing demo store. You\'ll like it!','mod'=>'sampledatainstall'),$_smarty_tpl);?>
<span class="loader-info"><?php echo smartyTranslate(array('s'=>'It can take some time. You can drink some tea and eat a croissant.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</span></p>
            </div>
        </div>
    <!-- end file_list -->
        <div id="import_status" class="clearfix">
            <div id='upload_status'>
                <div class="loader_bar">
                	<strong class="loaded-text">0%</strong>
                    <span class='transition_2'></span>
                </div>
            </div>
            <div id="info_holder" class="hidden_ell">
                <p>
                    <span class="upload_status_text">0%</span>
                    <a class="upload-files btn btn-info" href="#"><?php echo smartyTranslate(array('s'=>'Add More Files','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</a>
                    <a class="button button-primary not_active next_step btn btn-success" href="javascript:void(0);" id="submit_install"><?php echo smartyTranslate(array('s'=>'Continue Install','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</a>
                    <span id="not_load_file" class="hidden_ell"><?php echo smartyTranslate(array('s'=>'Missing dump.sql file.','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</span>
                </p>
            </div>
            <div id="warning_holder"></div>
        </div>
    </div>
</div>
<div class="alert alert-success hidden_ell" id="success_install">
	<p class="clearfix"><?php echo smartyTranslate(array('s'=>'Installation is now complete! For correct work of store you need to go to regenerate thumbnails and select the option to create thumbnails.','mod'=>'sampledatainstall'),$_smarty_tpl);?>

    <?php echo smartyTranslate(array('s'=>'To jump, click on the button below','mod'=>'sampledatainstall'),$_smarty_tpl);?>

    <button type="submit" onclick="window.location ='<?php echo $_smarty_tpl->tpl_vars['actions']->value['regenerateDir'];?>
'" class="btn btn-primary pull-right" id="regenerate_go"><?php echo smartyTranslate(array('s'=>'Go to regenerate page','mod'=>'sampledatainstall'),$_smarty_tpl);?>
</button></p>
</div><?php }} ?>
