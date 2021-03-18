class Client < ApplicationRecord
  has_many :visit_histories
  belongs_to :user
  has_many :medical_treatment_histories
  validates :name, presence: true

  enum gender: {
    male: 0,
    female: 1,
  }
end
