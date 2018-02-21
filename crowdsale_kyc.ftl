<style>
    #crowdsale_terms{
        background-color: #ffffff;
        color: #333333;
        position: relative;
    }
    #crowdsale_terms .info .terms{
        color: #0BA0D1;
        text-decoration: none;
        border-bottom: 1px solid #0BA0D1;
    }
    #crowdsale_terms .info input[type='checkbox']{
        width: 20px;
        height: 20px;
        margin-right: 10px;
        position: relative;
        top:6px;
    }
    #crowdsale_terms .content{
        margin: auto;
        width: 98%;
        text-align: center;
    }
    #crowdsale_terms input[type='button']{
        border-radius: 60px;
        width: 460px;
        color: #ffffff;
        margin: 60px 0px;
        height: 60px;
        border: none;
        background-color: #0BA0D1;
        cursor: pointer;
        font-size: 20px;
    }
    #crowdsale_terms #terms{
        position: absolute;
    }
    #crowdsale_terms .file_kyc{
        width: 460px;
        height: 140px;
        border-radius: 4px;
        cursor: pointer;
        position: relative;
        z-index: 999999;
        opacity: 0;
    }
    #crowdsale_terms .file_kyc_div{
        width: 460px;
        height: 140px;
        border-radius: 4px;
        border:2px dashed #999999;
        margin: auto;
        background: url("/r/cms/resource/sharders/img/upload.png") no-repeat center ;
    }
    #crowdsale_terms .kyc_title{
        padding: 20px 0px;
        font-size: 14px;
        color: #0BA0D1;
    }
    #crowdsale_terms .kyc_info{
        margin-top: 10px;
        font-size: 14px;
        color: #333333;
    }

@media(min-width: 640px){
    #crowdsale_terms{
        margin-top: 20px;
    }
    #crowdsale_terms h2.title{
        padding-bottom: 20px;
        padding-top: 50px;
        font-size: 26px;
        font-weight: bold;
        color: #333333;
    }
    #crowdsale_terms .content .text-info{
         font-size: 20px;
         padding-bottom: 22px;
     }
    #crowdsale_terms .content .info{
        font-size: 20px;
        padding-bottom: 20px;
        text-align: left;
        padding-left: 35%;
    }
    #crowdsale_terms #terms{
        margin-left: -17%;
        margin-top: 3px;
        width: 18px;
        height: 18px;
    }
}
@media (max-width: 640px){
    #crowdsale_terms .content .text-info{
        font-size: 12px;
        padding-bottom: 14px;
        text-align: center;
        width: 91%;
        margin: auto;
    }
    #crowdsale_terms h2.title{
        padding-bottom: 11px;
        padding-top:20px;
        font-size: 17px;
        font-weight: bold;
        color: #333333;
    }
    #crowdsale_terms input[type='button']{
        width: 250px;
        height: 30px;
        font-size:13px;
    }
    #crowdsale_terms .content .info{
        font-size: 12px;
        padding-bottom: 10px;
        text-align: left;
        padding-left: 20%;
    }
    #crowdsale_terms .info input[type='checkbox']{
        width: 12px;
        height: 12px;
        top: 3px;
        margin-right: 4px;
    }
    #crowdsale_terms input[type='button']{
        margin-bottom: 20px;
        margin-top: 20px;
    }
    #crowdsale_terms #terms{
        margin-left: -33%;
    }
    #crowdsale_terms .file_kyc_div{
        width: 90%;
        height: 120px;
    }
    #crowdsale_terms .file_kyc{
        width: 100%;
        height: 120px;
    }
    #crowdsale_terms .file_kyc_div{
        background-size: 37px;
    }
    #crowdsale_terms .kyc_info{
        font-size: 12px;
    }
}

</style>
<section id="crowdsale_terms">
    <div class="content">
        <form id="confirm_protocol_form" enctype="multipart/form-data">
            <h2 class="title">敬告:中国、美国及加拿大公民或居民</h2>
            <p class="text-info">如果您是中国公民、美国公民(美国绿卡持有者)或加拿大公民，则不得参与本次众售。</p>
            <input type="checkbox" id="terms" name="approve" value="yes"/>
            <p class="info">
                <span>我不是中国，美国及加拿大公民或居民</span><br  />
                <span>我已阅读并接受</span><a href="#" class="terms" onclick="viewProtocol()">《Sharder Protocol 用户协议》</a><span>条款</span>
            </p>
            <p class="kyc_title">上传身份证信息</p>
            <div class="file_kyc_div">
                <input type="file" name="kyc" id="file_kyc" class="file_kyc" onchange="changImg(this)"/>
            </div>
            <p class="kyc_info">您可以上传护照、驾驶执照及身份证照片(支持JPEG，PNG格式。大小5M以内)</p>
            <input type="button" value="确认并参与众售" onclick="confirmProtocol()">
        </form>
    </div>
</section>

<script>
    function changImg(file) {
        if(file.files && file.files[0]){
            var reader = new FileReader();
            reader.onload = function(evt) {
                $("#crowdsale_terms .file_kyc_div").css("background","url("+evt.target.result+") no-repeat center");
                $("#crowdsale_terms .file_kyc_div").css("background-size","contain");
            }
            reader.readAsDataURL(file.files[0]);
        }
    }
    function confirmProtocol() {
        if(!$("input[name='approve']").is(':checked') || $("#file_kyc").val() ==''){
            layer.msg("(┬＿┬)");
            return false;
        }
//        layer.load();
        var url = "/user_center/kyc.ss";
        var data = $("#confirm_protocol_form").serialize();
        commAjax(url,"post",data,confirmProtocolResult);
    }
    function confirmProtocolResult(_result){

       if(_result.approve == 'yes'){
           location.reload();
       }else{
           layer.msg("(┬＿┬)");
       }

    }

    function viewProtocol() {
        layer.open({
            title:'Sharder Protocol 用户协议',
            type: 1,
            area: ['80%', '80%'],
            content: "<ul id='invest_protocol'></ul>",
        });
        $("#invest_protocol").load("/r/cms/resource/sharders/invest-protocol.html");
    }
</script>