class MonstersController < ApplicationController
  def index
    @monsters = Monster.all
  end

  def show
    @monster = Monster.find(params[:id])

    variant_name = params[:variant] || "原種"

    @variant = @monster.monster_variants.find_by!(name: variant_name)
    @hitzones = @variant.hitzones
  end
end
