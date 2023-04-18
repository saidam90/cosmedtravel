class Package < ApplicationRecord
  validates :package_name, presence: true
  validates :package_description, presence: true
  validates :package_price, presence: true, numericality: { greater_than: 0 }
end
