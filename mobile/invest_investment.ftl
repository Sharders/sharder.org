<div id="transfer_details" style="display: none">
    <li>
        <div class="pay-text">
        <#--<p class="generalTextColor"><span class="i18n" name="sharder-invest-participation">感谢你参加豆匣早鸟轮，你可以用直接从数字货币钱包发送</span>{{payType}}<span class="i18n" name="sharder-invest-following-wallet">到以下地址。</span></p>-->
            <p class="generalTextColor i18n" name="sharder-invest-address-below">参加早鸟轮将会优先使用白名单额度，如提交了认购申请但未完成转账。扣除的白名单额度将在24小时内恢复。</p>
        <#--<p class="pay-akey generalTextColor i18n" name="sharder-invest-token-safety">转账成功后为了保证您的资金安全，转账后请加客服微信并将转账成功的截图发给我们。我们将为您进行一对一的确认。</p>-->
        </div>
        <div id="walletAddr_qr_code"></div>
        <p class="bg-walletQr"><span class="i18n"  name="sharder-wallet-addr">转账地址: </span><span id="walletQr-text">{{walletAddr}}</span><img src="/r/cms/resource/sharders/img/copyicon.svg" class="copy-icon" onclick="copyTextById('walletQr-text')"></p>
    </li>
    <li>
        <div class="trade_prove">
            <div class="user-wallet-addr">
                <label for="user_wallet_addr" ><span class="i18n" name="sharder-invest-input">请填写</span><span style="color: red;" class="i18n" name="sharder-money-transfer">您转账</span><span class="i18n" name="sharder-invest-wallet-address">的钱包地址</span>:</label>
                <input id="user_wallet_addr" name="payWalletAddr">
            </div>
            <p>请在转账时填写你的账号ID,漏填或错填很可能导致你的ss无法导致</p>
            ${UID!}
            <#--<p class="hint-info"><span class="i18n" name="sharder-successful-screenshots">转币成功截图</span><span class="hint-info i18n" name="sharder-pay-attention">(注意：截图需包含转款地址，收款地址，转款金额等信息，可传多张截图)</span></p>-->
            <#--<div id="add_img"></div>-->
        </div>
        <#--<input type="hidden" name="tradeImgAddr">-->
    </li>
    <li>
        <button type="button" class="complete_transfer i18n" name="sharder-completed-transfer" v-on:click="prompt()">已完成转账</button>
    <#--<button class="complete_transfer i18n tesu" name="sharder-copy" onclick="jsCopy()">复制地址</button></li>-->
</div>