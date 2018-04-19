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
            <p class="text ss-main-title zh i18n" name="sharder-storage-protocl">Sharder Protocol</p>
            <p class="text ss-main-title en i18n" name="sharder-protocol-cross-chain">CROSS-CHAIN DISTRIBUTED STORAGE PROTOCOL</p>
        </div>
    </section>
    <section class="ss-container  sharder-network-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme" style="margin-bottom: 20px!important;">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="sharder-protocol">Sharder Protocol/</span>
                    <#--<span class="en i18n" name="sharder-protocol-en">SHARDER</span>-->
                </div>
            </div>
            <img src="" class="sub-main-logo">
            <dl class="items">
                <dt class="item">
                    <span><i class="fa fa-file-archive-o" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder-data-security">Data Security</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-data-security-body">
                    Offline encryption on client terminals, spontaneous data sharding, distributed storage, redundant copies.
                </dd>
                <dt class="item">
                    <span><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder-credit-model">Credential Model</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-credit-model-en">
                    The initiative Sharder-UTXO and Sharder-Keypair models ensure that data could not be accessed without credentials. The absolute ownership and privacy is guaranteed.
                </dd>
                <dt class="item">
                    <span><i class="fa fa-puzzle-piece" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder-decentralized">Decentralization</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-decentralized-body">
                    Limitless extendibility, permanent storage, all-time online. In real time, the Watchers synchronize the full network data objects, dynamically adjust the data distribution, reduce redundant copies, increase space utilization, and guarantee .999 security and availability.
                </dd>
                <dt class="item">
                    <span><i class="fa fa-microchip" aria-hidden="true"></i></span>
                    <span class="text i18n"  name="sharder-bean-cartridge-mining">Sharder Miner Machine</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-bean-cartridge-mining-body">
                    No more arms race, no more first-comers-take-them-all, Sharder subscribers are welcome to get a Sharder Hub and start to earn mining reward, or get a Sharder Box and earn threefold rewards (mining, storage, watcher).
                </dd>
                <dt class="item">
                    <span><i class="fa fa-braille" style="margin-left: -3px;" aria-hidden="true"></i></span>
                    <span class="text i18n" name="sharder-shared-economic">Ownership and Privacy</span>
                    <span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail i18n" name="sharder-shared-economic-body">
                    Subscribers are able to open their idle storage space to Sharder Network to get financial reward. It’s a transparent, open-source, peer-to-peer free market without any monopoly, the price is decided only by demand and supply of the market. The cross-chain architecture ensures that Sharder Chain is unlimitedly extendible to any other public chains and traditional internet.
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
                    <span class="zh i18n" name="sharder-look-whitepaper">Business White Paper/</span>
                    <#--<span class="en i18n" name="sharder-look-whitepaper-en">WHITEPAPER</span>-->
                </div>

            </div>
            <ul class="items">
                <li class="item item1">
                    <span class="bps-icon"><i class="fa fa-download" aria-hidden="true"></i></span>
                    <p class="ss-sub-title zh i18n" name="sharder-technical-white-paper">Technical White Paper</p>
                        <button>
                            <a href="/whitepaper/preview.ss?type=urlTechZh" class="i18n" name="btn.cn">Chinese</a>
                        </button>
                       <button class="tesu" >
                           <a class="i18n" name="btn.en">English</a>
                       </button>
                </li>
                <li class="item item2">
                    <span class="bps-icon"><i class="fa fa-file-code-o" aria-hidden="true"></i></span>
                    <p class="ss-sub-title zh i18n" name="sharder-look-whitepaper">Business White Paper</p>
                    <button>
                        <a href="/whitepaper/preview.ss?type=urlEncoZh" class="i18n" name="btn.cn">Chinese</a>
                    </button>
                    <button >
                        <a href="/whitepaper/preview.ss?type=urlEncoEn" class="i18n" name="btn.en">English</a>
                    </button>
                </li>
                <li class="item item3">
                    <span class="bps-icon"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></span>
                    <p class="ss-sub-title zh i18n" name="User-Manual">User Manual</p>
                    <button class=" tesu" >
                        <a  class="i18n" name="btn.cn">Chinese</a>
                    </button>
                    <button class=" tesu" >
                        <a class="i18n" name="btn.en">English</a>
                    </button>
                </li>
            </ul>
        </div>
    </section>

    <section class="ss-container  sharder-more-main ">
        <div class="ss-main">
            <#if user ?? >
                <a href="/invest/invest.ss"><button class="ss-main-btn i18n" name="sharder-to-learn-more" >Token Sale</button></a>
            <#else >
                <a href="/register.ss"><button class="ss-main-btn i18n" name="sharder-immediately-join">Join us</button></a>
            </#if>
            <h4 class="ss-sub-title i18n" name="sharder-learn-more-join">Contribute to Sharder!</h4>
        </div>
    </section>

    <section class="ss-container sharder-use-main">
        <@indexTpl.sharderDApp/>
    </section>
    <@indexTpl.introduceVido/>
    <section class="ss-container sharder-team-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh i18n" name="sharder-cartridge-team">Team/</span>
                    <#--<span class="en i18n" name="sharder-cartridge-team-en">TEAM</span>-->
                </div>
            </div>
            <div class="switch-team">
                <input type="radio"  class="ss-radio-hidden" id="douxia" name="team" checked>
                <label class="switch-btn i18n" for="douxia" onclick="showTeam('douxia')" name="chinese-team">China Team</label>
                <input type="radio" class="ss-radio-hidden" id="guojiteam" name="team">
                <label class="switch-btn i18n" for="guojiteam" onclick="showTeam('guoji')" name="global-community">Global Community</label>
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
                    <span class="zh i18n" name="sharder-roadmap">Road Map/</span>
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
                        <h6 class="sub-title title i18n" name="sharder-conch-project">Conch Chain Kick-off</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-development-conch-chain">Conch Chain R&D</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-conch-test-network">Conch Testing Network</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-consensus-client-integral">CPOS consensus mining, multiple-terminal client, conch points</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-protocol-paper">Sharder White Paper</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-cross-chain-storage-protocol">Cross-chain storage protocol, multiple-chain architecture, credit model</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-development-sharder">Sharder Chain R&D</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-open-source-github">Open source on Github</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-community">Community</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-community-partner-task-drop">Chinese and English communities, city partners, prize tasks, community airdrop</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-cloud-storage-open-beta">Bean Cloud Beta</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-merchants-access">100 businesses connected, Born Cloud connected</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-sharder-hub">Sharder Hub</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-micro-miner-client-terminal">WRTnode micro miner, storage client terminal</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-great-chain-block">Multi-chain Mining</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-deployment-agreement">Deploy Sharder Protocol on Conch network and Qtum Blockchain and private cloud</span>
                        </p>
                    </li>
                </ul>
                <ul class="items items2">
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-conch-paper">Conch Chain White Paper</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-conch-community">Conch Community</h6>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-cloud-storage">Bean Cloud</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-Block-chain-deposit-certificate">Blockchain proof and notary</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="">2018</h6>
                        <p class="ss-content"></p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-bean-cloud-alpha">Bean Cloud Alpha</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-electricity-online-finance-private">10 e-commerces and fintech platforms attended test</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-chain">Sharder Chain</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-implement-bean-box-protocol">Realization of Sharder protocol, data sharding, full-nodes client terminal</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-observer-certifier">Watcher and Proofer</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-data-distribution-index-model">Data distribution adjustment, data indexing service, credit model</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-smart-contract">Smart Contract</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-mobile-wallet-exchange">Mobile wallet, web light wallet, token exchange</span>
                        </p>
                    </li>
                    <li class="item">
                        <h6 class="sub-title title i18n" name="sharder-light-client">Light Client</h6>
                        <p class="ss-content">
                            <span class="i18n" name="sharder-wallet-token">Mobile wallet, web light wallet, token exchange</span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <#include "/WEB-INF/ftl/sharders/news_list_snippet.ftl">
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
</script>
<#include "/WEB-INF/ftl/sharders/notice_txt.ftl">
</@lay.htmlBody>