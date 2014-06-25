require 'sinatra'

get '/' do
  content_type 'image/jpeg'
  sleep params[:s].to_i if params[:s]
  IO.read 'test.jpg'
end

get '/js' do
  content_type 'text/javascript'
  sleep params[:s].to_i if params[:s]
  "document.write(new Date().getTime()+'<br>')"
end

