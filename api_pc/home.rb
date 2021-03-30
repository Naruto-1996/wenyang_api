module PC
  class Home < Grape::API
    namespace :home do
      desc 'PC端欢迎页'
      params do
      end
      get do
        {
          message: 'home',
        }
      end
    end
  end
end
