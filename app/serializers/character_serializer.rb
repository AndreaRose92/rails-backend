class CharacterSerializer < ActiveModel::Serializer
  attributes :name, :level, :stats

  belongs_to :klass
  belongs_to :race
  belongs_to :player

  def stats
    stats = ['strength', 'dexterity', 'constitution', 'intelligence', 'wisdom', 'charisma'].map { |s| {"#{s}": self.object[s]}}
    stats
  end

end
