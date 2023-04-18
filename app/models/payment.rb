class Payment < ApplicationRecord
  belongs_to :package

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, numericality: { only_integer: true }
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :payment_date, presence: true
  validates :payment_amount, presence: true, numericality: { greater_than: 0 }
end
