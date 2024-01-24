class RentalUnit < ApplicationRecord
  belongs_to :user

  EXTRA_CHARGE = 1000

  def price
    price_cents + EXTRA_CHARGE
  end

  def price_per_room
    price / rooms
  end

  def total_applicable_price
    if price_per_room > 5000
      price + 500
    end
  end

  def get_final_price
    puts total_applicable_price
    return total_applicable_price
  end
end
