<#--众筹进度-->

<style>
    .sharder-row-timeline{
        width: 1080px;
        height: 12px;
        background-color: #ffffff;
        border-radius: 20px;
        border: 1px solid #0BA0D1;
        box-shadow: 0px 0px 4px #0BA0D1;
        margin: auto;
        margin-top: 30px;
        border-bottom:1px solid #0BA0D1;
    }
    @media (max-width: 640px) {
        .sharder-row-timeline{
            width: 75%;
            margin-top: 10px;
            margin-bottom: 40px;
        }
    }
    #zhongshou_jindu{
        display: inline-block;
        background: linear-gradient(to left, #0ba0d1 , #57d1fd);
        height: inherit;
        /*width: 10%;*/
        float: left;
        border-radius: 20px;
        animation: reverse progress-bar-stripes 0.40s linear infinite, animate-positive 2s;

        -webkit-transition: width .6s ease;
        -o-transition: width .6s ease;
        transition: width .6s ease;
    }
    @-webkit-keyframes animate-positive{
        0% { width: 0; }
    }
    @keyframes animate-positive{
        0% { width: 0; }
    }

    #zhongshou_jindu_bfb{
        position: absolute;
        font-size: 13px;
        margin-left: 5px;
        color: #0BA0D1;
        line-height: 13px;
    }
</style>
<div class="sharder-row-timeline">
    <span id="zhongshou_jindu"></span><span id="zhongshou_jindu_bfb">0%</span>
</div>

<script>

    //查询众筹进度
    $(document).ready(function () {

        commAjax("/api/crowdsaleInprogess.ss","get","",zcjdQueryResult);

        function zcjdQueryResult(_result) {
            if(isNotempty(_result)){
                var bfb = ((_result.result.paidAmount / _result.result.amount)*100).toFixed(2);
                bfb = bfb > 100 ? 100:bfb;
                $("#zhongshou_jindu").css("width",bfb+"%");
                $("#zhongshou_jindu_bfb").html(bfb+"%");

            }
        }
    })

</script>