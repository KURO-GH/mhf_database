class MonstersController < ApplicationController

  SPECIES_ORDER = [
    "鳥竜種",
    "牙獣種",
    "飛竜種",
    "魚竜種",
    "甲殻種",
    "古龍種",
    "牙竜種",
    "海竜種",
    "獣竜種",
    "亜龍種"
  ].freeze

  def index
    @monsters = Monster.order(:sort_order)

    @monsters_by_species = SPECIES_ORDER.each_with_object({}) do |species, result|
      result[species] = @monsters.select { |monster| monster.species == species }
    end
  end

  def show
    @monster = Monster.find(params[:id])

    variant_name = params[:variant] || "原種"

    @variant = @monster.monster_variants.find_by!(name: variant_name)
    @hitzones = @variant.hitzones
  end

end