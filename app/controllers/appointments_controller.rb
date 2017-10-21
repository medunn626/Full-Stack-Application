# frozen_string_literal: true

class AppointmentsController < ProtectedController
  before_action :set_appointment, only: %i[show update destroy]

  # GET /appointments
  def index
    @appointments = current_user.appointments
    render json: @user_selected_categories
  end

  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
  # def create
  #   @appointment = current_user.appointments.build(appointment_params)
  #   if @appointment.save
  #     render json: @appointment, status: :created, location: @appointment
  #   else
  #     render json: @appointment.errors, status: :unprocessable_entity
  #   end
  # end

  def create
    appointment = Appointment.create(appointment_params)
    if appointment.valid?
      render json: appointment, status: :created
    else
      render json: appointment.errors, status: :bad_request
    end
  end

  # PATCH/PUT /appointments/1
  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  def destroy
    @appointment.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = current_user.appointments.find(params[:id])
    # @appointment = Appointment.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def appointment_params
    params.require(:appointment).permit(:customer_id, :barber_id, :date, :user_id)
  end
end
