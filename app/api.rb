module Exchange
  class API < Grape::API
    include Exchange::APIDefault
    include APIRoutes
    mount Exchange::Ping
    add_swagger_documentation(
      api_version: '2.0',
      info: {
        title: "BLOG API"
      },
      schemes: ['http']
    )
  end
end
