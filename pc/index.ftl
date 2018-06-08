<#import "/WEB-INF/ftl/sharders/ss_tpl_index.ftl" as indexTpl/>

<@layout.htmlHead>
    <link type="text/css" rel="stylesheet" href="${resSys}/resource/sharders/css/index.css">
    <link type="text/css" rel="stylesheet" href="${resSys}/resource/sharders/css/common.css">
    <script src="${resSys}/resource/sharders/js/unslider.min.js" type="text/javascript"></script>
    <#--<link type="text/css" rel="stylesheet" href="${resSys}/resource/sharders/css/video-js.css">-->

</@layout.htmlHead>

<@layout.htmlBody>

<#--${content}-->
<div class="index" id="index" onload="showTeam('douxia')">
    <section class="ss-container home-page tail">
        <div class="ss-main">
            <ul class="network"></ul>
            <p class="text ss-main-title zh i18n" name="sharder-storage-protocl">Sharder Protocol</p>
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
                        <span class="zh i18n" name="sharder-protocol">Sharder Protocol</span>
                        <#--<span class="en i18n" name="sharder-protocol-en">SHARDER</span>-->
                    </div>
                </div>
                <ul>
                    <li class="ss-describe ss-describe1">
                        <div class="item item1">
                            <h4 class="ss-sub-title i18n" name="sharder-data-security">Data Security</h4>
                            <div class="ss-content i18n" name="sharder-data-security-body">
                                Offline encryption on client terminals, spontaneous data sharding, distributed storage, redundant copies.
                            </div>
                        </div>
                        <div class="item item2">
                            <h4 class="ss-sub-title i18n" name="sharder-credit-model">Credential Model</h4>
                            <div class="ss-content i18n" name="sharder-credit-model-en">The initiative Sharder-UTXO and Sharder-Keypair models ensure that data could not be accessed without credentials. Absolute ownership and privacy is guaranteed.</div>
                        </div>
                    </li>
                    <li class="ss-describe ss-describe2">
                        <div class="item item3">
                            <h4 class="ss-sub-title i18n" name="sharder-decentralized">Decentralization</h4>
                            <div class="ss-content i18n" name="sharder-decentralized-body">Limitless expandability, permanent storage, online 24/7. In real time, the Watchers synchronize the ful network data objects, dynamically adjust the data distribution, reduce redundant copies, increase space utilization, and guaranteed 99.9% security and availability.</div>
                        </div>
                        <div class="item item4">
                            <h4 class="ss-sub-title i18n" name="sharder-bean-cartridge-mining">Sharder Miner Machine </h4>
                            <div class="ss-content i18n" name="sharder-bean-cartridge-mining-body">No more arms race, no more “first-comers-take-all,” Sharder subscribers are welcome to get a Sharder Hub and start earning mining rewards or get a Sharder Box and earn multifold rewards (mining, storage, watcher).</div>
                        </div>
                    </li>
                    <li class="ss-describe ss-describe3">
                        <div class="item item5">
                            <h4 class="ss-sub-title i18n" name="sharder-shared-economic">Ownership and Privacy</h4>
                            <div class="ss-content i18n" name="sharder-shared-economic-body">Subscribers are able to share their idle storage space to Sharder Network for financial rewards. It's a transparent, open-source, peer-to-peer free market without any monopoly, and the price is decided by the market supply and demand. The cross-chain architecture ensures that Sharder Chain is limitlessly expandable to any other public chains and the internet.</div>
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
                    <span class="zh i18n" name="project-main.title.whitepaper-tile">White Paper</span>
                    <#--<span class="en i18n" name="sharder-look-whitepaper-en">WHITEPAPER</span>-->
                </div>
            </div>
            <ul class="items">
                <li class="item item1">
                    <span class="bps-icon"><i class="fa fa-download" aria-hidden="true"></i></span>
                    <p class="ss-sub-title en"><a href="https://sharder.org/whitepaper/preview.ss?type=techEn" id="a_technology_white_paper" title="See the technology white paper" target="_blank"><span class="i18n" name="sharder-technical-white-paper">Technical White Paper</span><i class="fa fa-eye" aria-hidden="true"></i></a></p>
                    <a href="${sharderCfg('urlTechZh')}">
                        <button class="down-btn zh " >
                            <span class="i18n" name="btn.cn">Chinese</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                    <a href="${sharderCfg('urlTechEn')}">
                        <button class="down-btn zh " >
                            <span class="i18n" name="btn.en">English</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>

                    <#--<a href="javascript:;">-->
                        <#--<button class="down-btn zh closed" >-->
                            <#--<span class="i18n" name="btn.en">English</span>-->
                            <#--<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>-->
                        <#--</button>-->
                    <#--</a>-->
                </li>
                <li class="item item2">
                    <span class="bps-icon"><i class="fa fa-file-code-o" aria-hidden="true"></i></span>
                    <p class="ss-sub-title en"><a href="https://sharder.org/whitepaper/preview.ss?type=encoEn" id="a_user_white_paper" title="See the business white paper" target="_blank"><span class="i18n" name="sharder-look-whitepaper">Business White Paper</span><i class="fa fa-eye" aria-hidden="true"></i></a></p>
                    <a href="${sharderCfg('urlEncoZh')}">
                        <button class="down-btn zh " >
                            <span class="i18n" name="btn.cn">Chinese</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                    <a href="${sharderCfg('urlEncoEn')}">
                        <button class="down-btn en">
                            <span class="i18n" name="btn.en">English</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                </li>
                <li class="item item3">
                    <span class="bps-icon"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></span>
                    <p class="ss-sub-title en"><a href="https://sharder.org/whitepaper/preview.ss" id="a_user_info" title="See the user manual" target="_blank"><span class="i18n" name="User-Manual">User Manual</span><i class="fa fa-eye" aria-hidden="true"></i></a></p>

                    <a href="javascript:void(0);">
                        <button class="down-btn zh" >
                            <span class="i18n" name="btn.cn">Chinese</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>

                    <a href="javascript:void(0);">
                        <button class="down-btn en">
                            <span class="i18n" name="btn.en">English</span>
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </button>
                    </a>
                </li>
            </ul>
        </div>
    </section>
    <section class="ss-container sharder-more-main tail">
        <div class="ss-main ss-hover-effect">
            <h4 class="ss-sub-title zh i18n" name="sharder-learn-more-join">Contribute to Sharder!</h4>
            <#--<h5 class="ss-sub-title en">Sharder - Cross-chain Distributed Storage Protocol</h5>-->
            <#if user ?? >
                <a href="/invest/invest.ss"><button class="ss-main-btn ss-hover-effect i18n" name="sharder-to-learn-more">Token Sale</button></a>
            <#else >
                <a href="/register.ss"><button class="ss-main-btn ss-hover-effect i18n"  name="sharder-immediately-join">Join us</button></a>
            </#if>
        </div>
    </section>

    <section class="ss-container sharder-use-main tail">
       <@indexTpl.sharderDApp/>
    </section>

    <@indexTpl.introduceVido/>
    <section class="ss-container sharder-team-main tail">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div class="ss-hover-effect">
                    <span class="blank"></span>
                    <span class="zh i18n" name="sharder-cartridge-team">Team</span>
                    <#--<span class="en i18n" name="sharder-cartridge-team-en">TEAM</span>-->
                </div>
            </div>

            <div class="switch-team">
                <input type="radio"  class="ss-radio-hidden" id="douxia" name="team" checked>
                <label class="switch-btn i18n" for="douxia" onclick="showTeam('douxia')" name="chinese-team">China Team</label>
                <input type="radio" class="ss-radio-hidden" id="guojiteam" name="team">
                <label class="switch-btn i18n" for="guojiteam" onclick="showTeam('guoji')" name="global-community">Global Community</label>
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
                    <span class="zh i18n" name="sharder-roadmap">Road Map</span>
                    <#--<span class="en i18n" name="sharder-roadmap-en">ROAD MAP</span>-->
                </div>
            </div>
            <ul class="items">
                <li class="items1">
                    <ul>
                        <li>
                            <p class="i18n" name="sharder-development-conch-chain">Conch Chain R&D</p>
                            <span></span>
                        </li>
                        <li >
                            <p class="i18n" name="sharder-cloud-storage">Bean Cloud</p>
                            <span class="i18n" name="sharder-Block-chain-deposit-certificate">Blockchain proof and notary</span>
                            <p class="i18n" name="sharder-protocol-paper">Sharder White Paper</p>
                            <span class="i18n" name="sharder-cross-chain-storage-protocol">Cross-chain storage protocol, multiple-chain architecture, credit model</span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-chain">Sharder Chain</p>
                            <span class="i18n" name="sharder-implement-bean-box-protocol">Realization of Sharder protocol, data sharding, full-nodes client terminal</span>
                            <p class="i18n" name="sharder-cloud-storage-open-beta">Bean Cloud Beta</p>
                            <span class="i18n" name="sharder-merchants-access">100 businesses connected, Born Cloud connected</span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-light-client">Light Client</p>
                            <span class="i18n" name="sharder-wallet-token">Mobile wallet, web light wallet, token exchange</span>
                            <p class="i18n" name="sharder-great-chain-block">Multi-chain Mining</p>
                            <span class="i18n" name="sharder-deployment-agreement">Deploy Sharder Protocol on Conch network and Qtum Blockchain and private cloud</span>
                        </li>
                    </ul>
                </li>
                <li class="items3">
                    <ul>
                        <li>
                            <p class="i18n" name="sharder-conch-project">Conch Chain Kick-off</p>
                            <span ></span>
                            <p class="i18n" name="sharder-conch-paper">Conch Chain White Paper</p>
                            <span></span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-conch-community">Conch Community</p>
                            <span class="i18n" name="sharder-conch-contact">QQ group, official website, Wechat</span>
                            <p class="i18n" name="sharder-conch-test-network">Conch Testing Network</p>
                            <span class="i18n" name="sharder-consensus-client-integral">CPOS consensus mining, multiple-terminal client, conch points</span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-male-chain-development">Sharder Public Chain R&D</p>
                            <span class="i18n" name="sharder-open-source-github">Open source on Github</span>
                            <p class="i18n" name="sharder-bean-cloud-alpha">Bean Cloud Alpha</p>
                            <span class="i18n" name="sharder-electricity-online-finance-private">10 e-commerces and fintech platforms attended test</span>
                            <p class="i18n" name="sharder-community">Community</p>
                            <span class="i18n" name="sharder-community-partner-task-drop">Chinese and English communities, city partners, prize tasks, community airdrop</span>
                        </li>
                        <li>
                            <p class="i18n" name="sharder-observer-certifier">Watcher and Proofer</p>
                            <span class="i18n" name="sharder-data-distribution-index-model">Data distribution adjustment, data indexing service, credit model</span>
                            <p class="i18n" name="sharder-sharder-hub">Sharder Hub</p>
                            <span class="i18n" name="sharder-micro-miner-client-terminal">WRTnode micro miner, storage client terminal</span>
                            <p class="i18n" name="sharder-smart-contract">Smart Contract</p>
                            <span class="i18n" name="sharder-mobile-wallet-exchange">Mobile wallet, web light wallet, token exchange</span>
                        </li>
                    </ul>
                </li>
            </ul>
            <span class="span h1">2018</span>
            <span class="span h2">2017</span>
        </div>
    </section>
    <#include "/WEB-INF/ftl/sharders/news_list_snippet.ftl">


    <#--<#include "/WEB-INF/ftl/sharders/bourse_list.ftl">-->
    <@indexTpl.bourse_list />
    <section class="ss-container sharder-partner-main tail">
        <@indexTpl.sharderPartner/>
    </section>
</div>
<script>
    $(function () {
        showTeam("douxia");
        if(i18nLanguage != 'zh-CN'){
            $("#a_technology_white_paper").attr("title","查看技术白皮书");
            $("#a_user_white_paper").attr("title","查看商业白皮书");
            $("#a_user_info").attr("title","查看用户手册");
        }
    })
</script>
<#include "/WEB-INF/ftl/sharders/notice_txt.ftl">
</@layout.htmlBody>