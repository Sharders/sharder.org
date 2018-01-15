<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="index">
<script src="${resSys}/resource/sharders/js/unslider.min.js" type="text/javascript"></script>
<link rel="stylesheet"href="${resSys}/resource/sharders/css/mobile/index.css">

<#--<script src="/r/cms/resource/sharders/js/swiper-3.4.2.jquery.min.js"></script>-->
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
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="">豆匣网络/</span>
                    <span class="en">SHARDER</span>
                </div>
            </div>
            <img src="" class="sub-main-logo">
            <dl class="items">
                <dt class="item">
                    <span><i class="fa fa-shield" aria-hidden="true"></i></span>
                    <span class="text i18n" name="">数据安全</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="">
                    客户端离线加密、保证数据隐私性。 网络根据安全性自动对数据进行分片、分散存储、多备份。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-hourglass-start" aria-hidden="true"></i></span>
                    <span class="text">授信模型</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail">
                    独创SHARDER-UTXO和SHARDER-KEYPAIR保证数据必须在授信情况下才能被其他用户或机构访问和使用。数据所有权回归用户、绝对隐私。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-balance-scale" aria-hidden="true"></i></span>
                    <span class="text i18n" name="">去中心化</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="">
                    无限扩容、永久存储、永不关停。 观察者实时同步全网数据对象最新状态、动态调整数据分布。确保.999数据安全性和可用性。减少重复备份，提高空间利用率。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-microchip" aria-hidden="true"></i></span>
                    <span class="text i18n" name="">豆匣矿机</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="">
                    不再是惨烈的矿机军备竞赛，不再是先入者的狂欢，欢迎豆匣网络的保卫者们随时购买Sharder Hub加入豆匣网络共享挖矿红利。不再是浪费算力和存储空间，挖矿存储并举的一体机Sharder Box能获得挖矿、存储、观察者三重收益。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                    <span class="text i18n" name="">跨链共享经济生态</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="">
                    首创存储协议跨链部署构建共享经济生态，允许用户将闲置存储接入豆匣网络提供空间换取相应报酬。依靠点对点自由交易市场让用户透明、公开、自由、公平地进行数据交易，打破价格垄断，让定价权回归用户和市场供需。
                </dd>
            </dl>
        </div>
    </section>
    <section class="ss-container  sharder-definition-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="">豆匣定义/</span>
                    <span class="en">DEFINITION</span>
                </div>
            </div>
            <ul class="items">
                <li class="item item1">
                    <div class="up">
                        <div><h4 class="ss-sub-title i18n" name="">豆匣协议 （Sharder Protocol）</h4></div>
                        <div> <img src="${resSys}/resource/sharders/img/index/douxiaxieyi.png"></div>
                    </div>
                    <p class="ss-content i18n" name="">
                        豆匣协议是份可跨链部署的分布式存储协议，当前的各种公链、存储网络、个人节点都可部署或运行豆匣客户端。
                        在豆匣协议中定义了各种对象、数据存取的操作函数、存储校验机制、共识机制、贡献度量化、数据授信机制。
                        同时也对数据加密、数据分片、多链架构、文件系统、智能合约、自由市场、安全性、可用性、伸缩性等方面进行了抽象和设计。
                    </p>
                </li>
                <li class="item item2">
                    <div class="up">
                        <div><img src="${resSys}/resource/sharders/img/index/net_form_topology.png"></div>
                        <div><h4 class="ss-sub-title i18n" name="">豆匣池（Sharder Pool）</h4></div>
                    </div>
                    <p class="ss-content i18n" name="">
                        由多个部署了豆匣协议的节点组成的小型网络（类似于当前比特币网络里的矿池）。
                        现有的公链或存储网络只要部署了豆匣协议也就形成了一个豆匣池。
                        豆匣池之间通过豆匣协议原生的多链结构能够跨链通讯和交易，进行数据和价值互换。
                    </p>
                </li>
                <li class="item item3">
                    <div class="up">
                        <div><h4 class="ss-sub-title i18n" name="">豆匣公链 （Sharder Chain）</h4></div>
                        <div><img src="${resSys}/resource/sharders/img/index/tree_topology.png"></div>
                    </div>
                    <p class="ss-content i18n" name="">
                        第一个部署了豆匣存储协议的商用公链，是0号豆匣池（Sharder-Pool<sub>0</sub>）。
                        是构成豆匣网络的一个重要的豆匣池和基石。豆匣协议的所有特性都会在豆匣链中首先实现和测试。
                        同时作为一条商用公链还有一些相应特性：易用的账户模型、数字资产、担保交易、定制化API、运营支撑系统等。
                    </p>
                </li>
                <li class="item item3">
                    <div class="up">
                        <div><h4 class="ss-sub-title">豆匣网络 （Sharder Network）</h4></div>
                        <div><img src="${resSys}/resource/sharders/img/index/star_topology.png"></div>
                    </div>
                    <p class="ss-content i18n" name="">
                        各种部署了豆匣协议的豆匣池最终组成了去中心化分布式的豆匣网络。豆匣网络不仅提供高质量低价格的数据服务。还会研发云存（Bean Cloud）、矩阵（Sharder Matrix）、智脑（Sharder Brain）、数据集市(One Fair)等DApp应用，围绕数据构建跨链共享经济生态，豆匣终将会彻底改变整个存储世界和人类数据价值融通交换的方式。
                    </p>
                </li>
            </ul>
        </div>
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
                <a href="/invest/invest.ss"><button class="ss-main-btn i18n" name="">立即加入</button></a>
            <#else >
                <a href="/register.ss"><button class="ss-main-btn i18n" name="">立即加入</button></a>
            </#if>
            <h4 class="ss-sub-title i18n" name="">加入我们了解更多豆匣协议详情!</h4>
        </div>
    </section>

    <section class="ss-container sharder-use-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="">商业应用/</span>
                    <span class="en i18n" name="">DApp</span>
                </div>
            </div>
            <ul class="items">
                <li class="item item1">
                    <div>
                        <img src="${resSys}/resource/sharders/img/index/cloud_storage.png">
                    </div>
                    <div>
                        <h3 class="ss-sub-title i18n" name="">云存（Bean Cloud）</h3>
                        <p class="ss-content i18n" name="">
                            数据存储、存证和保全平台。主要服务于P2P网贷、小贷、消费金融、电商、ERP系统，可以将电子合同、支付凭证、投资记录等电子数据保存于豆匣网络中，利用区块链可溯源不可篡改的特性对已上链和保存于豆匣网络中的数据出具保全证书和司法证明。
                        </p>
                    </div>
                </li>
                <li class="item item2">
                    <div>
                        <img src="${resSys}/resource/sharders/img/index/juzheng.png">
                    </div>
                    <div>
                        <h3 class="ss-sub-title i18n" name="">矩阵（Sharder Matrix）</h3>
                        <p class="ss-content i18n" name="">
                            围绕个人的数据存储应用。您的生物数据（包括基因信息、成长记录、医疗数据等），甚至于您的所思所想都可以记录到矩阵中。随着数据的不断累积最终形成个体独特的豆匣数据矩阵。
                        </p>
                    </div>
                </li>
                <li class="item item1">
                    <div>
                        <img src="${resSys}/resource/sharders/img/index/zhinao.png">
                    </div>
                    <div>
                        <h3 class="ss-sub-title i18n" name="">智脑（Sharder Brain）</h3>
                        <p class="ss-content i18n" name="">
                            随着人工智能AI、智能硬件和物联网的发展，以及未来无监督学习的突破。我们坚信智脑能在数据安全、数据分布调整、数据分析、数据搜索、数据预警（数据安全性预警、个人生命特征预警）等方面为个人和企业提供智能的数据服务。
                        </p>
                    </div>
                </li>
                <li class="item item2">
                    <div>
                        <img src="${resSys}/resource/sharders/img/index/onefair.png">
                    </div>
                    <div>
                        <h3 class="ss-sub-title i18n" name="">数据集市（One Fair）</h3>
                        <p class="ss-content i18n" name="">
                            基于豆匣公链和豆匣协议最终会形成围绕个人的数据自由集市。在数据集市里能透明、公开、自由、公平地进行点对点交易。可交易的内容包括：存储空间、数字资产、被证明过的数据、有价值的信息等。甚至个人可以售卖自己的生命体征数据给医疗研究机构。数据集市One Fair终将让你的数据能够更加便捷快速地融通，我们相信沉默的数据丧失了流动性就如现金资产一般只会越来越贬值。
                        </p>
                    </div>
                </li>
            </ul>
        </div>
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
                        <h6 class="sub-title title i18n" name="">海螺立项</h6>
                        <p class="ss-content"></p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">海螺连研发</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">海螺测试网络</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">CPOS共识出块</span>
                            <span class="i18n" name="">多终端客户端</span>
                            <span class="i18n" name="">海螺积分</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">豆匣协议白皮书</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">CPOS共识出块</span>
                            <span class="i18n" name="">多终端客户端</span>
                            <span class="i18n" name="">海螺积分</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">豆匣研发</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">Github开源</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">豆匣社区</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">中英文社区</span>
                            <span class="i18n" name="">城市合伙人</span>
                            <span class="i18n" name="">奖金任务，社区空投</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">云存公测</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">100家商户接入</span>
                            <span  class="i18n" name="">博恩云接入</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">微节点矿机</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">Windows微矿机</span>
                            <span class="i18n" name="">存储者客户端</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">多链出块</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">部署协议到海螺网络</span>
                            <span class="i18n" name="">和链子量，私有云</span>
                        </p>
                    </li>
                </ul>
                <ul class="items items2">
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">海螺白皮书</h6>
                        <p class="ss-content"></p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">海螺社区</h6>
                        <p class="ss-content i18n" name="">海螺Q群，官网，微信</p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">云存</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">区块链存证</span>
                            <span class="i18n" name="">证明人公证</span>
                        </p>

                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">2018年</h6>
                        <p class="ss-content"></p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">云存内测</h6>
                        <p class="ss-content">
                            <span class="i18n" name="">首批10家电商和互联</span>
                            <span class="i18n" name="">网金融平台参与内测</span>
                        </p>
                    </li>

                    <li class="item">
                        <h6 class="sub-title title i18n" name="">云存公测</h6>
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
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="">合作伙伴/</span>
                    <span class="en i18n" name="">PARTNER</span>
                </div>
            </div>
            <ul class="items">
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/partner/zbj.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/partner/yjf.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/partner/tgs.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/partner/brgf.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/partner/kxjt.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/partner/ayjt.png">
                </li>
                <li class="item ">
                    <img src="${resSys}/resource/sharders/img/partner/schange.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/partner/xor.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/partner/ges.png">
                </li>
            </ul>
        </div>
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
                    icon.removeClass("fa-angle-double-down");
                    icon.addClass("fa-angle-double-up");
                    clickObj.css("color", "#0ba0d1");
                } else if (_obj.css("display") == "block") {
                    icon.removeClass("fa-angle-double-up");
                    icon.addClass("fa-angle-double-down");
                    clickObj.css("color", "#222");
                }
            } catch (e) {
            }

            $(_obj).slideToggle(20);
        })
    });

</script>
</@lay.htmlBody>