class PlayerSerializer < ActiveModel::Serializer
  attributes :name, :id

  has_many :characters
end
