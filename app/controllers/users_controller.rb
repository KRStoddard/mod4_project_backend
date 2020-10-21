class UsersController < ApplicationController

    def create
        user = User.create({username: params[:username], password: params[:password]})

        if user.valid?
            render json: user
        else
            render json: {error: "Username is already taken"}
        end
    end
end