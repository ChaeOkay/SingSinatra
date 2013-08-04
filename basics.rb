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


####################

get '/form' do
  erb :form
  #localhost:9393/form
  #provies form field for input data, see views/form.erb
end

post '/form' do
  "you said #{params[:message]}"
  #take input data from localhost:9393/form field and displays it
end

####################

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
  #ocalhost:9393/decrypt/terces
end

####################

# no_found do
#   status 404
#   'not found'
# end

not_found do
  halt 404, 'page not found'
  #localhost:9393/missing
end
