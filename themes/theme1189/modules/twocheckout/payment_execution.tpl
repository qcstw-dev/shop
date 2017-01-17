<script type="text/javascript" src="{$module_dir}assets/jquery.blockUI.js"></script>
<script type="text/javascript"src="https://www.2checkout.com/checkout/api/2co.min.js"/></script>
<div class="payment_module">
    <div class="font-size-20 bold">
        <div class="pull-right thumbnail margin-0 padding-0 border-none"><img src="{$module_dir}assets/credit-cards.png" /></div>
        <input type="radio" id="payment-cc" name="radio-payment" class="radio-payment"/> <label for="payment-cc" class="cursor-pointer">{l s='Credit card'}</label>
    </div>
    <div class="hidden hidden-payment hidden-payment-cc">
        <p id="twocheckout-error" class="alert-danger">
            {l s='Payment Authorization Failed: Please verify your Credit Card details are entered correctly and try again, or try another payment method.' mod='twocheckout'}
        </p>
        <div class="error" style="display:none" id="twocheckout_error_creditcard">
            <p>{l s='Payment Authorization Failed: Please verify your Credit Card details are entered correctly and try again, or try another payment method.' mod='twocheckout'}</p>
        </div>    
            <form class="padding-top-10" action="{$module_dir}validation.php" method="POST" id="twocheckoutCCForm" onsubmit="return false">
            <input id="sellerId" type="hidden" value="{$twocheckout_sid}">
            <input id="publishableKey" type="hidden" value="{$twocheckout_public_key}">
            <input id="token" name="token" type="hidden" value="">
            <div class="block-left">
                <label>{l s='Card Number' mod='twocheckout'}</label><br />
                <input class="numeric" type="text" size="20" autocomplete="off" id="ccNo" style="width: 210px; border: #CCCCCC solid 1px; padding: 3px;" required/>
            </div>
            <div class="block-left">
                <label>{l s='Expiration (MM/YYYY)' mod='twocheckout'}</label><br />
                <select id="expMonth" name="month" style="border: #CCCCCC solid 1px; padding: 3px;" required>
                    <option value="01">{l s='January' mod='twocheckout'}</option>
                    <option value="02">{l s='February' mod='twocheckout'}</option>
                    <option value="03">{l s='March' mod='twocheckout'}</option>
                    <option value="04">{l s='April' mod='twocheckout'}</option>
                    <option value="05">{l s='May' mod='twocheckout'}</option>
                    <option value="06">{l s='June' mod='twocheckout'}</option>
                    <option value="07">{l s='July' mod='twocheckout'}</option>
                    <option value="08">{l s='August' mod='twocheckout'}</option>
                    <option value="09">{l s='September' mod='twocheckout'}</option>
                    <option value="10">{l s='October' mod='twocheckout'}</option>
                    <option value="11">{l s='November' mod='twocheckout'}</option>
                    <option value="12">{l s='December' mod='twocheckout'}</option>
                </select>
                <span> / </span>
                <select id="expYear" name="year" style="border: #CCCCCC solid 1px; padding: 3px;" required>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019">2019</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <option value="2028">2028</option>
                    <option value="2029">2029</option>
                    <option value="2030">2030</option>
                </select>
            </div>
            <div class="block-left">
                <label>{l s='CVC' mod='twocheckout'}</label><br />
                <input class="numeric" id="cvv" type="text" size="4" autocomplete="off"  style="border: #CCCCCC solid 1px; padding: 3px;" required />
            </div>
            <input type="submit" class="btn btn-primary margin-top-10" value="{l s='Submit Payment' mod='twocheckout'}" />
        </form>
    </div>
</div>
<div class="clearfix"></div>
{literal}
    <script type="text/javascript">

        function successCallback(data) {
            $.blockUI({message: '<p><h1>Just a moment while we process your payment...</h1></p>'});
            var myForm = document.getElementById('twocheckoutCCForm');
            myForm.token.value = data.response.token.token;
            myForm.submit();
        }

        function errorCallback(data) {
            clearFields();
            if (data.errorCode === 200) {
                TCO.requestToken(successCallback, errorCallback, 'tcoCCForm');
            } else if (data.errorCode == 401) {
                $("#twocheckout_error_creditcard").show();
            } else {
                alert(data.errorMsg);
            }
        }

        $("#twocheckoutCCForm").submit(function (e) {
            e.preventDefault();
            $("#twocheckout_error_creditcard").hide();
            TCO.requestToken(successCallback, errorCallback, 'twocheckoutCCForm');
        });

        (function ($) {
            $.QueryString = (function (a) {
                if (a == "")
                    return {};
                var b = {};
                for (var i = 0; i < a.length; ++i)
                {
                    var p = a[i].split('=');
                    if (p.length != 2)
                        continue;
                    b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
                }
                return b;
            })(window.location.search.substr(1).split('&'))
        })(jQuery);
        if ($.QueryString["twocheckouterror"]) {
            $("#twocheckout-error").show();
        } else {
            $("#twocheckout-error").hide();
        }

        $('.numeric').on('blur', function () {
            this.value = this.value.replace(/[^0-9]/g, '');
        });

        function clearFields() {
            $('#ccNo').val('');
            $('#expMonth').val('');
            $('#expYear').val('');
            $('#cvv').val('');
        }

    </script>
{/literal}