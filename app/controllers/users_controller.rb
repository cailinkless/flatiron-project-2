class UsersController < ApplicationController

    get "/signup" do
        erb :'users/signup'
    end

    get "/account" do
        if User.is_logged_in?(session)
            erb :'users/account'
        else
            @error = "You must be logged in to view this account."
            erb :error
        end
    end

    post "/signup" do
        if params[:user_name] != ""
            unless User.any?{|user| user.user_name == params[:user_name]}
                @user = User.create(user_name: params[:user_name], password: params[:password])
                if @user.save #&& @user.user_name != "" && @user.password !=""
                    session[:user_id] = @user.id
                    erb :'users/account'
                else
                    @error = "It looks like something went wrong! Please try to sign up again."
                    erb :error
                end
            else
                @error = "This user name is already taken! Please try again."
                erb :error
            end
        else
            @error = "User name must not be empty!"
            erb :error
        end
    end

    get "/login" do
        erb :'users/login'
    end

    post "/login" do
        @user = User.find_by(user_name: params[:user_name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            erb :'users/account'
        else
            @error = "It looks like you don't have an account yet!</a>"
            erb :error
        end
    end

    get '/logout' do
        session.clear
        redirect '/'
    end

    # post "/login" do
    #     user = User.find_by(username: params[:username])
    #     if user && user.authenticate(params[:password])
    #       session[:user_id] = user.id
    #       redirect "/account"
    #     else
    #       redirect "/failure"
    #     end
    #   end

end