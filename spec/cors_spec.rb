require 'spec_helper'

describe Exchange::API do
  include Rack::Test::Methods

  def app
    Exchange::App.instance
  end

  context 'CORS' do
    it 'supports options' do
      options '/', {},
              'HTTP_ORIGIN' => 'http://cors.example.com',
              'HTTP_ACCESS_CONTROL_REQUEST_HEADERS' => 'Origin, Accept, Content-Type',
              'HTTP_ACCESS_CONTROL_REQUEST_METHOD' => 'GET'

      expect(last_response.status).to eq(200)
      expect(last_response.headers['Access-Control-Allow-Origin']).to eq('*')
      expect(last_response.headers['Access-Control-Expose-Headers']).to eq('')
    end
    it 'includes Access-Control-Allow-Origin in the response' do
      get '/api/v2/ping', {}, 'HTTP_ORIGIN' => 'http://cors.example.com'
      expect(last_response.status).to eq(200)
      expect(last_response.headers['Access-Control-Allow-Origin']).to eq('*')
    end
    it 'includes Access-Control-Allow-Origin in errors' do
      get '/invalid_path', {}, 'HTTP_ORIGIN' => 'http://cors.example.com'
      expect(last_response.status).to eq(404)
      expect(last_response.headers['Access-Control-Allow-Origin']).to eq('*')
    end
  end
end