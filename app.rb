require 'sinatra'

get '/' do
  content_type 'image/jpeg'
  sleep params[:s].to_i if params[:s]
  IO.read 'test.jpg'
end

