class Treatment < ApplicationRecord
  belongs_to :face_treatment, class_name: 'FaceTreatment'
  belongs_to :body_treatment, class_name: 'HairTreatment'
  belongs_to :hair_treatment, class_name: 'BodyTreatment'
end
