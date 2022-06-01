class Service < ApplicationRecord
  belongs_to :user
  has_many :booking

  validates :title
  validates :description
  validates :category
  validates :address
  validates :price


end
