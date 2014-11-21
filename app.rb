require 'sinatra'
require 'sinatra/activerecord'
require './config/environment'

get '/' do
  'Welcome to the Sinatra template!'
end