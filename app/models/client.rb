class Client < ApplicationRecord
  has_many :visit_histories
  belongs_to :user
  validates :name, presence: true
end
