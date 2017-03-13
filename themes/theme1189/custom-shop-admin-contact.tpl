{include file=$header}
{include file=$menu}
<div class="col-xs-12 bold font-size-20 text-center margin-bottom-20">Contact us</div>
<div class="col-xs-12">
    {if isset($submission.success) && $submission.success}
        <div class="alert alert-success bold text-center">
            Your message has been successfully sent. We will contact you very soon!
        </div>
    {else if isset($submission.success) && !$submission.success}
        <div class="alert alert-danger bold text-center">
            {$submission.error}
        </div>
    {/if}
</div>
<div class="col-xs-12 col-lg-6 margin-auto">
    {if !isset($submission.success) || !$submission.success}
        <form method="post">
            <label>Subject*</label>
            <input class="form-control" type="text" name="subject" value="{$subject}" autocomplete="off"/>
            <label class="margin-top-20">Message*</label>
            <textarea class="form-control" name="message">{$message}</textarea>
            <div class="margin-top-20">
                <input class="btn btn-primary pull-right col-xs-12 col-lg-4" type="submit" value="Send"/>
            </div>
        </form>
    {/if}
</div>
{include file=$footer}