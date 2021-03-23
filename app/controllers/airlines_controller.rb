class AirlinesController < ApplicationController
  def index
    airline = Airline.all
    render json: airline, status: 201
  end

  def show
    airline = Airline.find_by(user_id: params[:id])
    if airline
      render json: airline, status: 201
    else
      render json: airline.error, status: 400
    end
  end

  def create
    @user = User.find(params[:user_id])
    airline = @user.airlines.create(airline_params)
    if airline.valid?
      render json: airline, status: 201, notice: 'Airline was successfully created.'
    else
      render json: airline.errors, status: :unprocessable_entity
    end
  end

  private

  def airline_params
    params.require(:airline).permit(:name, :price, :location, :description, :image, :user_id)
  end
end
