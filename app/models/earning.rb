class Earning < ApplicationRecord
  has_many :client_earnings
  has_many :clients, through: :client_earnings
end
