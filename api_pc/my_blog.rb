module PC
  class MyBlog < Grape::API
    namespace :my_blog do
      desc 'banner 介绍部分'
      get :banner_introduce do
        BannerIntroduce.all.each { |introduce|
          {
            id: introduce.id,
            title: introduce.title,
            little_title: introduce.little_title,
            description: introduce.description
          }
        }
      end

    end
  end
end
