class Service < ApplicationRecord
  belongs_to :user
  has_many :booking

  CATEGORIES = [
    'Education',
    'Sports',
    'Repairing',
    'Social Care',
    'Health Care',
    'Financial',
    'Maintenance',
    'Entertainment',
    'Food',
    'Other'
  ]

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :price, presence: true
  validates :address, presence: true


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
