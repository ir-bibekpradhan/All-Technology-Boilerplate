require 'rack/test'
require_relative '../app'

RSpec.describe 'Ruby Boilerplate App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'GET /' do
    it 'returns hello message' do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Hello from Ruby boilerplate!')
    end
  end

  describe 'GET /health' do
    it 'returns health status' do
      get '/health'
      expect(last_response).to be_ok
      expect(last_response.body).to include('healthy')
    end
  end
end
