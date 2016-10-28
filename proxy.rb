require 'sinatra'
require 'rest-client'

class ProxyApp < Sinatra::Base
  set :bind, '0.0.0.0'
  set :port, 80
  get '/youtube/*' do |url|
    RestClient.get("https://www.googleapis.com/youtube/#{url}", params: params)
  end
end
