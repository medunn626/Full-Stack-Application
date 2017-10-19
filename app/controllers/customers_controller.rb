# frozen_string_literal: true

class CustomersController < ApplicationController
  before_action :set_customer, only: %i[show destroy update]

  def index
    @customers = Customer.all
    render json: @customers
  end

  def show
    render json: @customer
  end

  def destroy
    @customer.destroy
    head :no_content
  end

  def update
    if @customer.update(customer_params)
      head :no_content
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :zip, :services, :max_price, :best_day, :best_time)
  end
end
