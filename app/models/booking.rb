class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service


  enum status: [:requested, :approved, :rejected, :confirmed]

  validate :wallet_money

  validates :date, presence: true
  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1 }

  private

  def wallet_money
    if user.wallet <= service.price * duration
      errors.add(:duration, "goes over the budget")
    end
  end
end
