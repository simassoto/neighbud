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

    @booking.rejected!

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
