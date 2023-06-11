class FaceTreatment < ApplicationRecord
  has_many :treatments, dependent: :nullify
end
