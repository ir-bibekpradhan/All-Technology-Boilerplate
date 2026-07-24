require 'sinatra'
require 'json'

set :port, 4567
set :bind, '0.0.0.0'

get '/' do
  content_type :json
  { message: 'Hello from Ruby boilerplate!' }.to_json
end

get '/health' do
  content_type :json
  { status: 'healthy', timestamp: Time.now.iso8601 }.to_json
end
