class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :mobile

  has_many :rental_units
end