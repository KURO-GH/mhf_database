class MonstersController < ApplicationController
  def index
    @monsters = Monster.includes(monster_variants: :hitzones)
  end
end
