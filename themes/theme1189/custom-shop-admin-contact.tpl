{include file=$header}
{include file=$menu}
<div class="col-xs-12 bold font-size-20 text-center margin-bottom-20 border-bottom">Contact us</div>
<div class="col-xs-12 col-lg-6">
    <div class="alert alert-info">
        QCS ASIA CO. ,LTD 台灣妍品有限公司<br />
        5F-8, 63 HEPING E. RD , SEC3 TAIPEI TAIWAN<br />
        台北市和平東路3段63號5樓之8 (嘉樂大樓)<br /><br />

        TEL : (886-2) 27385787 FAX : (886-2)27385816
        <div class="col-xs-12 margin-top-20 padding-0">
            <iframe frameborder="0" height="300" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d903.8183351866223!2d121.54866132923432!3d25.024796214206898!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442aa321d20e10d%3A0xf43ccf1621215ddf!2sNo.+63%2C+Section+3%2C+Heping+E+Rd%2C+Da%E2%80%99an+District%2C+Taipei+City%2C+106!5e0!3m2!1sen!2stw!4v1452219366587" style="border:0" width="100%"></iframe>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="col-xs-12 col-lg-6">
    <div class="alert alert-warning">
        <div class="col-xs-12">
            {if isset($submission.success) && $submission.success}
                <div class="alert alert-success margin-bottom-0 bold text-center">
                    Your message has been successfully sent. We will contact you very soon!
                </div>
            {else if isset($submission.success) && !$submission.success}
                <div class="alert alert-danger bold text-center">
                    {$submission.error}
                </div>
            {/if}
        </div>
        {if !isset($submission.success) || !$submission.success}
            <form method="post">
                <label>Subject*</label>
                <input class="form-control" type="text" name="subject" value="{$subject}" autocomplete="off"/>
                <label class="margin-top-20">Message*</label>
                <textarea class="form-control" style="height: 100px;" name="message">{$message}</textarea>
                <div class="margin-top-20">
                    <button class="btn btn-primary pull-right col-xs-12 col-lg-4" type="submit"><span class="glyphicon glyphicon-send"></span> Send</button>
                </div>
            </form>
        {/if}
        <div class="clearfix"></div>
    </div>
</div>

{include file=$footer}