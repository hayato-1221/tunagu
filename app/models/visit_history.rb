class VisitHistory < ApplicationRecord
  has_one :medical_treatment_history, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :medical_treatment_history
end
