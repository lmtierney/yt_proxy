require 'sinatra'
require 'rest-client'

get '/youtube/*' do |url|
  RestClient.get("https://www.googleapis.com/youtube/#{url}", params: params)
end