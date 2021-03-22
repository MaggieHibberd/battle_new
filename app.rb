require 'sinatra'

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
