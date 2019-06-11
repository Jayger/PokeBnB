class Api::V1::AuthController < ApplicationController


    def login
        @user = User.find_by(username: params[:username])

       if @user && @user.authenticate(params[:password])
         render json: @user
       else
         render json: {errors: "Your moves are weak!"}
       end
    end

    def auto_login
      @user = User.find_by(id: request.headers["Authorization"])

      if @user
        render json: @user
      else 
        render json: {errors: "Your moves are weak!"}
      end
    end
end