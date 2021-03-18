class MedicalTreatmentHistory < ApplicationRecord
  belongs_to :user
  belongs_to :visit_history
  belongs_to :client
end
