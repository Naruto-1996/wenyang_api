module Mobile
  class Home < Grape::API
    include Exchange::APIMobileDefault
    namespace :home do
      desc 'APP端欢迎页'
      params do
        requires :name, type: String, documentation: {param_type: 'body'}
      end
      post :home do
        {
          data: 'welcome',
          hhh: 'welcome'
        }
      end
    end
  end
end
