class SpellSerializer < ActiveModel::Serializer
  attributes :name, :level
  has_many :klasses
end
