<#import "/WEB-INF/ftl/sharders/ss_tpl_index.ftl" as indexTpl/>

<@layout.htmlHead>
    <link type="text/css" rel="stylesheet" href="${resSys}/resource/sharders/css/index.css">
    <link type="text/css" rel="stylesheet" href="${resSys}/resource/sharders/css/common.css">
    <script src="${resSys}/resource/sharders/js/unslider.min.js" type="text/javascript"></script>
</@layout.htmlHead>

<@layout.htmlBody>




<#--${content}-->
<div class="index" id="index" onload="showTeam('douxia')">
    <section class="ss-container home-page tail">
        <div class="ss-main">
            <ul class="network"></ul>
            <p class="text ss-main-title zh i18n" name="sharder-storage-protocl">豆匣协议—跨链分布式存储协议</p>
            <p class="text ss-main-title en i18n" name="sharder-protocol-cross-chain">CROSS-CHAIN DISTRIBUTED STORAGE PROTOCOL</p>
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
                        <span class="zh i18n" name="sharder-protocol">豆匣协议</span>
                        <#--<span class="en i18n" name="sharder-protocol-en">SHARDER</span>-->
                    </div>
                </div>
                <ul>
                    <li class="ss-describe ss-describe1">
                        <div class="item item1">
                            <h4 class="ss-sub-title i18n" name="sharder-data-security">数据安全</h4>
                            <div class="ss-content i18n" name="sharder-data-security-body">
                                客户端离线加密、保证数据隐私性。 网络根据安全性自动对数据进行分片、分散存储、多备份。
                            </div>
                        </div>
                        <div class="item item2">
                            <h4 class="ss-sub-title i18n" name="sharder-credit-model">授信模型</h4>
                            <div class="ss-content i18n" name="sharder-credit-model-en">独创SHARDER-UTXO和SHARDER-KEYPAIR保证数据必须在授信情况下才能被其他用户或机构访问和使用。数据所有权回归用户、绝对隐私。</div>
                        </div>
                    </li>
                    <li class="ss-describe ss-describe2">
                        <div class="item item3">
                            <h4 class="ss-sub-title i18n" name="sharder-decentralized">去中心化</h4>
                            <div class="ss-content i18n" name="sharder-decentralized-body">无限扩容、永久存储、永不关停。 观察者实时同步全网数据对象最新状态、动态调整数据分布。确保.999数据安全性和可用性。减少重复备份，提高空间利用率。</div>
                        </div>
                        <div class="item item4">
                            <h4 class="ss-sub-title i18n" name="sharder-bean-cartridge-mining">豆匣矿机 </h4>
                            <div class="ss-content i18n" name="sharder-bean-cartridge-mining-body">不再是惨烈的矿机军备竞赛，不再是先入者的狂欢，欢迎豆匣网络的保卫者们随时购买Sharder Hub加入豆匣网络共享挖矿红利。不再是浪费算力和存储空间，挖矿存储并举的一体机Sharder Box能获得挖矿、存储、观察者三重收益。</div>
                        </div>
                    </li>
                    <li class="ss-describe ss-describe3">
                        <div class="item item5">
                            <h4 class="ss-sub-title i18n" name="sharder-shared-economic">跨链共享经济生态</h4>
                            <div class="ss-content i18n" name="sharder-shared-economic-body">首创存储协议跨链部署构建共享经济生态，允许用户将闲置存储接入豆匣网络提供空间换取相应报酬。依靠点对点自由交易市场让用户透明、公开、自由、公平地进行数据交易，打破价格垄断，让定价权回归用户和市场供需。</div>
                        </div>
                    </li>
                </ul>

            </div>
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
                    <span class="zh i18n" name="project-main.title.whitepaper-tile">白皮书</span>
                    <#--<span class="en i18n" name="sharder-look-whitepaper-en">WHITEPAPER</span>-->
                </div>
            </div>
            <ul class="items">
                <li class="item item1">
                    <span class="bps-icon"><i class="fa fa-download" aria-hidden="true"></i></span>
                    <p class="ss-sub-title en"><a href="https://sharder.org/whitepaper/preview.ss?type=urlTechZh" title="查看技术白皮书" target="_blank"><span class="i18n" name="sharder-technical-white-paper">技术白皮书</span><i class="fa fa-eye" aria-hidden="true"></i></a></p>
                    <a href="${sharderCfg('urlTechZh')}">
                        <button class="down-btn zh " >
                            <span class="i18n" name="btn.cn">中文</span>
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
                    <p class="ss-sub-title en"><a href="https://sharder.org/whitepaper/preview.ss?type=urlEncoZh" title="查看白皮书" target="_blank"><span class="i18n" name="sharder-look-whitepaper">白皮书</span><i class="fa fa-eye" aria-hidden="true"></i></a></p>
                    <a href="${sharderCfg('urlEncoZh')}">
                        <button class="down-btn zh " >
                            <span class="i18n" name="btn.cn">中文</span>
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
                            <span class="i18n" name="btn.cn">中文</span>
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
            <h4 class="ss-sub-title zh i18n" name="sharder-learn-more-join">加入我们了解更多豆匣协议详情</h4>
            <#--<h5 class="ss-sub-title en">Sharder - Cross-chain Distributed Storage Protocol</h5>-->
            <#if user ?? >
                <a href="/invest/invest.ss"><button class="ss-main-btn ss-hover-effect i18n" name="sharder-to-learn-more">了解更多</button></a>
            <#else >
                <a href="/register.ss"><button class="ss-main-btn ss-hover-effect i18n"  name="sharder-immediately-join">立即加入</button></a>
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
                    <span class="zh i18n" name="sharder-cartridge-team">豆匣团队</span>
                    <#--<span class="en i18n" name="sharder-cartridge-team-en">TEAM</span>-->
                </div>
            </div>

            <div class="switch-team">
                <input type="radio"  class="ss-radio-hidden" id="douxia" name="team" checked>
                <label class="switch-btn i18n" for="douxia" onclick="showTeam('douxia')" name="chinese-team">中国团队</label>
                <input type="radio" class="ss-radio-hidden" id="guojiteam" name="team">
                <label class="switch-btn i18n" for="guojiteam" onclick="showTeam('guoji')" name="global-community">全球社区</label>
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
                    <span class="zh i18n" name="sharder-roadmap">路线图</span>
                    <#--<span class="en i18n" name="sharder-roadmap-en">ROAD MAP</span>-->
                </div>
            </div>
            <ul class="items">
                <li class="items1">
                    <ul>
                        <li>
                            <p class="i18n" name="sharder-development-conch-chain">海螺链研发</p>
                            <span></span>
                        </li>
                        <li >
                            <p class="i18n" name="sharder-cloud-storage">云存</p>
                            <span class="i18n" name="sharder-Block-chain-deposit-certificate">区块链存证、证明人公证</span>
                            <p class="i18n" name="sharder-protocol-paper">豆匣协议白皮书</p>
                            <span class="i18n" name="sharder-cross-chain-storage-protocol">跨链存储协议、多链架构、授信模型</span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-chain">豆匣链</p>
                            <span class="i18n" name="sharder-implement-bean-box-protocol">实现豆匣协议、数据分片、全节点客户端</span>
                            <p class="i18n" name="sharder-cloud-storage-open-beta">云存公测</p>
                            <span class="i18n" name="sharder-merchants-access">100家商户接入、博恩云接入</span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-light-client">轻客户端</p>
                            <span class="i18n" name="sharder-wallet-token">移动端钱包、网页版轻钱包、币币兑换</span>
                            <p class="i18n" name="sharder-great-chain-block">多链出块</p>
                            <span class="i18n" name="sharder-deployment-agreement">部署协议到海螺网络和量子链、私有云</span>
                        </li>
                    </ul>
                </li>
                <li class="items3">
                    <ul>
                        <li>
                            <p class="i18n" name="sharder-conch-project">海螺立项</p>
                            <span ></span>
                            <p class="i18n" name="sharder-conch-paper">海螺白皮书</p>
                            <span></span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-conch-community">海螺社区</p>
                            <span class="i18n" name="sharder-conch-contact">海螺Q群、海螺官网、海螺微信</span>
                            <p class="i18n" name="sharder-conch-test-network">海螺测试网络</p>
                            <span class="i18n" name="sharder-consensus-client-integral">CPOS共识出块、多终端客户端、海螺积分</span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-male-chain-development">豆匣公链研发</p>
                            <span class="i18n" name="sharder-open-source-github">Github开源</span>
                            <p class="i18n" name="sharder-bean-cloud-alpha">云存内测</p>
                            <span class="i18n" name="sharder-electricity-online-finance-private">首批10家电商和互联网金融平台参与内测</span>
                            <p class="i18n" name="sharder-community">豆匣社区</p>
                            <span class="i18n" name="sharder-community-partner-task-drop">中英文社区、城市合伙人、奖金任务、社区空投</span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-observer-certifier">观察者和证明者</p>
                            <span class="i18n" name="sharder-data-distribution-index-model">数据分布调整、数据索引服务、授信模型</span>
                            <p class="i18n" name="sharder-sharder-hub">微节点矿机</p>
                            <span class="i18n" name="sharder-micro-miner-client-terminal">微节点矿机、存储者客户端</span>
                            <p class="i18n" name="sharder-smart-contract">智能合约</p>
                            <span class="i18n" name="sharder-mobile-wallet-exchange">图灵完备智能合约、担保交易模型、虚拟机</span>
                        </li>
                    </ul>
                </li>
            </ul>
            <span class="span h1">2018</span>
            <span class="span h2">2017</span>
        </div>
    </section>
    <#include "/WEB-INF/ftl/sharders/news_list_snippet.ftl">
    <section class="ss-container sharder-partner-main tail">
        <@indexTpl.sharderPartner/>
    </section>
</div>
<script>
    $(function () {
        showTeam("douxia");
    })
</script>
<#include "/WEB-INF/ftl/sharders/notice_txt.ftl">
</@layout.htmlBody>