class PagesController < ApplicationController



  def home

  end

  def dashboard
    @user = current_user
    @booked = Booking.where(services: { user: @user }).joins(:service)

    @all_history = []

    @all_history << @user.bookings.confirmed
    @all_history << Booking.where(service: Service.where(user_id: current_user), status: :confirmed)

    @all_history.flatten!.sort_by! { |booking| booking.date }
  end





  def profile
  end
end
