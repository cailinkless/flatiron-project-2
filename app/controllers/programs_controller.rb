#does this need a bunch of the stuff that was prepopulated in Application_Controller to run???
class ProgramsController < ApplicationController
  
  get "/programs" do
    @programs = Program.all
    erb :'programs/programs'
  end

   get "/programs/new" do
     erb :'programs/new'
   end

  post "/programs" do
  # binding.pry
  @program = Program.create(
    title: params[:title], 
    playwright: params[:playwright], 
    company: params[:company],
    dates: params[:dates],
    director: params[:director],
    crew_members: params[:crew_members],
    performers: params[:performers],
    user_id: User.find(1).id)
  erb :'programs/show'
  # binding.pry
  end

  get "/programs/:id" do
    @program = Program.find(params[:id])
    erb :'programs/show'
  end

  # get "/programs/edit/:id" do #or get ***"/programs/:id/edit"*** ????
  # # code
  # end

  # patch do #edit
  #   #code
  # end

  # delete do #delete
  #   #code
  # end

end