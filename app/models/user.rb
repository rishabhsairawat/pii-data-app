class User < ApplicationRecord
  has_many :rental_units, dependent: :destroy, inverse_of: :user
end
