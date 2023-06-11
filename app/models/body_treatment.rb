class BodyTreatment < ApplicationRecord
  has_many :treatments, dependent: :nullify
end
