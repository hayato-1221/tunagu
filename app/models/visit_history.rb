class VisitHistory < ApplicationRecord
  has_one :medical_treatment_history
  belongs_to :user
  belongs_to :client
end
