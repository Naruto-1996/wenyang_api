module Mobile
  class MyAssets < Grape::API
    include Exchange::APIMobileDefault
    namespace :my_assets do
      desc '我的资产列表'
      params do
      end
      #list
      get :list do
        {
          message: 'list',
        }
      end
    end
  end
end
