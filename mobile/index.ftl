<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题" pagename="index">
<script src="${resSys}/resource/sharders/js/unslider.min.js" type="text/javascript"></script>
<link rel="stylesheet"href="${resSys}/resource/sharders/css/mobile/index.css">
</@lay.htmlHead>
<@lay.htmlBody>
<div class="index">
    <section class="ss-container  home-page">
        <div class="ss-main">
            <img src="${resSys}/resource/sharders/img/mobile/m-home-background.png" class="background">
            <p class="text ss-main-title zh">豆匣协议—跨链分布式存储协议</p>
            <p class="text ss-main-title en">CROSS-CHAIN DISTRIBUTED STORAGE PROTOCOL</p>
        </div>
    </section>
    <section class="ss-container  sharder-network-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh">豆匣网络/</span>
                    <span class="en">SHARDER</span>
                </div>
            </div>
            <img src="" class="sub-main-logo">
            <dl class="items">
                <dt class="item">
                    <span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                    <span class="text">简单的网络拓扑</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail">
                    网络中节点对等，节点只有连通与否的状态。由更高层的协议完成复杂的状态和行为控制。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                    <span class="text">数据跨链</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail">
                    能够在现有的成熟公链和传统的互联网络中进行互联互通，能进行价值和数据传递和交换。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                    <span class="text">可扩展API</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail">
                    易用的 API 并可供上层应用扩展。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                    <span class="text">可量化的贡献度</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail">
                    参与协议各方的贡献度都应该有相应的量化标准和可被观测的贡献度。比如采用 PoST 和 PoR 作为贡献的磁盘空间和存储时间的量化证明。
                </dd>
                <dt class="item">
                    <span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
                    <span class="text">所有权和隐私性</span>
                    <span><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                </dt>
                <dd class="detail">
                    数据提供者具有数据的所有权和完全访问权，并具有绝对的隐私性。任何非所有者都需要经过所有者授权才能访问和使用数据。
                </dd>
            </dl>
        </div>
    </section>
    <section class="ss-container  sharder-definition-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh">豆匣定义/</span>
                    <span class="en">DEFINITION</span>
                </div>
            </div>
            <ul class="items">
                <li class="item item1">
                    <div class="up">
                        <div><h4 class="ss-sub-title">豆匣网络</h4></div>
                        <div><img src="${resSys}/resource/sharders/img/index/star_topology.png"></div>
                    </div>
                    <p class="ss-content">
                        由部署了豆匣存储协议的全节点和豆匣池组成了豆匣网络。在这个系统中希望最终能形成存储买卖的自由市场，不仅能合理地满足企业和个人用户日益增长的存储需求。同时也能更大限度地有效利用闲置或过时的存储硬件设备，减少电子垃圾的同时为存储提供者带来一定的经济回报。
                    </p>
                </li>
                <li class="item item2">
                    <div class="up">
                        <div><img src="${resSys}/resource/sharders/img/index/net_form_topology.png"></div>
                        <div><h4 class="ss-sub-title">豆匣池</h4></div>
                    </div>
                    <p class="ss-content">
                        由多个部署了豆匣协议的节点组成的小型网络（类似于当前比特币网络里的矿池）。现有的公链或存储网络只要部署了豆匣协议也就组成了一个豆匣池。豆匣公链也
                        是一个。豆匣池可以选择不和其他豆匣池连通，形成一个封 闭网络系统。按照豆匣协议提倡的开放标准，豆匣池选择封闭是需要支付费用，否则至少需要对外开放最低限度的存储空间。
                    </p>
                </li>
                <li class="item item3">
                    <div class="up">
                        <div><h4 class="ss-sub-title">豆匣链</h4></div>
                        <div><img src="${resSys}/resource/sharders/img/index/tree_topology.png"></div>
                    </div>
                    <p class="ss-content">
                        豆匣链是第一个部署了豆匣存储协议的商用区块链网络。同时还充当了分布式数据库的作用，需要永久保存的信息和对象状态都需要记录到豆匣公链中。宏观看他是一个中间锚定网络，类似于传统通信网络中的骨干节点。早期没有节点或豆匣池愿意承担观察者角时候，豆匣链会承担这一角色。整个豆匣网络的稳定和性能都受到豆匣链的影响。但随着有豆匣池或独立的全节点实现协议中定义的观察者等角色，最终豆匣链也仅是网络中的一个普通豆匣池。
                    </p>
                </li>
            </ul>
        </div>
    </section>
    <section class="ss-container  sharder-documents-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh">豆匣文档/</span>
                    <span class="en">DOCUMENT</span>
                </div>

            </div>
            <ul class="items">
                <li class="item item1">
                    <i class="img"></i>
                    <button >豆匣白皮书</button>
                </li>
                <li class="item item2">
                    <i class="img"></i>
                    <button >社区白皮书</button>
                </li>
                <li class="item item3">
                    <i class="img"></i>
                    <button >用户手册</button>
                </li>
            </ul>
        </div>
    </section>

    <section class="ss-container  sharder-more-main ">
        <div class="ss-main">
            <h4 class="ss-sub-title">代币众筹正在进行中,加入我们了解更多内容!</h4>
            <button class="ss-main-btn">立即加入</button>
        </div>
    </section>

    <section class="ss-container sharder-use-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh">豆匣应用/</span>
                    <span class="en">USE</span>
                </div>
            </div>
            <ul class="items">
                <li class="item item1">
                    <div>
                        <img src="${resSys}/resource/sharders/img/index/cloud_storage.png">
                    </div>
                    <div>
                        <h5 class="ss-sub-title">云存链（数据存证和保全）</h5>
                        <p class="ss-content">
                            云存链数据保全是基于Sharder协议下的的文件数据加密存储服务平台。
                            为用户提供数据资料，数字作品，合同签证等数据的区块链分布式存储服务。同时具有对用户进行撮合。提供在线电子签约服务，
                            保证签约及合约的公平公正有效性。
                        </p>
                    </div>
                </li>
                <li class="item item2">
                    <div>
                        <img src="${resSys}/resource/sharders/img/index/onefair.png">
                    </div>
                    <div>
                        <h5 class="ss-sub-title">One Fair（原创作品版权）</h5>
                        <p class="ss-content">
                            One Fair 使用了区块链技术来完成艺术创作类数字作品的注册登记评价以及交易。解决了艺术创作领域所面临的尴尬局面，创造了全新的产业共赢的局面。
                            同时也填补了艺术创作类数字资产版权登记和公平转让交易的空白，能够最大化激发用户创作的积极性以及让每个艺术创作的作品产生价值。
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
                    <span class="zh">豆匣团队/</span>
                    <span class="en">TEAM</span>
                </div>
            </div>
            <div class="team-banner banner" id="team_banner">
                <ul class="items">
                    <li class="item ">
                        <img src="/r/cms/resource/sharders/img/teamphoto/xy.png" >
                        <ul class="item-item">
                            <li class="head-portrait-name">想抢了</li>
                            <li class="sub-title">啊啊啊啊啊</li>
                            <li class="ss-content">阿斯蒂芬付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付发生的</li>
                        </ul>
                    </li>
                    <li class="item">
                        <img src="/r/cms/resource/sharders/img/teamphoto/xy.png" >
                        <ul class="item-item">
                            <li class="head-portrait-name">苗条</li>
                            <li class="sub-title">的点点滴滴</li>
                            <li class="ss-content">发撒打发萨芬撒飞洒发撒发生撒范德萨发生时发打发沙发方法撒爱上风飒飒发</li>
                        </ul>
                    </li>
                </ul>
                <a href="javascript:void(0);" class="page-turning prev"><img class="arrow" id="al" src="/r/cms/resource/sharders/img/index/towards-left.png" alt="prev"></a>
                <a href="javascript:void(0);" class="page-turning next"><img class="arrow" id="ar" src="/r/cms/resource/sharders/img/index/towards-right.png" alt="next"></a>
            </div>
        </div>
    </section>
    <section class="ss-container sharder-project-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh">豆匣规划/</span>
                    <span class="en">PLAN</span>
                </div>
            </div>
            <div class="m-timeline">
                <img  src="/r/cms/resource/sharders/img/mobile/index/m-timeline.png">
            </div>
        </div>
    </section>
    <section class="sharder-partner-main">
        <div class="ss-main">
            <div class="ss-main-title ss-main-btn theme">
                <div>
                    <span class="blank"></span>
                    <span class="zh">合作伙伴/</span>
                    <span class="en">PARTNER</span>
                </div>
            </div>
            <ul class="items">
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/index/boen.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/index/lingyou.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/index/shixiaojiang.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/index/yijifu.png">
                </li>
                <li class="item">
                    <img src="${resSys}/resource/sharders/img/index/zhubajie.png">
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

        $('.page-turning').click(function() {
            var fn = this.className.split(' ')[1];
            data04[fn]();
        });
    });
    $(document).ready(function () {
        $(".sharder-network-main dt.item").click(function () {
            var clickObj = $(this);

            var icon = $(clickObj).find(".fa");
            var _obj = clickObj.next();

            console.log();

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
    })

</script>
</@lay.htmlBody>