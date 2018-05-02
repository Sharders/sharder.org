<#if ua == 'pc'>
    <#import "/WEB-INF/ftl/sharders/pc/layout.ftl" as layout/>
<#else >
    <#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as layout/>
</#if>
<@layout.htmlHead pagename="bounty">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/april_task.css">
<script src="/r/cms/resource/sharders/layui/layui.js"></script>
<style>
    .hide.bounty_task_line:after {
        display: none;
    }

    .bouty_task_main.fqa .task_text p {
        width: 80% !important;
    }

    .bouty_task_main.fqa .video-div {
        margin-top: 40px;
        margin-bottom: 20px;
    }

    #sharder_video_answer:checked + .bounty_task_title + .bouty_task_main {
        height: 100%;
    }
</style>
</@layout.htmlHead>

<@layout.htmlBody>
<div>
    <script>
        var index = 1;
        function sendActivity(_name) {
            var url = "";
            var data = "";
            if (_name == "telegraph") {
                url = "/activity/telegram.ss";
            }
            if (_name == "video_answer") {
                url = "/activity/processjq.ss";
                data = $("#answer").serialize();
            }
            if (_name == "twitter") {
                url = "/activity/follow_twitter.ss";
                data = "account=" + $("#follow_twitter").val();
            }
            layer.load(2);
            commAjax(url, "POST", data, function (_result) {
                layer.close(layer.index);
                console.info(_result);
                if (_result.success) {
                    location.reload();
                } else {
                    layer.msg(_result.msg);
                }
            });
            setTimeout(function () {
                layer.closeAll("loading");
            }, 20000);
        }

        //用户已经领取
        function userInReceive(sharder_boutu) {
            sharder_boutu.find("input[type='checkbox']").remove();
            sharder_boutu.find(".bouty_task_main").remove();
            if(localStorage.getItem("userLanguage") == 'zh-CN'){
                $(sharder_boutu).css("background-image", "url('/r/cms/resource/sharders/img/index/received.png')");
            }else {
                $(sharder_boutu).css("background-image", "url('/r/cms/resource/sharders/img/index/received_en.png')");
            }
            sharder_boutu.css("background-repeat", "no-repeat");
            sharder_boutu.css("background-color", "#f9f9f9");
            sharder_boutu.find(".bounty_task_title .bounty_task_line").addClass("hide");
            sharder_boutu.find(".bounty_task_title .bounty_task_line").css("color", "#999999");
            sharder_boutu.find(".bounty_task_title .number_img").css("background-color", "#999999");
            sharder_boutu.find(".sharder_number").css("color", "#999999");
            sharder_boutu.find("label").css("cursor", "default");
        }
    </script>
