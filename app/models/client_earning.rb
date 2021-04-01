class ClientEarning < ApplicationRecord
  belongs_to :client
  belongs_to :earning
end
