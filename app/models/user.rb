# frozen_string_literal: true

class User < ApplicationRecord
  encrypts :email, :mobile
  blind_index :email, :mobile
  has_many :rental_units, dependent: :destroy, inverse_of: :user
end
