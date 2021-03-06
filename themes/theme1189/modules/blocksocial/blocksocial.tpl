<section id="social_block">
    <ul>
        {if isset($facebook_url) && $facebook_url != ''}
            <li class="facebook">
                <a target="_blank" href="{$facebook_url|escape:html:'UTF-8'}" title="{l s='Facebook' mod='blocksocial'}">
                    <span>{l s='Facebook' mod='blocksocial'}</span>
                </a>
            </li>
        {/if}
        {if isset($twitter_url) && $twitter_url != ''}
            <li class="twitter">
                <a target="_blank" href="{$twitter_url|escape:html:'UTF-8'}" title="{l s='Twitter' mod='blocksocial'}">
                    <span>{l s='Twitter' mod='blocksocial'}</span>
                </a>
            </li>
        {/if}
        {if isset($rss_url) && $rss_url != ''}
            <li class="rss">
                <a target="_blank" href="{$rss_url|escape:html:'UTF-8'}" title="{l s='RSS' mod='blocksocial'}">
                    <span>{l s='RSS' mod='blocksocial'}</span>
                </a>
            </li>
        {/if}
        {if isset($google_plus_url) && $google_plus_url != ''}
            <li class="google-plus">
                <a target="_blank" href="{$google_plus_url|escape:html:'UTF-8'}" title="{l s='Google Plus' mod='blocksocial'}">
                    <span>{l s='Google Plus' mod='blocksocial'}</span>
                </a>
            </li>
        {/if}
        {if isset($youtube_url) && $youtube_url != ''}
            <li class="youtube">
                <a target="_blank" href="{$youtube_url|escape:html:'UTF-8'}" title="{l s='Youtube' mod='blocksocial'}">
                    <span>{l s='Youtube' mod='blocksocial'}</span>
                </a>
            </li>
        {/if}
        {if isset($pinterest_url) && $pinterest_url != ''}
            <li class="pinterest">
                <a target="_blank" href="{$pinterest_url|escape:html:'UTF-8'}" title="{l s='Pinterest' mod='blocksocial'}">
                    <span>{l s='Pinterest' mod='blocksocial'}</span>
                </a>
            </li>
        {/if}
        {if isset($vimeo_url) && $vimeo_url != ''}
            <li class="vimeo">
                <a href="{$vimeo_url|escape:html:'UTF-8'}">
                    <span>{l s='Vimeo' mod='blocksocial'}</span>
                </a>
            </li>
        {/if}
        {if isset($instagram_url) && $instagram_url != ''}
            <li class="instagram">
                <a class="_blank" href="{$instagram_url|escape:html:'UTF-8'}">
                    <span>{l s='Instagram' mod='blocksocial'}</span>
                </a>
            </li>
        {/if}
    </ul>
    {if !isset($mobile)}
        <h4>{l s='Follow us' mod='blocksocial'}</h4>
    {/if}
</section>
{if !isset($mobile)}
    <div class="col-xs-12 margin-left-10 margin-top-20" style="width: 27%">
        <iframe width="100%" height="169" src="https://www.youtube.com/embed/4EF2lC8xEgE" frameborder="0" allowfullscreen></iframe>
        <div class="padding-0 thumbnail border-none margin-top-20 margin-bottom-0 background-transparent"><img src="{$base_uri}img/credit-cards.png" title="Credit card" alt="Credit card" /></div>
    </div>
{/if}