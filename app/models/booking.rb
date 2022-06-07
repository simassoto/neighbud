class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  enum status: [:requested, :approved, :rejected, :confirmed]

  validate :wallet_money, on: :create

  validates :date, presence: true
  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1 }

  scope :future, -> { where(date: Date.today.beginning_of_day..) }
  scope :not_confirmed, -> { where(status: [:requested, :approved]) }

  private

  def wallet_money
    if user.wallet < service.price * duration
      errors.add(:duration, "goes over the budget")
    end
  end
end
