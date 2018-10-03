class Api::AirplanesController < ApplicationController  
  before_action :set_airplane, only: [:show, :update, :destroy]

  def index
    render json: Airplane.all 
  end 

  def create 
    airplane = Airplane.new(airplane_params)
    if airplane.save 
      render json: airplane 
    else 
      render json: {message: airplane.errors}, status: 400
    end 
  end

  def show 
    render json: @airplane
  end 

  def update 
    if @airplane.update(airplane_params)
      render json: @airplane 
    else 
      render json: {message: airplane.errors}, status: 400
    end  
  end 

  def destroy 
    if @airplane.destroy
      render status: 204
    else 
      render json: {message: "Unable to destroy airplane"}, status: 400
    end 
  end
  
  private 

  def set_airplane
    @airplane = Airplane.find_by(id: params[:id])
  end 

  def airplane_params
    params.require(:airplane).permit(:name, :seats, :img_url, :lesson_rate, :identifier)
  end

end 