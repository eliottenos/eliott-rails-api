class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :country, :comment, :zipcode
  has_one :user
end
