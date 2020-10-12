require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a super super secret page'
end

get '/cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end