</div>
    <div class="sharder_main">
        <div class="sharder_bounty_banner">
            <h2 class="bounty_banner_titel i18n" name="sharder_activity">Sharder events on</h2>
            <p class="bounty_banner_info i18n" name="sharder_activity_reward">Join and get SS for free</p>
        </div>
        <div class="sharder_invitation">
            <h3 class="sharder_invitation_title">
                <span class="i18n" name="sharder_invitation_activity_reward">Invite friends and get reward</span><br>
                <span class="i18n info" name="sharder_invitation_activity_reward_info">（Friends join official Telegram and you’ll get 30 SS）</span>
            </h3>
            <div class="sharder_copy_link">
                <#--<span class="copy_link" id="copy_link">${invitePage!}?inviterId=${inviterId!}&language=${Request.language!}</span>-->
                <span class="copy_link" id="copy_link">${invitePage!}?inviterId=${user.id!}&language=${Request.language!}</span>
                <button type="button" class="btn_copy_link i18n" name="sharder-copy"
                        onclick="copyTextById('copy_link')">Copy
                </button>
            </div>
            <p class="sharder_user_invitation">
                <span class="sharder_invite_number i18n"
                      name="sharder-user-parent">Invitation</span><span>${inviteSum!0}</span>
            </p>
            <span class="april_onclilke i18n" name="sharder_details_april_task_user"
                  onclick="bountyUser()">Find details</span>
            <table class="april_task_table" id="april_task_table" style="display: none">
                <tr class="april_task_table_title">
                    <th class="i18n" name="sharder-registrant-time">Sign up time </th>
                    <th class="i18n" name="sharder-sign-in-username">Nickname</th>
                    <th class="i18n" name="sharder-deal-base">Bonus</th>
                </tr>
                <tr class="april_task_table_info" v-for="data in ssCandy">
                    <td>{{data.createTime}}</td>
                    <td v-if="data.email != ''">{{data.email}}</td>
                    <td v-else>{{data.phone}}</td>
                    <td>{{data.twoCandyNum}}</td>
                </tr>
            </table>
            <div id="page"></div>
        </div>
        <button class="sharder_task_pane">
            <img src="/r/cms/resource/sharders/img/index/task_pane.png" class="task_pane_img">
            <span class="task_pane_title i18n" name="sharder_activity_details">Events list</span>
        </button>
        <p class="activity_help"><a href="/r/cms/www/www/img/download/sharder.pdf" target="_blank" class="i18n" name="activity_help_regulations">Regulations</a></p>
        <ul class="sharder_bounty">

            <li class="bounty_task reward">
                <input type="checkbox" id="sharder_drop"/>
                <p class="bounty_task_title">
                    <button class="number_img">1</button>
                    <label class="bounty_task_line" for="sharder_drop">
                        <span class="title_text"><span class="i18n" name="airspace_for_sharder">Withdraw airdropped SS</span>(<span
                                class="sharder_number"><span class="i18n" name="sharder_reward">Reward</span>+<span
                                class="sharder_activity_reward">30</span>SS</span>)</span>
                    </label>
                </p>
                <ul class="bouty_task_main">
                    <li class="link_info i18n" name="sharder_a_reward_title">Click the link below and withdraw airdropped SS</li>
                    <li class="task_core">
                        <button><a href="/candy/share.ss" target="_blank">https://sharder.org/candy/share.ss</a></button>
                    </li>
                <#--<li class="task_input_info">-->
                <#--<span class="i18n" name="sharder_reward_invitation">Invite friends to register and you’ll get</span>-->
                <#--<span class="sharder_activity_reward">50</span>SS<span class="i18n" name="sharder_reward">Reward</span>-->
                <#--</li>-->
                </ul>
            </li>
            <script>
                var kong = $(".sharder_bounty .bounty_task").eq(0);
                <#if param??>
                    $(kong).find(".sharder_activity_reward:eq(0)").text(${param.SSOnePrice!0});
                    $(kong).find(".sharder_activity_reward:eq(1)").text(${param.SSTwoPrice!0});
                </#if>
                <#if ssCandy??>
                    userInReceive(kong);
                </#if>
                <#if code??>
                    <#if code == "ACTIVITY_OVER" || code == "ACTIVITY_CLOSED" || code == "ACTIVITY_CANDY_OUT" || code == "ACTIVITY_NOT_AT_THE">
                        userInReceive(kong);
                        if(localStorage.getItem("userLanguage") == 'zh-CN'){
                            kong.css("background-image", "url('/r/cms/resource/sharders/img/index/over_activity.png')");
                        }else {
                            kong.css("background-image", "url('/r/cms/resource/sharders/img/index/over_activity_en.png')");
                        }
                    </#if>
                </#if>

            </script>
        <#--<li class="bounty_task telegraph" >-->
        <#--<input type="checkbox" id="sharder_telegraph"/>-->
        <#--<p class="bounty_task_title">-->
        <#--<button class="number_img">2</button>-->
        <#--<label class="bounty_task_line" for="sharder_telegraph">-->
        <#--<span class="title_text"><span class="i18n" name="sharder_telegraph_input">Join official Telegram</span>(<span-->
        <#--class="sharder_number"><span class="i18n" name="sharder_reward">Reward</span>+<span class="sharder_activity_reward">30</span>SS</span>)</span>-->
        <#--</label>-->
        <#--</p>-->
        <#--<ul class="bouty_task_main">-->
        <#--<li class="link_info i18n" name="sharder_input_telegraph_title">Click the link below to join official Telegram and get identified.</li>-->
        <#--<span class="i18n info" name="sharder_activity_reward_search"> </span>-->
        <#--<li class="task_core">-->
        <#--<button>-->
        <#--<a href="https://t.me/SharderBot" target="_blank">https://t.me/SharderBot</a><br />-->
        <#--</button>-->
        <#--</li>-->
        <#--<li class="task_input_info i18n" name="sharder_input_telegraph">Identified. Click to get SS</li>-->
        <#--<li class="task_input"><input type="button" value="Withdraw" class="btn_submit i18n" name="sharder_btn_submit" onclick="sendActivity('telegraph')"></li>-->
        <#--</ul>-->
        <#--</li>-->

        <#--<li class="bounty_task twitter" >-->
        <#--<input type="checkbox" id="sharder_twitter">-->
        <#--<p class="bounty_task_title">-->
        <#--<button class="number_img">3</button>-->
        <#--<label class="bounty_task_line" for="sharder_twitter">-->
        <#--<span class="title_text"><span class="i18n" name="sharder_twitter">Follow official Twitter</span>(<span-->
        <#--class="sharder_number"><span class="i18n" name="sharder_reward">Reward</span>+<span class="sharder_activity_reward">30</span>SS</span>)</span>-->
        <#--</label>-->
        <#--</p>-->
        <#--<ul class="bouty_task_main">-->
        <#--<li class="link_info i18n" name="sharder_twitter_focus">Click the link below and follow official Twitter</li>-->
        <#--<li class="task_core">-->
        <#--<button><a href="https://twitter.com/SharderChain" target="_blank">https://twitter.com/SharderChain</a></button>-->
        <#--</li>-->
        <#--<li class="task_input_info i18n" name="sharder_twitter_focus_name">Input your Twitter UID to get SS</li>-->
        <#--<li class="task_input"><input type="text" id="follow_twitter" class="input_user_info"><input type="button" value="Withdraw"-->
        <#--class="btn_submit i18n" name="sharder_btn_submit" onclick="sendActivity('twitter')"></li>-->
        <#--</ul>-->
        <#--</li>-->
        <#--<li class="bounty_task video_answer" >-->
        <#--<input type="checkbox" id="sharder_video_answer">-->
        <#--<p class="bounty_task_title">-->
        <#--<button class="number_img">4</button>-->
        <#--<label class="bounty_task_line" for="sharder_video_answer">-->
        <#--<span class="title_text"><span class="i18n" name="sharder_video_answer_title">Watch videos and answer questions</span>(<span-->
        <#--class="sharder_number"><span class="i18n" name="sharder_reward">Reward</span>+<span class="sharder_activity_reward">30</span>SS</span>)</span>-->
        <#--</label>-->
        <#--</p>-->
        <#--<ul class="bouty_task_main fqa">-->
        <#--<form id="answer" onsubmit="return false;">-->
        <#--<li class="task_core">-->
            <#--<div class="video-div" id="video_div">-->
                <#--<iframe frameborder="0" width="724.33" height="410" src="https://www.youtube.com/embed/cM_2tfLnuwo" allowfullscreen></iframe>-->
            <#--</div>-->

            <#--<script>-->
                <#--areaIsChain(function (is_cn) {-->
                    <#--if(is_cn){-->
                        <#--$("#video_div iframe").attr("src","https://v.qq.com/iframe/player.html?vid=c0631ma7wgr&tiny=0&auto=0");-->
                    <#--}else{-->
                        <#--$("#video_div iframe").attr("src","https://www.youtube.com/embed/9Ca0x6THTAE?ecver=2");-->
                    <#--}-->
                <#--})-->
            <#--</script>-->
        <#--</li>-->
        <#--<li class="task_text">-->
        <#--<p class="task_text_title i18n" name="video_answer_website">1、The official website of Sharder is sharder.com?</p>-->
        <#--<p class="task_text_radio">-->
        <#--<input type="radio" value="true" id="answer-1-1" name="answer-1"/><label for="answer-1-1" class="text_radio i18n" name="sharder_video_answer_ok">Yes</label>-->
        <#--<input type="radio" value="false" id="answer-1-2" name="answer-1"/><label for="answer-1-2" class="i18n" name="sharder_video_answer_erre">No</label>-->
        <#--</p>-->
        <#--</li>-->
        <#--<li class="task_text">-->
        <#--<p class="task_text_title i18n" name="video_answer_storage_agreement">2、Sharder Protocol is a cross-chain distributed storage protocol that provides secure, convenient, and inexpensive storage service, where users could share their storage space and get rewarded SS.</p>-->
        <#--<p class="task_text_radio">-->
        <#--<input type="radio" value="true" id="answer-2-1" name="answer-2"/><label for="answer-2-1" class="text_radio i18n" name="sharder_video_answer_ok">Yes</label>-->
        <#--<input type="radio" value="false" id="answer-2-2" name="answer-2"/><label for="answer-2-2" class="i18n" name="sharder_video_answer_erre">No</label>-->
        <#--</p>-->
        <#--</li>-->
        <#--<li class="task_text">-->
        <#--<p class="task_text_title i18n" name="video_answer_compatible_with">3、Sharder Chain is compatible to any public chains, private chains and storage networks that deploys Sharder Protocol. Sharder share economy is incubating more blockchain data applications and constructing a mutually beneficial Sharder Matrix.</p>-->
        <#--<p class="task_text_radio">-->
        <#--<input type="radio" value="true" id="answer-3-1" name="answer-3"/><label for="answer-3-1" class="text_radio i18n" name="sharder_video_answer_ok">Yes</label>-->
        <#--<input type="radio" value="false" id="answer-3-2" name="answer-3"/><label for="answer-3-2" class="i18n" name="sharder_video_answer_erre">No</label>-->
        <#--</p>-->
        <#--</li>-->
        <#--<li class="task_text">-->
        <#--<p class="task_text_title i18n" name="video_answer_mill">4、Sharder is releasing two miner models – micro-node miner Sharder Hub, and Sharder Box with super computing power and storage space.</p>-->
        <#--<p class="task_text_radio">-->
        <#--<input type="radio" value="true" id="answer-4-1" name="answer-4"/><label for="answer-4-1" class="text_radio i18n" name="sharder_video_answer_ok">Yes</label>-->
        <#--<input type="radio" value="false" id="answer-4-2" name="answer-4"/><label for="answer-4-2" class="i18n" name="sharder_video_answer_erre">No</label>-->
        <#--</p>-->
        <#--</li>-->
        <#--<li class="task_text">-->
        <#--<p class="task_text_title i18n" name="video_answer_cloud_storage">5、The first commercial application on Shader Chain – Bean Cloud, provides data storage, evidence, and security services for industries including finance, e-commerce, governments, and health care.</p>-->
        <#--<p class="task_text_radio">-->
        <#--<input type="radio" value="true" id="answer-5-1" name="answer-5"/><label for="answer-5-1" class="text_radio i18n" name="sharder_video_answer_ok">Yes</label>-->
        <#--<input type="radio" value="false" id="answer-5-2" name="answer-5"/><label for="answer-5-2" class="i18n" name="sharder_video_answer_erre">No</label>-->
        <#--</p>-->
        <#--</li>-->

        <#--<li class="task_input"><input type="button" value="Withdraw" class="btn_submit i18n" name="sharder_btn_submit" onclick="sendActivity('video_answer')"></li>-->
        <#--</form>-->
        <#--</ul>-->
        <#--</li>-->

            <#if activitys??>
                <#list activitys as activity>
                    <#if activity?? && activity.status?? && activity.status?string != "0">
                        <#if activity.content??>
                            ${activity.content!''}
                                <script>
                                    var sharder_boutu = $(".sharder_bounty .bounty_task").eq(index++);
                                    sharder_boutu.find(".sharder_activity_reward").text(${activity.bonus!0});//赋值
                                </script>
                            <#if activity.participation!false>
                                <script>userInReceive(sharder_boutu)</script>
                            </#if>
                            <#if (activity.endDate?? && activity.endDate?datetime lt .now?datetime) || activity.status?string == "-1">
                                <script>
                                    userInReceive(sharder_boutu);
                                    if(localStorage.getItem("userLanguage") == 'zh-CN'){
                                        $(sharder_boutu).css("background-image", "url('/r/cms/resource/sharders/img/index/over_activity.png')");
                                    }else {
                                        $(sharder_boutu).css("background-image", "url('/r/cms/resource/sharders/img/index/over_activity_en.png')");
                                    }
                                </script>
                            </#if>
                        </#if>
                    </#if>
                </#list>
            </#if>

            <li class="bounty_task">
                <p class="task_mre_rewards i18n" name="sharder_more_incentives">更多奖励活动,尽请期待!</p>
            </li>
        </ul>
    </div>

    <script>
        var pageSize = 10, pageNO = 1, url, data;

        var pc = new Vue({
            el: "#april_task_table",
            data: {
                ssCandy: ""
            }
        });

        function layuiPage(_num) {
            layui.use(['laypage'], function () {
                var laypage = layui.laypage;
                //分页渲染
                laypage.render({
                    elem: 'page'
                    , count: _num //数据总数
                    , theme: '#57d1fd'
                    , limit: pageSize
                    , prev: '<em>«</em>'
                    , next: '<em>»</em>'
                    , jump: function (obj, first) {
                        if (!first) {//界面刚加载时不执行
                            layer.load(2);
                            setTimeout(function () {
                                layer.closeAll('loading');
                            }, 20000);
                            url = "/activity/query/activity/user.ss";
                            data = "pageNo=" + obj.curr + "&pageSize=" + obj.limit;
                            commAjax(url, "POST", data, dataResult);
                        }
                    }
                });
            });
        }

        function dataResult(_data) {
            layer.closeAll('loading');
            pc.ssCandy = _data.data;
        }

        function bountyUser() {
            var dis = $("#april_task_table");
            var page = $("#page");

            if (dis.css("display") != "none") {
                dis.css("display", "none");
                page.css("display", "none");
                pc.ssCandy = "";
                return;
            }
            dis.css("display", "");
            page.css("display", "block");

            layer.load(2);
            setTimeout(function () {
                layer.closeAll('loading');
            }, 20000);
            commAjax("/activity/query/activity/user.ss", "POST", "", function (_data) {
                dataResult(_data);
                layuiPage(_data.total);
            })
        }

        $(document).ready(function () {
            var lang = localStorage.getItem("userLanguage");

            if(lang == 'zh-CN'){
                $("a[name='activity_help_regulations']").attr("href","/r/cms/www/www/img/download/sharder.pdf");
            }else{
                $("a[name='activity_help_regulations']").attr("href","/r/cms/www/www/img/download/sharder_en.pdf");
            }
        })
    </script>
</@layout.htmlBody>