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

  get "/programs/:id/edit" do
    @program = Program.find(params[:id])
    erb :'programs/edit'
  end

  patch "/programs/:id" do 
    @program = Program.find(params[:id])
    @program.update(title: params[:title]) 
    @program.update(playwright: params[:playwright])
    @program.update(company: params[:company])
    @program.update(dates: params[:dates])
    @program.update(director: params[:director])
    @program.update(crew_members: params[:crew_members])
    @program.update(performers: params[:performers])
    redirect to "/programs/#{params[:id]}"
  end

  delete "/programs/:id" do
    # binding.pry
    ex_program = Program.find(params[:id])
    ex_program.destroy
    redirect to "/programs"
  end

end