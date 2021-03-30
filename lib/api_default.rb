module Exchange
  module APIDefault
    extend ActiveSupport::Concern
    included do
      prefix :api
      version 'v2', using: :path
      format :json
      default_format :json
    end
  end
  module APIMobileDefault
    extend ActiveSupport::Concern
    included do
      prefix :mapi
      version 'v2', using: :path
      format :json
      default_format :json
    end
  end
end

