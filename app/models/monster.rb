class Monster < ApplicationRecord
  has_many :monster_variants, dependent: :destroy
end
