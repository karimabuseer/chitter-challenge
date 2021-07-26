require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/user.rb'
require_relative './lib/peep.rb'

class Chitter < Sinatra::Base
  enable :sessions, :method_override
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/peeps/new' do
    Peep.create(params[:peep])
    redirect to '/'
  end
end