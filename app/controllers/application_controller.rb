require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/programs"

  get "/programs/new"

  post "/programs"

  get "/programs/:id"

  get "/programs/edit/:id" #or get "/programs/:id/edit" ????

  patch #edit

  delete #delete

end
