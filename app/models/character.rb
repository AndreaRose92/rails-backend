class Character < ApplicationRecord

    belongs_to :klass
    belongs_to :race
    has_many :spells, through: :klass
end
