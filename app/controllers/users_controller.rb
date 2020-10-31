class UsersController < ApplicationController

    get "/signup" do
        erb :'users/signup'
    end

    get "/account" do
        @user = User.find(params[:id])
        erb :'users/account'
    end

    post "/users" do
        @user = User.create(user_name: params[:user_name])
        erb :'users/account'
    end

    get "/login" do
        erb :'users/login'
    end

    post "/login" do
        @user = User.find_by(user_name: params[:user_name])
        erb :'users/account'
    end

end