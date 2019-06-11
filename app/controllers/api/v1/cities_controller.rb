class Api::V1::CitiesController < ApplicationController
    def index
        @cities = City.all
        render json: @cities
    end

    def show 
        @city = City.find(params[:id])
        render json: @city
    end

    def create
        @city = City.create(city_params)
        render json: @city
    end


    private
    def city_params
        params.require(:city).permit(:name, :region, :img_url)
    end
end
