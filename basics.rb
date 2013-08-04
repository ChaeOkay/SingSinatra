require 'sinatra'

get '/' do
  "Hello Word"
  #localhost:9393
end

get '/about' do
  'A little about me.'
   #localhost:9393/about
end

get '/hello/:name' do
  "Hello there, #{params[:name].upcase}"
  #localhost:9393/hello/esme
end

get '/hello/:name/:city' do
  "Hello there, #{params[:name].upcase} from #{params[:city]}"
  #localhost:9393/david/davidtown
end

get '/more/*' do
  params[:splat]
  #localhost:9393/more/apple/orange/banana/starfruit/uglyfruit/passionfruit
end