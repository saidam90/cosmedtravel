class Package < ApplicationRecord
  validates :package_name, presence: true
  validates :package_description, presence: true
  validates :package_price, presence: true
  validates :image, presence: true
end
