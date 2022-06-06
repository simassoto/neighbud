class BookingsController < ApplicationController
  before_action :set_service, only: [:new, :show, :edit, :create, :update]

  def index
    #Bookings que EU FIZ
    @bookings = Booking.where(user: current_user)
    #Bookings que fizeram das minhas churrasqueiras
    @booked = Booking.where(services: { user: current_user }).joins(:service)
  end

  def set_approved
    @booking = Booking.find(params[:booking_id])
    @booking.approved!
    redirect_to dashboard_path
  end

  def set_confirmed
    booking = Booking.find(params[:booking_id])
    service = Service.find(booking.service_id)

    total_price = service.price * booking.duration
    # se o status do booking for "confirmado"
    if booking.confirmed!
      # adiciona o dinheiro ao user que fez o serviço
      service_user = booking.service.user
      service_user.update(wallet: service_user.wallet += total_price)
      # booking.service.user.wallet += total_price
    # subtrai do user que solicitou o serviço
      current_user.update(wallet: current_user.wallet -= total_price)
    end
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.service = @service

    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    booking = params[:booking]
    booking.rejected!

    redirect_to dashboard_path, notice: 'The booking was successfully deleted.'
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :duration)
  end

  def set_service
    @service = Service.find(params[:service_id])
  end
end
