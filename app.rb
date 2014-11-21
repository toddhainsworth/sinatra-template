require 'sinatra'
require 'sinatra/activerecord'
require './config/environment'

# Load Models
Dir['./models/**/*.rb'].each { |file| require file }

# Load Helpers
Dir['./helpers/**/*_helper.rb'].each { |file| require file }

# Include your helpers as you need them
helpers do
  include SampleHelper
end

get '/' do
  erb "The current time is <%= current_time %>"
end