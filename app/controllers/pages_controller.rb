class PagesController < ApplicationController



  def home

  end

  def dashboard
    @user = current_user
    @booked = Booking.where(services: { user: @user }).joins(:service)
  end





  def profile
  end
end
