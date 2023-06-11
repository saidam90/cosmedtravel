class HairTreatment < ApplicationRecord
  has_many :treatments, dependent: :nullify
end
