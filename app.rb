require 'sinatra'
require 'sinatra/activerecord'
require './config/environment'

# Load Models
Dir['./models/**/*.rb'].each { |file| require file }

# Load Helpers
Dir['./helpers/**/*_helper.rb'].each { |file| require file }

helpers do
  # Include your helpers as you need them
end

get '/' do
  "Thanks for using this template! :) <3"
end