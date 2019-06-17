class Api::V1::ReservationsController < ApplicationController

    def index 
        @reservations = Reservation.all
        render json: @reservations
    end

    def show 
        @reservation = Reservation.find(params[:id])
        render json: @reservation
    end

    def create 
        @reservation = Reservation.create(reservation_params)
        if @reservation.valid?
            render json: @reservation, status: :created
        else 
            render json: {errors: 'You have already made a reservation here!'}, status: :not_acceptable
        end 
    end
     

    private

    def reservation_params
        params.require(:reservation).permit(:name, :address, :price, :user_id, :home_id)
    end

end
