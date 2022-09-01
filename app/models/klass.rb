class Klass < ApplicationRecord

    has_many :characters
    has_many :klass_spells
    has_many :spells, through: :klass_spells
end
