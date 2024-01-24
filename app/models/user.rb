# frozen_string_literal: true

class User < ApplicationRecord
  encrypts :email, :mobile
  blind_index :email, :mobile
  has_many :rental_units, dependent: :destroy, inverse_of: :user


  def print_user_info
    puts get_user_info
  end

  def get_user_info
    return "User: #{email} #{mobile}"
  end
end
