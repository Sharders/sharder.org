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
            <p class="text ss-main-title zh i18n" name="sharder-storage-protocl">豆匣协议—跨链分布式存储协议</p>
            <p class="text ss-main-title en i18n" name="sharder-protocol-cross-chain">CROSS-CHAIN DISTRIBUTED STORAGE PROTOCOL</p>
        </div>
    </section>
    <section class="ss-container  sharder-network-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme" style="margin-bottom: 20px!important;">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="sharder-protocol">豆匣协议/</span>
                    <#--<span class="en i18n" name="sharder-protocol-en">SHARDER</span>-->
                </div>
            </div>
            <img src="" class="sub-main-logo">
            <dl class="items">
                <dt class="item">
                    <span><i class="fa fa-file-archive-o" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder-data-security">数据安全</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-data-security-body">
                    客户端离线加密、保证数据隐私性。 网络根据安全性自动对数据进行分片、分散存储、多备份。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder-credit-model">授信模型</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-credit-model-en">
                    独创SHARDER-UTXO和SHARDER-KEYPAIR保证数据必须在授信情况下才能被其他用户或机构访问和使用。数据所有权回归用户、绝对隐私。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-puzzle-piece" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder-decentralized">去中心化</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-decentralized-body">
                    无限扩容、永久存储、永不关停。 观察者实时同步全网数据对象最新状态、动态调整数据分布。确保.999数据安全性和可用性。减少重复备份，提高空间利用率。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-microchip" aria-hidden="true"></i></span>
                    <span class="text i18n"  name="sharder-bean-cartridge-mining">豆匣矿机</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-bean-cartridge-mining-body">
                    不再是惨烈的矿机军备竞赛，不再是先入者的狂欢，欢迎豆匣网络的保卫者们随时购买Sharder Hub加入豆匣网络共享挖矿红利。不再是浪费算力和存储空间，挖矿存储并举的一体机Sharder Box能获得挖矿、存储、观察者三重收益。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-braille" style="margin-left: -3px;" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder-shared-economic">跨链共享经济生态</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-shared-economic-body">
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
                    <span class="zh i18n" name="sharder-look-whitepaper">白皮书/</span>
                    <#--<span class="en i18n" name="sharder-look-whitepaper-en">WHITEPAPER</span>-->
                </div>

            </div>
            <ul class="items">
                <li class="item item1">
                    <span class="bps-icon"><i class="fa fa-download" aria-hidden="true"></i></span>
                    <p class="ss-sub-title zh i18n" name="sharder-technical-white-paper">技术白皮书</p>
                        <button>
                            <a href="/whitepaper/preview.ss?type=urlTechZh" class="i18n" name="btn.cn">中文</a>
                        </button>
                       <button class="tesu" >
                           <a class="i18n" name="btn.en">EN</a>
                       </button>
                </li>
                <li class="item item2">
                    <span class="bps-icon"><i class="fa fa-file-code-o" aria-hidden="true"></i></span>
                    <p class="ss-sub-title zh i18n" name="sharder-look-whitepaper">白皮书</p>
                    <button>
                        <a href="/whitepaper/preview.ss?type=urlEncoZh" class="i18n" name="btn.cn">中文</a>
                    </button>
                    <button >
                        <a href="/whitepaper/preview.ss?type=urlEncoEn" class="i18n" name="btn.en">EN</a>
                    </button>
                </li>
                <li class="item item3">
                    <span class="bps-icon"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></span>
                    <p class="ss-sub-title zh i18n" name="sharder-user-manual">用户手册</p>
                    <button class=" tesu" >
                        <a  class="i18n" name="btn.cn">中文</a>
                    </button>
                    <button class=" tesu" >
                        <a class="i18n" name="btn.en">EN</a>
                    </button>
                </li>
            </ul>
        </div>
    </section>

    <section class="ss-container  sharder-more-main ">
        <div class="ss-main">
            <#if user ?? >
                <a href="/invest/invest.ss"><button class="ss-main-btn i18n" name="sharder-to-learn-more" >了解更多</button></a>
            <#else >
                <a href="/register.ss"><button class="ss-main-btn i18n" name="sharder-immediately-join">立即加入</button></a>
            </#if>
            <h4 class="ss-sub-title i18n" name="sharder-learn-more-join">加入我们了解更多豆匣协议详情!</h4>
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
                    <span class="zh i18n" name="sharder-cartridge-team">豆匣团队/</span>
                    <#--<span class="en i18n" name="sharder-cartridge-team-en">TEAM</span>-->
                </div>
            </div>
            <div class="switch-team">
                <input type="radio"  class="ss-radio-hidden" id="douxia" name="team" checked>
                <label class="switch-btn i18n" for="douxia" onclick="showTeam('douxia')" name="chinese-team">中国团队</label>
                <input type="radio" class="ss-radio-hidden" id="guojiteam" name="team">
                <label class="switch-btn i18n" for="guojiteam" onclick="showTeam('guoji')" name="global-community">全球社区</label>
            </div>
            <#--<div class="team-banner banner" id="team_banner">-->
                <#--<#include "/WEB-INF/ftl/sharders/team.ftl">-->
            <#--</div>-->
            <div id="team_picture"></div>
        </div>
    </section>
    <section class="ss-container sharder-project-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="sharder-roadmap">路线图/</span>
                    <#--<span class="en i18n" name="sharder-roadmap-en">ROAD MAP</span>-->
                </div>
            </div>
            <div class="m-timeline">
                <#--<img  src="/r/cms/resource/sharders/img/mobile/index/m-timeline.png">-->
                <ul class="items items1">
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">2017</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-conch-project">海螺立项</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-development-conch-chain">海螺链研发</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-conch-test-network">海螺测试网络</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-consensus-client-integral">CPOS共识出块,多终端客户端,海螺积分</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-protocol-paper">豆匣协议白皮书</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-cross-chain-storage-protocol">跨链存储协议、多链架构、授信模型</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-development-sharder">豆匣研发</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-open-source-github">Github开源</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-community">豆匣社区</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-community-partner-task-drop">中英文社,区城市合伙人,奖金任务，社区空投</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-cloud-storage-open-beta">云存公测</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-merchants-access">100家商户接入,博恩云接入</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-sharder-hub">微节点矿机</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-micro-miner-client-terminal">微节点矿机、存储者客户端</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-great-chain-block">多链出块</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-deployment-agreement">部署协议到海螺网络和链子量，私有云</span>
                        </p>
                    </li>
                </ul>
                <ul class="items items2">
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-conch-paper">海螺白皮书</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-conch-community">海螺社区</h6>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-cloud-storage">云存</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-Block-chain-deposit-certificate">区块链存证,证明人公证</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">2018</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-bean-cloud-alpha">云存内测</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-electricity-online-finance-private">首批10家电商和互联,网金融平台参与内测</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-chain">豆匣链</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-implement-bean-box-protocol">实现豆匣协议数据分片全节点客服端</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-observer-certifier">观察者和证明人</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-data-distribution-index-model">数据分析数据索引服务授信模型</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-smart-contract">智能合约</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-mobile-wallet-exchange">图灵完备智能合约担保交易模型虚拟机</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-light-client">轻客户端</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-wallet-token">移动钱包，币币兑换网页版轻钱包</span>
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
    $(function () {
        showTeam("douxia");
    })


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

    if(isNotempty("${user!}")){
        layer.open({
            type: 1,
            shade: false,
            title: false, //不显示标题
            skin: 't-hint-info', //加上边框
            area: ['300px',''], //宽高
            content: "\n" +
            "<p>各位豆匣支持者，谢谢您们的关注和支持。目前由于转账数量较多，我们的客服小伙伴需要一些时间逐一进行人工核对，请耐心等待我们的确认结果。我们最晚会于今天22:00前把01月30日09:00之前资料齐全的所有转账都完成核对和确认！</p>\n" +
            "<p>Dear Sharder contributors, thank you for your support. Because of the high volume of transaction, we may need more time to confirm each transaction mannually. The transactions before Jan. 30 0:00 UTC and with complete proof documents will be confirmed no later than Jan. 30 14:00 UTC. Thank you</p>\n" +
            "<p>客服邮箱/service email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;service@sharder.org</p>"

        });
    }


</script>
</@lay.htmlBody>