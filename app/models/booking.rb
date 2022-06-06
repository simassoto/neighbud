class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validate :wallet_money
  validates :date, presence: true
  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1 }

  private

  def wallet_money
    total_price = @booking.service[:price] * @booking[:duration]
    if user.wallet < total_price
      errors.add(:base, "Sorry! You don't have enough $NB money to book this service.")
     end
  end

end
