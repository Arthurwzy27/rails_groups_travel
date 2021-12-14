class Trip < ApplicationRecord
  belongs_to :users, through: :booking
  belongs_to :groups
end
