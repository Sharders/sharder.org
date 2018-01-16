<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<#import "/WEB-INF/ftl/sharders/ss_tpl_index.ftl" as indexTpl/>

<@lay.htmlHead  pagename="index">
<link rel="stylesheet"href="${resSys}/resource/sharders/css/mobile/index.css">
<link type="text/css" rel="stylesheet" href="${resSys}/resource/sharders/css/common.css">
<script src="${resSys}/resource/sharders/js/unslider.min.js" type="text/javascript"></script>
</@lay.htmlHead>

<@lay.htmlBody>
<div class="index">
    <section class="ss-container  home-page">
        <div class="ss-main">
            <img src="${resSys}/resource/sharders/img/mobile/m-home-background.png" class="background">
            <p class="text ss-main-title zh i18n" name="">豆匣协议—跨链分布式存储协议</p>
            <p class="text ss-main-title en">CROSS-CHAIN DISTRIBUTED STORAGE PROTOCOL</p>
        </div>
    </section>
    <section class="ss-container  sharder-network-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme" style="margin-bottom: 20px!important;">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n">豆匣协议/</span>
                    <span class="en">SHARDER</span>
                </div>
            </div>
            <img src="" class="sub-main-logo">
            <dl class="items">
                <dt class="item">
                    <span><i class="fa fa-file-archive-o" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder.network.main.title1">数据安全</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder.network.main.content1">
                    客户端离线加密、保证数据隐私性。 网络根据安全性自动对数据进行分片、分散存储、多备份。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder.network.main.title2">授信模型</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder.network.main.content2">
                    独创SHARDER-UTXO和SHARDER-KEYPAIR保证数据必须在授信情况下才能被其他用户或机构访问和使用。数据所有权回归用户、绝对隐私。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-puzzle-piece" aria-hidden="true"></i></span>
                    <span class="text i18n">去中心化</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="">
                    无限扩容、永久存储、永不关停。 观察者实时同步全网数据对象最新状态、动态调整数据分布。确保.999数据安全性和可用性。减少重复备份，提高空间利用率。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-microchip" aria-hidden="true"></i></span>
                    <span class="text i18n"  name="sharder.network.main.title4">豆匣矿机</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder.network.main.content4">
                    不再是惨烈的矿机军备竞赛，不再是先入者的狂欢，欢迎豆匣网络的保卫者们随时购买Sharder Hub加入豆匣网络共享挖矿红利。不再是浪费算力和存储空间，挖矿存储并举的一体机Sharder Box能获得挖矿、存储、观察者三重收益。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-braille" style="margin-left: -3px;" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder.network.main.title5">跨链共享经济生态</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder.network.main.content5">
                    首创存储协议跨链部署构建共享经济生态，允许用户将闲置存储接入豆匣网络提供空间换取相应报酬。依靠点对点自由交易市场让用户透明、公开、自由、公平地进行数据交易，打破价格垄断，让定价权回归用户和市场供需。
                </dd>
            </dl>
        </div>
    </section>
    <section class="ss-container  sharder-definition-main">
        <@indexTpl.sharderDef isMobile=true />
    </section>

    <section class="ss-container  sharder-documents-main" id="whitepaper">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="">白皮书/</span>
                    <span class="en">Whitepaper</span>
                </div>

            </div>
            <ul class="items">
                <li class="item item1">
                    <i class="img"></i>
                    <p class="ss-sub-title zh i18n" name="">技术白皮书</p>
                    <a href="http://oss.sharder.org/sharder/whitepaper/sharder-technical-whitepaper-v1.1-cn.pdf"><button class="i18n" name="">中文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                    <a href="http://oss.sharder.org/sharder/whitepaper/sharder-technical-whitepaper-v1.1-cn.pdf"><button class="i18n" name="" style="background-color: #d2d2d2">英文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                </li>
                <li class="item item2">
                    <i class="img"></i>
                    <p class="ss-sub-title zh i18n" name="">经济白皮书</p>
                    <a href="http://oss.sharder.org/sharder/whitepaper/sharder-economic-whitepaper-v1.0-cn.pdf"><button class="i18n" name="" >中文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                    <a href="http://oss.sharder.org/sharder/whitepaper/sharder-economic-whitepaper-v1.0-cn.pdf"><button class="i18n" name="" style="background-color: #d2d2d2">英文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                </li>
                <li class="item item3">
                    <i class="img"></i>
                    <p class="ss-sub-title zh i18n" name="">用户手册</p>
                    <button style="background-color: #d2d2d2" class="i18n" name="">中文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button>
                    <button style="background-color: #d2d2d2" class="i18n" name="">英文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button>
                </li>
            </ul>
        </div>
    </section>

    <section class="ss-container  sharder-more-main ">
        <div class="ss-main">
            <#if user ?? >
                <a href="/invest/invest.ss"><button class="ss-main-btn i18n" liaojiegengduo=了解更多>了解更多</button></a>
            <#else >
                <a href="/register.ss"><button class="ss-main-btn i18n" name="lijijiaru">立即加入</button></a>
            </#if>
            <h4 class="ss-sub-title i18n" name="main-title">加入我们了解更多豆匣协议详情!</h4>
        </div>
    </section>

    <section class="ss-container sharder-use-main">
        <@indexTpl.sharderDApp/>
    </section>

    <section class="ss-container sharder-team-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="">豆匣团队/</span>
                    <span class="en i18n" name="">TEAM</span>
                </div>
            </div>
            <div class="team-banner banner" id="team_banner">
                <#include "/WEB-INF/ftl/sharders/team.ftl">
                <#--<a href="javascript:void(0);" class="page-turning prev"><img class="arrow" id="al" src="/r/cms/resource/sharders/img/index/towards-left.png" alt="prev"></a>-->
                <#--<a href="javascript:void(0);" class="page-turning next"><img class="arrow" id="ar" src="/r/cms/resource/sharders/img/index/towards-right.png" alt="next"></a>-->
            </div>
        </div>
    </section>
    <section class="ss-container sharder-project-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="">路线图/</span>
                    <span class="en i18n" name="">Road Map</span>
                </div>
            </div>
            <div class="m-timeline">
                <#--<img  src="/r/cms/resource/sharders/img/mobile/index/m-timeline.png">-->
                <ul class="items items1">
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">2017年</h6>
                        <p class="ss-content"></p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items3.item-item1.title1">海螺立项</h6>
                        <p class="ss-content"></p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">海螺链研发</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items3.item-item2.title3">海螺测试网络</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">CPOS共识出块</span>
                            <span class="i18n" name="">多终端客户端</span>
                            <span class="i18n" name="">海螺积分</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items1.item-item2.title3">豆匣协议白皮书</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">CPOS共识出块</span>
                            <span class="i18n" name="">多终端客户端</span>
                            <span class="i18n" name="">海螺积分</span>
                            <#--<span class="i18n" name="project-main.items3.item-item2.title4">CPOS共识出块、多终端客户端、海螺积分</span>-->
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items1.item-item1.title1">豆匣研发</h6>
                        <p class="ss-content">
                            <span class="i18n" name="project-main.items3.item-item3.title2">Github开源</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items3.item-item3.title5">豆匣社区</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">中英文社区</span>
                            <span class="i18n" name="">城市合伙人</span>
                            <span class="i18n" name="">奖金任务，社区空投</span>

                            <#--<span class="i18n" name="project-main.items3.item-item3.title6">中英文社区、城市合伙人、奖金任务、社区空投</span>-->
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items1.item-item3.title3">云存公测</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">100家商户接入</span>
                            <span  class="i18n" name="">博恩云接入</span>

                            <#--<span class="i18n" name="project-main.items1.item-item3.title4">100家商户接入、博恩云接入</span>-->
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items3.item-item4.title3">微节点矿机</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">Windows微矿机</span>
                            <span class="i18n" name="">存储者客户端</span>

                            <#--<span class="i18n" name="project-main.items3.item-item4.title4">微节点矿机、存储者客户端</span>-->
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items1.item-item4.title3">多链出块</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">部署协议到海螺网络</span>
                            <span class="i18n" name="">和链子量，私有云</span>

                            <#--<span class="i18n" name="project-main.items1.item-item4.title4">部署协议到海螺网络和量子链、私有云</span>-->
                        </p>
                    </li>
                </ul>
                <ul class="items items2">
                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items3.item-item1.title2">海螺白皮书</h6>
                        <p class="ss-content"></p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items3.item-item2.title1">海螺社区</h6>
                        <#--<p class="ss-content i18n" name="project-main.items3.item-item2.title2">海螺Q群，官网，微信</p>-->
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items1.item-item2.title1">云存</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">区块链存证</span>
                            <span class="i18n" name="">证明人公证</span>
                            <#--<span class="i18n" name="project-main.items1.item-item2.title2">区块链存证、证明人公证</span>-->
                        </p>

                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">2018年</h6>
                        <p class="ss-content"></p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items3.item-item3.title3">云存内测</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">首批10家电商和互联</span>
                            <span class="i18n" name="">网金融平台参与内测</span>

                            <#--<span class="i18n" name="project-main.items3.item-item3.title4">首批10家电商和互联网金融平台参与内测</span>-->
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="project-main.items1.item-item3.title3">豆匣链</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">实现豆匣协议</span>
                            <span class="i18n" name="">数据分片</span>
                            <span class="i18n" name="">全节点客服端</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">观察者和证明人</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">数据分析</span>
                            <span class="i18n" name="">数据索引服务</span>
                            <span class="i18n" name="">授信模型</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">智能合约</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">图灵完备智能合约</span>
                            <span class="i18n" name="">担保交易模型</span>
                            <span class="i18n" name="">虚拟机</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">轻客户端</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">移动钱包，币币兑换</span>
                            <span class="i18n" name="">网页版轻钱包</span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <section class="sharder-partner-main">
        <@indexTpl.sharderPartner isMobile=true />
    </section>
</div>

<script>
    $(document).ready(function(e) {
        var unslider04 = $('#team_banner').unslider({
//                    dots: true
                }),
                data04 = unslider04.data('unslider');

//        $('.page-turning').click(function() {
//            var fn = this.className.split(' ')[1];
//            data04[fn]();
//        });

//        $('.team-banner').on('swipeleft', function(e) {data04["next"]();});
//        $('.team-banner').on('swiperight', function(e) {data04["prev"]();});

//        var swiper = new Swiper('.swiper-container');
    });



    $(document).ready(function () {
        $(".sharder-network-main dt.item").click(function () {
            var clickObj = $(this);

            var icon = $(clickObj).find(".fa");
            var _obj = clickObj.next();
            try {
                if (_obj.css("display") == "none") {
                    icon.removeClass("fa-angle-down");
                    icon.addClass("fa-angle-up");
                    clickObj.css("color", "#0ba0d1");
                } else if (_obj.css("display") == "block") {
                    icon.removeClass("fa-angle-up");
                    icon.addClass("fa-angle-down");
                    clickObj.css("color", "#222");
                }
            } catch (e) {
            }
            $(_obj).slideToggle(20);
        })
    });

</script>
</@lay.htmlBody>