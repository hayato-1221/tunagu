class Client < ApplicationRecord
  has_many :visit_histories
  belongs_to :user
  validates :name, presence: true

  enum gender: {
    male: 0,
    female: 1,
    other: 2,
  }
end
