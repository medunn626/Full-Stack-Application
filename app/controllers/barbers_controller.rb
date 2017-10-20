# frozen_string_literal: true

class BarbersController < OpenReadController
  before_action :set_barber, only: %i[show update destroy]

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
    @barber = Barber.new(barber_params)

    if @barber.save
      render json: @barber, status: :created, location: @barber
    else
      render json: @barber.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /barbers/1
  def update
    if @barber.update(barber_params)
      render json: @barber
    else
      render json: @barber.errors, status: :unprocessable_entity
    end
  end

  # DELETE /barbers/1
  def destroy
    @barber.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_barber
    @barber = Barber.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def barber_params
    params.require(:barber).permit(:name, :phone, :shop_name, :zip, :services, :max_price, :busiest_day, :busiest_time, :average_rating)
  end
end
