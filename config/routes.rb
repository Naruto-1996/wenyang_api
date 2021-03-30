module APIRoutes
  extend ActiveSupport::Concern
  included do

    # PC端的路由
    mount PC::Home
    mount PC::UserLogin
    mount PC::MyBlog
    # 移动端的路由
    mount Mobile::Home
    mount Mobile::MyAssets
  end
end
