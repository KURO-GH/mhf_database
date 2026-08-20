class StatusResistance < ApplicationRecord
  belongs_to :monster_variant

  STATUSES = %w[毒 麻痺 睡眠 爆破 気絶].freeze

  validates :status, presence: true, inclusion: { in: STATUSES }
  validates :status, uniqueness: { scope: :monster_variant_id }
end
