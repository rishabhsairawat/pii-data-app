class RentalUnit < ApplicationRecord
  belongs_to :user

  EXTRA_CHARGE = 1000

  def price
    price_cents + EXTRA_CHARGE
  end

  def price_per_room
    price / rooms
  end
end
