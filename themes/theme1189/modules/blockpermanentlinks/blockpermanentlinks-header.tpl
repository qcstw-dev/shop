<!-- Block permanent links module HEADER -->
<ul id="header_links">
	<li id="header_link_title">
		<span>{l s='Welcome to our online store!' mod='blockpermanentlinks'}</span>
	</li>
	<li id="header_link_account">
    	<a href="index.php?controller=my-account" title="{l s='My Account' mod='blockpermanentlinks'}">{l s='My Account' mod='blockpermanentlinks'}</a>
    </li>
	<li id="header_link_wishlist">
		<a href="{$link->getModuleLink('blockwishlist', 'mywishlist', array(), true)|escape:'html':'UTF-8'}" title="{l s='My Wishlist' mod='blockpermanentlinks'}">{l s='My Wishlist' mod='blockpermanentlinks'}</a>
	</li>
	<li id="header_link_blog">
		<a href="index.php?fc=module&module=smartblog&controller=category" title="{l s='Blog' mod='blockpermanentlinks'}">{l s='Blog' mod='blockpermanentlinks'}</a>
	</li>
</ul>
<!-- /Block permanent links module HEADER -->
