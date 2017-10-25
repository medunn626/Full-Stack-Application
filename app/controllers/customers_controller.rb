# frozen_string_literal: true

class CustomersController < ProtectedController
  before_action :set_customer, only: %i[index show update destroy]

  def index
    render json: @customer
  end

  # Since there will always be just 1 customer, no need for this in client:
  def show
    render json: @customer
  end

  def create
    customer = Customer.create(customer_params)
    if customer.valid?
      render json: customer, status: :created
    else
      render json: customer.errors, status: :bad_request
    end
  end

  # Don't allow this in client
  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # Not needed in client since customers are the users thus can't delete
  def destroy
    @customer.destroy
    head :no_content
  end

  private

  def set_customer
    @customer = current_user.customer
  end

  def customer_params
    params.require(:customer).permit(:name, :zip, :services, :max_price, :best_day, :best_time, :user_id)
  end
end
