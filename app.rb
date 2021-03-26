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
  "<div>
    <img src='https://www.qries.com/images/banner_logo.png'>
   </div>"
end
