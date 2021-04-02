require 'sinatra'
require 'sinatra/reloader' if development?

set :session_secret, 'super secret'

get '/' do
  'hello'
end

get '/secret' do
  'Its a secret'
end

get '/tales' do
  'Tall tale'
end

get '/diary' do
  'Entry 2021'
end

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do 
  erb(:cat_form)
end
