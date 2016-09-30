<h2> 实现用户注册登录功能</h2>
1. 首先需要创建 user 的 model ，包括 user_name、password、password_confirmation 。还需要创建一个 session controller 来控制登录和退出.
2. 其次要在 user.rb 中对用户名和密码的有效性进行限制。同时在 Gemfile 中激活 "bcrypt" 这个 gem ，这个 gem 主要用来进行加密，是Rails默认的 gem ，只不过被注释掉了。
3. 在 routes.rb 中增加注册登录登出用的路由。
4. 在相应的 views/sessions/new.html.erb 文件中编写登录页面。
5. 开始实现用户登录.
6. 写 CSS 覆盖 Rails 默认的登录框，加入背景图片，使登录界面美观。
<hr/>
<h2>实现 API 功能</h2>
1. 新建两个 api 的 controller，分别为 users controller 和 users_logs controller .
2. 考虑到可扩展性，实行版本控制，本次版本为 v1.
3. 生成 access_token 和 login_log 两个 model.
4. 按照业务要求逻辑撰写 controller 并配置 路径。
5. 错误处理，中断的返回（400，401...）
6. 文件整合并调试。
7. http://api.user-system.com:3000/v1/users/new?user_name=119&password=111111
8. http://api.user-system.com:3000/v1/user_logs?access_token=d4ff70b0-dc3d-4932-bb3a-8da444c6a26f
