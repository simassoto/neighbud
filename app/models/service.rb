class Service < ApplicationRecord
  belongs_to :user
  has_many :booking

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :price, presence: true

end
