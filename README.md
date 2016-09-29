## 实现用户注册登录功能
1. 首先需要创建user的model，包括user_name、password、password_confirmation。还需要创建一个 session controller 来控制登录和退出.
2. 要在user.rb中对用户名和密码的有效性进行限制。同时在增加"bcrypt"的gem，bcrypt这个gem主要用来进行加密，是Rails默认的gem，只不过被注释掉了。
3. routes.rb中增加登录用的路由。
4. 相应的views/sessions/new.html.erb文件中编写登录页面。
5. 开始实现用户登录.
