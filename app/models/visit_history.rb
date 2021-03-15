class VisitHistory < ApplicationRecord
  has_one :medical_treatment_history, dependent: :destroy
  belongs_to :user
  belongs_to :client
  accepts_nested_attributes_for :medical_treatment_history
end
