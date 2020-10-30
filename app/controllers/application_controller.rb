require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/programs" do
    @programs = Program.all
    erb :programs
  end

  get "/programs/new" do
    erb :new
  end

  post "/programs" do
  #code
  end

  get "/programs/:id" do
    #code
  end

  get "/programs/edit/:id" do #or get "/programs/:id/edit" ????
  # code
  end

  patch do #edit
    #code
  end

  delete do #delete
    #code
  end

end
