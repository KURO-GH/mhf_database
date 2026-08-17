class MonsterVariant < ApplicationRecord
  belongs_to :monster
  has_many :hitzones, dependent: :destroy
end
