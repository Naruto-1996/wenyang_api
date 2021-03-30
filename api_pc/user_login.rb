module PC
  class UserLogin < Grape::API
    namespace :user_login do
      desc '用户登录'
      params do
        requires :name, type: String, documentation: {param_type: 'body'}
        requires :password, type: String, documentation: {param_type: 'body'}
      end
      #login
      post :login do
        {
          data: User.where(:name => params[:name])
        }
      end
      puts 'ok'

    end
  end
end
