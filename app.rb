require 'sinatra'
require 'sinatra/activerecord'
require './config/environment'

# Load Models
Dir['./models/**/*.rb'].each { |file| require file }

get '/' do
  'Welcome to the Sinatra template!'
end