class Client < ApplicationRecord
  has_many :visit_histories
  belongs_to :user
  validates :name, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :address, presence: true

  enum gender: {
    male: 0,
    female: 1,
  }
end
