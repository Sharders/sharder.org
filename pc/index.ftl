<#import "/WEB-INF/ftl/sharders/ss_tpl_index.ftl" as indexTpl/>

<@layout.htmlHead>
    <link type="text/css" rel="stylesheet" href="${resSys}/resource/sharders/css/index.css">
    <link type="text/css" rel="stylesheet" href="${resSys}/resource/sharders/css/common.css">
    <script src="${resSys}/resource/sharders/js/unslider.min.js" type="text/javascript"></script>
</@layout.htmlHead>

<@layout.htmlBody>
<div class="index" id="index" onload="showTeam('douxia')">
    <section class="ss-container home-page tail">
        <div class="ss-main">
            <ul class="network"></ul>
            <p class="text ss-main-title zh i18n" name="sharder.big.title">豆匣协议—跨链分布式存储协议</p>
            <p class="text ss-main-title en i18n" name="sharder.big.title.en">CROSS-CHAIN DISTRIBUTED STORAGE PROTOCOL</p>
        </div>
        <section id="sectionDownMouse">
            <a href="#sharder-network-main"><span></span></a>
        </section>
    </section>
    <section class="ss-container sharder-network-main tail" id="sharder-network-main">
        <div class="ss-main">
            <div class="sharder-network">
                <div class="ss-main-title ss-main-btn theme">
                    <div class="ss-hover-effect">
                        <span class="blank"></span>
                        <span class="zh i18n" name="project-main.title.protocol">豆匣协议</span>
                        <#--<span class="en i18n" name="project-main.subtitle.protocol">SHARDER</span>-->
                    </div>
                </div>
                <ul>
                    <li class="ss-describe ss-describe1">
                        <div class="item item1">
                            <h4 class="ss-sub-title i18n" name="sharder.network.main.title1">数据安全</h4>
                            <div class="ss-content i18n" name="sharder.network.main.content1">
                                客户端离线加密、保证数据隐私性。 网络根据安全性自动对数据进行分片、分散存储、多备份。
                            </div>
                        </div>
                        <div class="item item2">
                            <h4 class="ss-sub-title i18n" name="sharder.network.main.title2">授信模型</h4>
                            <div class="ss-content i18n" name="sharder.network.main.content2">独创SHARDER-UTXO和SHARDER-KEYPAIR保证数据必须在授信情况下才能被其他用户或机构访问和使用。数据所有权回归用户、绝对隐私。</div>
                        </div>
                    </li>
                    <li class="ss-describe ss-describe2">
                        <div class="item item3">
                            <h4 class="ss-sub-title i18n" name="sharder.network.main.title3">去中心化</h4>
                            <div class="ss-content i18n" name="sharder.network.main.content3">无限扩容、永久存储、永不关停。 观察者实时同步全网数据对象最新状态、动态调整数据分布。确保.999数据安全性和可用性。减少重复备份，提高空间利用率。</div>
                        </div>
                        <div class="item item4">
                            <h4 class="ss-sub-title i18n" name="sharder.network.main.title4">豆匣矿机 </h4>
                            <div class="ss-content i18n" name="sharder.network.main.content4">不再是惨烈的矿机军备竞赛，不再是先入者的狂欢，欢迎豆匣网络的保卫者们随时购买Sharder Hub加入豆匣网络共享挖矿红利。不再是浪费算力和存储空间，挖矿存储并举的一体机Sharder Box能获得挖矿、存储、观察者三重收益。</div>
                        </div>
                    </li>
                    <li class="ss-describe ss-describe3">
                        <div class="item item5">
                            <h4 class="ss-sub-title i18n" name="sharder.network.main.title5">跨链共享经济生态</h4>
                            <div class="ss-content i18n" name="sharder.network.main.content5">首创存储协议跨链部署构建共享经济生态，允许用户将闲置存储接入豆匣网络提供空间换取相应报酬。依靠点对点自由交易市场让用户透明、公开、自由、公平地进行数据交易，打破价格垄断，让定价权回归用户和市场供需。</div>
                        </div>
                    </li>
                </ul>

            <div/>
        </div>
    </section>
    <section class="ss-container sharder-definition-main tail">
        <@indexTpl.sharderDef/>
    </section>
    <section class="ss-container sharder-documents-main tail" id="whitepaper">
        <div class="ss-main" name="whitepaper">
            <div class="ss-main-title ss-main-btn theme">
                <div class="ss-hover-effect">
                    <span class="blank"></span>
                    <span class="zh i18n" name="project-main.title.whitepaper">白皮书</span>
                    <#--<span class="en i18n" name="project-main.subtitle.whitepaper">WHITEPAPER</span>-->
                </div>
            </div>
            <ul class="items">
                <li class="item item1">
                    <span class="bps-icon"><i class="fa fa-download" aria-hidden="true"></i></span>
                    <p class="ss-sub-title en"><a href="https://sharder.org/whitepaper/preview.ss?type=urlTechZh" title="查看技术白皮书" target="_blank"><span class="i18n" name="TECHNICAL-WHITE-PAPER">技术白皮书</span><i class="fa fa-eye" aria-hidden="true"></i></a></p>
                    <a href="${sharderCfg('urlTechZh')}">
                        <button class="down-btn zh " >
                            <span class="i18n" name="btn.zh">中文</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                    <a href="javascript:void(0);">
                        <button class="down-btn en closed">
                            <span class="i18n" name="btn.en">EN</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                </li>
                <li class="item item2">
                    <span class="bps-icon"><i class="fa fa-file-code-o" aria-hidden="true"></i></span>
                    <p class="ss-sub-title en"><a href="https://sharder.org/whitepaper/preview.ss?type=urlEncoZh" title="查看白皮书" target="_blank"><span class="i18n" name="project-main.title.whitepaper">白皮书</span><i class="fa fa-eye" aria-hidden="true"></i></a></p>
                    <a href="${sharderCfg('urlEncoZh')}">
                        <button class="down-btn zh " >
                            <span class="i18n" name="btn.zh">中文</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                    <a href="${sharderCfg('urlEncoEn')}">
                        <button class="down-btn en">
                            <span class="i18n" name="btn.en">EN</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                </li>
                <li class="item item3">
                    <span class="bps-icon"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></span>
                    <p class="ss-sub-title en"><a href="https://sharder.org/whitepaper/preview.ss" title="查看用户手册" target="_blank"><span class="i18n" name="User-Manual">用户手册</span><i class="fa fa-eye" aria-hidden="true"></i></a></p>

                    <a href="javascript:void(0);">
                        <button class="down-btn zh" >
                            <span class="i18n" name="btn.zh">中文</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>

                    <a href="javascript:void(0);">
                        <button class="down-btn en">
                            <span class="i18n" name="btn.en">EN</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                </li>
            </ul>
        </div>
    </section>
    <section class="ss-container sharder-more-main tail">
        <div class="ss-main ss-hover-effect">
            <h4 class="ss-sub-title zh i18n" name="sharder-more-main.main-title">加入我们了解更多豆匣协议详情</h4>
            <#--<h5 class="ss-sub-title en">Sharder - Cross-chain Distributed Storage Protocol</h5>-->
            <#if user ?? >
                <a href="/invest/invest.ss"><button class="ss-main-btn ss-hover-effect i18n" name="liaojiegengduo">了解更多</button></a>
            <#else >
                <a href="/register.ss"><button class="ss-main-btn ss-hover-effect i18n"  name="lijijiaru">立即加入</button></a>
            </#if>
        </div>
    </section>

    <section class="ss-container sharder-use-main tail">
       <@indexTpl.sharderDApp/>
    </section>

    <section class="ss-container sharder-team-main tail">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div class="ss-hover-effect">
                    <span class="blank"></span>
                    <span class="zh i18n" name="project-main.title.team">豆匣团队</span>
                    <#--<span class="en i18n" name="project-main.subtitle.team">TEAM</span>-->
                </div>
            </div>

            <div class="switch-team">
                <input type="radio"  class="ss-radio-hidden" id="douxia" name="team" checked>
                <label class="switch-btn i18n" for="douxia" onclick="showTeam('douxia')" name="douxiateam">中国团队</label>
                <input type="radio" class="ss-radio-hidden" id="guojiteam" name="team">
                <label class="switch-btn i18n" for="guojiteam" onclick="showTeam('guoji')" name="guojiteam">全球社区</label>
            </div>

            <div id="team_picture"></div>

            <#--<div class="team-banner banner" id="team_banner">-->
                <#--<#include "/WEB-INF/ftl/sharders/team.ftl">-->
                <#--<a href="javascript:void(0);" class="page-turning prev ss-hover-effect"><img class="arrow" id="al" src="/r/cms/resource/sharders/img/index/towards-left.png" alt="prev"></a>-->
                <#--<a href="javascript:void(0);" class="page-turning next ss-hover-effect"><img class="arrow" id="ar" src="/r/cms/resource/sharders/img/index/towards-right.png" alt="next"></a>-->
            <#--</div>-->
            <#--<#include "/WEB-INF/ftl/sharders/overseas_team.ftl">-->
        </div>
    </section>
    <section class="ss-container sharder-project-main tail">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div class="ss-hover-effect">
                    <span class="blank"></span>
                    <span class="zh i18n" name="project-main.title.roadmap">路线图</span>
                    <#--<span class="en i18n" name="project-main.subtitle.roadmap">ROAD MAP</span>-->
                </div>
            </div>
            <ul class="items">
                <li class="items1">
                    <ul>
                        <li>
                            <p class="i18n" name="project-main.items1.item-item1.title1">海螺链研发</p>
                            <span></span>
                        </li>
                        <li >
                            <p class="i18n" name="project-main.items1.item-item2.title1">云存</p>
                            <span class="i18n" name="project-main.items1.item-item2.title2">区块链存证、证明人公证</span>
                            <p class="i18n" name="project-main.items1.item-item2.title3">豆匣协议白皮书</p>
                            <span class="i18n" name="project-main.items1.item-item2.title4">跨链存储协议、多链架构、授信模型</span>
                        </li>
                        <li>
                            <p class="i18n" name="project-main.items1.item-item3.title1">豆匣链</p>
                            <span class="i18n" name="project-main.items1.item-item3.title2">实现豆匣协议、数据分片、全节点客户端</span>
                            <p class="i18n" name="project-main.items1.item-item3.title3">云存公测</p>
                            <span class="i18n" name="project-main.items1.item-item3.title4">100家商户接入、博恩云接入</span>
                        </li>
                        <li>
                            <p class="i18n" name="project-main.items1.item-item4.title1">轻客户端</p>
                            <span class="i18n" name="project-main.items1.item-item4.title2">移动端钱包、网页版轻钱包、币币兑换</span>
                            <p class="i18n" name="project-main.items1.item-item4.title3">多链出块</p>
                            <span class="i18n" name="project-main.items1.item-item4.title4">部署协议到海螺网络和量子链、私有云</span>
                        </li>
                    </ul>
                </li>
                <li class="items3">
                    <ul>
                        <li>
                            <p class="i18n" name="project-main.items3.item-item1.title1">海螺立项</p>
                            <span ></span>
                            <p class="i18n" name="project-main.items3.item-item1.title2">海螺白皮书</p>
                            <span></span>
                        </li>
                        <li>
                            <p class="i18n" name="project-main.items3.item-item2.title1">海螺社区</p>
                            <span class="i18n" name="project-main.items3.item-item2.title2">海螺Q群、海螺官网、海螺微信</span>
                            <p class="i18n" name="project-main.items3.item-item2.title3">海螺测试网络</p>
                            <span class="i18n" name="project-main.items3.item-item2.title4">CPOS共识出块、多终端客户端、海螺积分</span>
                        </li>
                        <li>
                            <p class="i18n" name="project-main.items3.item-item3.title1">豆匣公链研发</p>
                            <span class="i18n" name="project-main.items3.item-item3.title2">Github开源</span>
                            <p class="i18n" name="project-main.items3.item-item3.title3">云存内测</p>
                            <span class="i18n" name="project-main.items3.item-item3.title4">首批10家电商和互联网金融平台参与内测</span>
                            <p class="i18n" name="project-main.items3.item-item3.title5">豆匣社区</p>
                            <span class="i18n" name="project-main.items3.item-item3.title6">中英文社区、城市合伙人、奖金任务、社区空投</span>
                        </li>
                        <li>
                            <p class="i18n" name="project-main.items3.item-item4.title1">观察者和证明者</p>
                            <span class="i18n" name="project-main.items3.item-item4.title2">数据分布调整、数据索引服务、授信模型</span>
                            <p class="i18n" name="project-main.items3.item-item4.title3">微节点矿机</p>
                            <span class="i18n" name="project-main.items3.item-item4.title4">微节点矿机、存储者客户端</span>
                            <p class="i18n" name="project-main.items3.item-item4.title5">智能合约</p>
                            <span class="i18n" name="project-main.items3.item-item4.title6">图灵完备智能合约、担保交易模型、虚拟机</span>
                        </li>
                    </ul>
                </li>

            </ul>
            <span class="span h1">2018</span>
            <span class="span h2">2017</span>
        </div>
    </section>
    <section class="ss-container sharder-partner-main tail">
        <@indexTpl.sharderPartner/>
    </section>
</div>
<script>
    $(function () {
        showTeam("douxia");
    })
    if(isNotempty("${user!}")){
        layer.open({
            type: 1,
            shade: false,
            title: false, //不显示标题
            skin: 't-hint-info', //加上边框
            area: ['700px',''], //宽高
            content: "\n" +
            "<p>各位豆匣支持者，谢谢您们的关注和支持。目前由于转账数量较多，我们的客服小伙伴需要一些时间逐一进行人工核对，请耐心等待我们的确认结果。我们最晚会于2月01号22:00前把2月01日09:00之前资料齐全的所有转账都完成核对和确认！</p>\n" +
            "<p>Dear Sharder contributors, thank you for your support. Because of the high volume of transaction, we may need more time to confirm each transaction mannually. The transactions before Feb.1st 0:00 UTC and with complete proof documents will be confirmed no later than Feb.1st 30 14:00 UTC. Thank you!</p>\n" +
            "<p>客服邮箱/Customer service email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;service@sharder.org</p>"

        });
    }

</script>
</@layout.htmlBody>