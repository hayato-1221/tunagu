class Client < ApplicationRecord
  has_many :visit_histories
  belongs_to :user
  validates :name, presence: true
  has_many :client_earnings
  has_many :earnings, through: :client_earnings

  enum gender: {
    male: 0,
    female: 1,
    other: 2,
  }
end
