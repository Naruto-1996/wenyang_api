require 'spec_helper'

describe PC::Home do
  include Rack::Test::Methods
  def app
    Exchange::API
  end
  context '/api/v2/home' do
    it '返回200' do
      get '/api/v2/home'
      expect(last_response.status).to eq(200)
    end
  end
end
