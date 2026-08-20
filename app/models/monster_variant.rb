class MonsterVariant < ApplicationRecord
  belongs_to :monster
  has_many :hitzones, dependent: :destroy
  has_many :status_resistances, dependent: :destroy
end
