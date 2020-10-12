require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a super super secret page'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do 
  erb :cat_form
end 