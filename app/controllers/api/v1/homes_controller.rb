class Api::V1::HomesController < ApplicationController
    def index 
        @homes = Home.all
        render json: @homes
    end

    def show 
        @home = Home.find(params[:id])
        render json: @home
    end

    def create
        @home = Home.create(home_params)
        render json: @home
    end





    private
    def home_params 
        params.require(:home).permit(:name, :description, :address, :img_url, :price, :city_id)
    end

end
