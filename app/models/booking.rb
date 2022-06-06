class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  enum status: [:requested, :approved, :rejected, :confirmed]

  validates :date, presence: true
  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1 }

end
