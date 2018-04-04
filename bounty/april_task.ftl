<#if ua == 'pc'>
    <#import "/WEB-INF/ftl/sharders/pc/layout.ftl" as layout/>
<#else >
    <#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as layout/>
</#if>
<@layout.htmlHead pagename="bounty">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/april_task.css">
</@layout.htmlHead>
<@layout.htmlBody>
    <div class="sharder_main">
        <div class="sharder_bounty_banner">
            <h2 class="bounty_banner_titel">豆匣协议活动进行中!</h2>
            <p class="bounty_banner_info">参与活动免费获得豆匣SS奖励</p>
        </div>
        <div class="sharder_invitation">
            <h3 class="sharder_invitation_title">邀请好友获得空投奖励</h3>
            <div class="sharder_copy_link">
                <span class="copy_link"
                      id="copy_link">${invitePage!}?inviterId=${inviterId!}&language=${Request.language!}</span>
                <button type="button" class="btn_copy_link" onclick="copyTextById('copy_link')">复制链接</button>
            </div>
            <p class="sharder_user_invitation"><span
                    class="sharder_invite_number">已邀请人数</span><span>${inviteSum!0}</span></p>
        </div>
        <button class="sharder_task_pane">
            <img src="/r/cms/resource/sharders/img/index/task_pane.png" class="task_pane_img">
            <span class="task_pane_title">活动详情</span>
        </button>
        <ul class="sharder_bounty">
            <li class="bounty_task">
                <input type="checkbox" id="sharder_drop"/>
                <p class="bounty_task_title">
                    <button class="number_img">1</button>
                    <label class="bounty_task_line" for="sharder_drop">
                        <span class="title_text"><span class="sharder_activity_none">活动一:</span>免费领空投(<span
                                class="sharder_number">奖励+30SS</span>)</span>
                    </label>
                </p>
                <ul class="bouty_task_main">
                    <li class="link_info">点击下方链接免费豆匣领空投</li>
                    <li class="task_core">
                        <button><a href="www.xxxxxx.com">www.xxxxx.com</a></button>
                    </li>
                    <li class="task_input_info">邀请好友注册领取后你将再次获得30SS奖励</li>
                <#--<li class="task_input"><input type="text" class="input_user_info"><input type="button" value="提交" class="btn_submit"></li>-->
                </ul>
            </li>
            <li class="bounty_task">
                <input type="checkbox" id="sharder_telegraph"/>
                <p class="bounty_task_title">
                    <button class="number_img">2</button>
                    <label class="bounty_task_line" for="sharder_telegraph">
                        <span class="title_text"><span class="sharder_activity_none">活动二:</span>加入官方电报群(<span
                                class="sharder_number">奖励+30SS</span>)</span>
                    </label>
                </p>
                <ul class="bouty_task_main">
                    <li class="link_info">点击下方链接验证并加入电报群</li>
                    <li class="task_core">
                        <button><a href="www.xxxxxx.com">www.xxxxx.com</a></button>
                    </li>
                    <li class="task_input_info">请在下方填入你的电报群用户名</li>
                    <li class="task_input"><input type="text" class="input_user_info"><input type="button" value="提交"
                                                                                             class="btn_submit"></li>
                </ul>
            </li>
            <li class="bounty_task">
                <input type="checkbox" id="sharder_twitter">
                <p class="bounty_task_title">
                    <button class="number_img">3</button>
                    <label class="bounty_task_line" for="sharder_twitter">
                        <span class="title_text"><span class="sharder_activity_none">活动三:</span>关注Twitter(<span
                                class="sharder_number">奖励+30SS</span>)</span>
                    </label>
                </p>
                <ul class="bouty_task_main">
                    <li class="link_info">点击下方链接关注Twitter</li>
                    <li class="task_core">
                        <button><a href="www.xxxxxx.com">www.xxxxx.com</a></button>
                    </li>
                    <li class="task_input_info">请在下方填入你的Twitter用户名</li>
                    <li class="task_input"><input type="text" class="input_user_info"><input type="button" value="提交"
                                                                                             class="btn_submit"></li>
                </ul>
            </li>
            <li class="bounty_task">
                <input type="checkbox" id="sharder_weixin">
                <p class="bounty_task_title">
                    <button class="number_img">4</button>
                    <label class="bounty_task_line" for="sharder_weixin">
                        <span class="title_text"><span class="sharder_activity_none">活动四:</span>关注微信公众号(<span
                                class="sharder_number">奖励+30SS</span>)</span>
                    </label>
                </p>
                <ul class="bouty_task_main">
                    <li class="link_info">扫描下方二维码关注豆匣微信公众号</li>
                    <li class="task_core"><img src="/r/cms/resource/sharders/img/index/weixin_qr.png" alt="微信公众号二维码"
                                               class="task_weixin_img"/></li>
                    <li class="task_input_info">请在下方填入你的微信账号</li>
                    <li class="task_input"><input type="text" class="input_user_info"><input type="button" value="提交"
                                                                                             class="btn_submit"></li>
                </ul>
            </li>
            <li class="bounty_task">
                <p class="task_mre_rewards">更多奖励活动,尽请期待!</p>
            </li>
        </ul>
    </div>
</@layout.htmlBody>