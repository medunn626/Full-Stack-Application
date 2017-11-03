# frozen_string_literal: true

class BarbersController < OpenReadController
  before_action :set_barber_private, only: %i[update destroy]
  before_action :set_barber_public, only: %i[show]

  # GET /barbers
  def index
    @barbers = Barber.all

    render json: @barbers
  end

  # GET /barbers/1
  def show
    render json: @barber
  end

  # POST /barbers
  def create
    @barber = current_user.barbers.build(barber_params)
    if @barber.save
      render json: @barber, status: :created
    else
      render json: @barber.errors, status: :unprocessable_entity
    end
  end

  # Don't allow this in client
  def update
    if @barber.update(barber_params)
      render json: @barber
    else
      render json: @barber.errors, status: :unprocessable_entity
    end
  end

  # Don't allow this in client
  def destroy
    @barber.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_barber_public
    @barber = Barber.find(params[:id])
  end

  def set_barber_private
    @barber = current_user.barbers.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def barber_params
    params.require(:barber).permit(:name, :phone, :shop_name, :zip, :services, :max_price, :busiest_day, :busiest_time, :average_rating)
  end
end
