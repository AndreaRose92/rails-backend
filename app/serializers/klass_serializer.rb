class KlassSerializer < ActiveModel::Serializer
  attributes :name, :hit_die

  has_many :spells, serializer: KlassSpellSerializer
end
