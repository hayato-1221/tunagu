class Client < ApplicationRecord
  has_many :visit_histories
  belongs_to :user
end
