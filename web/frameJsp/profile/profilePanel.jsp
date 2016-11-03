<%@ page import="service.LoginService" %>
<%@ page import="Entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="bs-docs-section">
    <div class="row profile panel">
        <div class="col-md-4 bg_blur ">
            <a href="#" class="follow_btn hidden-xs btn btn-primary btn-lg">关注</a>
        </div>
        <div class="col-md-8  col-xs-12 info-col">
            <img src="/imgs/me.jpg" class="img-rounded picture hidden-xs">
            <img src="/imgs/me.jpg" class="img-rounded visible-xs picture_mob">
            <div class="header">
                <h2>${user.name}</h2>
                <h4>${user.dept}</h4>
                <span>为什么，我如此地，机智。</span>
            </div>

            <div class="btn-group btn-block">
                <button class="btn btn-inverse btn-lg">提问 16</button>
                <button class="btn btn-inverse btn-lg">回答 14</button>
                <button class="btn btn-inverse btn-lg" href="/user/concern">关注 14</button>
                <button class="btn btn-inverse btn-lg" href="/user/concern">粉丝 14</button>
            </div>
        </div>

    </div>
</div>
