## 实现用户注册登录功能
1. 首先需要创建 user的model，包括user_name、password、password_confirmation。还需要创建一个 session controller 来控制登录和退出.
2. 其次要在 user.rb 中对用户名和密码的有效性进行限制。同时在 Gemfile 中激活 "bcrypt" 这个 gem ，这个 gem 主要用来进行加密，是Rails默认的 gem ，只不过被注释掉了。
3. 在 routes.rb 中增加注册登录登出用的路由。
4. 在相应的 views/sessions/new.html.erb 文件中编写登录页面。
5. 开始实现用户登录.
6. 写 CSS 覆盖 Rails 默认的登录框，使登录界面美观。
## 实现 API 功能
1. 
