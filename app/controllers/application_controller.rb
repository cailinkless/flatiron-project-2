require './config/environment'

class ApplicationController < Sinatra::Base

  enable :sessions
  set :session_secret, "password_security"

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

end
