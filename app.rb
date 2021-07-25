require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/user.rb'

class Chitter < Sinatra::Base
  enable :sessions, :method_override
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome to Chitter!'
  end
end