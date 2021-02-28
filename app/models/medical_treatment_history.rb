class MedicalTreatmentHistory < ApplicationRecord
  belongs_to :user
  belongs_to :visit_history
end
