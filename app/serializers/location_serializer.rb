class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :postal, :utility_identifier, :user_id
end
