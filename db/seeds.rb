# リオレウス 原種
monster = Monster.find_or_create_by!(name: "リオレウス")

normal_variant = monster.monster_variants.find_or_create_by!(name: "原種")

normal_hitzones = [
  {
    part_name: "頭",
    slash: 60,
    blunt: 50,
    shot: 50,
    fire: 0,
    water: 30,
    thunder: 15,
    dragon: 30,
    ice: 40,
    stun: 100
  },
  {
    part_name: "首",
    slash: 45,
    blunt: 45,
    shot: 40,
    fire: 0,
    water: 20,
    thunder: 10,
    dragon: 20,
    ice: 30,
    stun: 0
  },
  {
    part_name: "背中",
    slash: 25,
    blunt: 30,
    shot: 40,
    fire: 15,
    water: 20,
    thunder: 15,
    dragon: 20,
    ice: 30,
    stun: 0
  },
  {
    part_name: "腹",
    slash: 45,
    blunt: 40,
    shot: 90,
    fire: 0,
    water: 15,
    thunder: 15,
    dragon: 10,
    ice: 25,
    stun: 0
  },
  {
    part_name: "尻尾",
    slash: 30,
    blunt: 30,
    shot: 30,
    fire: 0,
    water: 10,
    thunder: 5,
    dragon: 20,
    ice: 20,
    stun: 0
  },
  {
    part_name: "翼",
    slash: 25,
    blunt: 20,
    shot: 30,
    fire: 0,
    water: 30,
    thunder: 15,
    dragon: 20,
    ice: 40,
    stun: 0
  },
  {
    part_name: "脚",
    slash: 45,
    blunt: 50,
    shot: 40,
    fire: 0,
    water: 10,
    thunder: 5,
    dragon: 5,
    ice: 20,
    stun: 0
  }
]

normal_hitzones.each do |hitzone_data|
  normal_variant.hitzones.find_or_create_by!(
    part_name: hitzone_data[:part_name]
  ) do |hitzone|
    hitzone.assign_attributes(hitzone_data)
  end
end


# リオレウス 変種
variant = monster.monster_variants.find_or_create_by!(name: "変種")

hitzones = [
  {
    part_name: "頭",
    slash: 30,
    blunt: 40,
    shot: 40,
    fire: 0,
    water: 0,
    thunder: 10,
    dragon: 5,
    ice: 5,
    stun: 100
  },
  {
    part_name: "首",
    slash: 45,
    blunt: 20,
    shot: 20,
    fire: 0,
    water: 15,
    thunder: 0,
    dragon: 10,
    ice: 5,
    stun: 0
  },
  {
    part_name: "背中",
    slash: 25,
    blunt: 20,
    shot: 50,
    fire: 10,
    water: 20,
    thunder: 0,
    dragon: 15,
    ice: 0,
    stun: 0
  },
  {
    part_name: "腹",
    slash: 45,
    blunt: 25,
    shot: 20,
    fire: 0,
    water: -5,
    thunder: 15,
    dragon: 30,
    ice: 0,
    stun: 0
  },
  {
    part_name: "尻尾",
    slash: 30,
    blunt: 40,
    shot: 30,
    fire: 0,
    water: 10,
    thunder: 5,
    dragon: 0,
    ice: 0,
    stun: 0
  },
  {
    part_name: "翼",
    slash: 30,
    blunt: 20,
    shot: 25,
    fire: 0,
    water: 10,
    thunder: 0,
    dragon: -5,
    ice: 0,
    stun: 0
  },
  {
    part_name: "脚",
    slash: 45,
    blunt: 30,
    shot: 40,
    fire: 0,
    water: 0,
    thunder: 0,
    dragon: -5,
    ice: 0,
    stun: 0
  }
]

hitzones.each do |hitzone_data|
  variant.hitzones.find_or_create_by!(
    part_name: hitzone_data[:part_name]
  ) do |hitzone|
    hitzone.assign_attributes(hitzone_data)
  end
end


# リオレウス G級
g_variant = monster.monster_variants.find_or_create_by!(name: "G級")

g_hitzones = [
  {
    part_name: "頭",
    slash: 60,
    blunt: 50,
    shot: 30,
    fire: 0,
    water: 30,
    thunder: 10,
    dragon: 15,
    ice: 20,
    stun: 100
  },
  {
    part_name: "首",
    slash: 30,
    blunt: 25,
    shot: 20,
    fire: 0,
    water: 5,
    thunder: 5,
    dragon: 5,
    ice: 15,
    stun: 0
  },
  {
    part_name: "背中",
    slash: 15,
    blunt: 20,
    shot: 15,
    fire: 0,
    water: 5,
    thunder: 5,
    dragon: 5,
    ice: 15,
    stun: 0
  },
  {
    part_name: "腹",
    slash: 25,
    blunt: 40,
    shot: 50,
    fire: 0,
    water: 15,
    thunder: 5,
    dragon: 25,
    ice: 10,
    stun: 0
  },
  {
    part_name: "尻尾",
    slash: 40,
    blunt: 20,
    shot: 35,
    fire: 0,
    water: 20,
    thunder: 5,
    dragon: 15,
    ice: 50,
    stun: 0
  },
  {
    part_name: "翼",
    slash: 15,
    blunt: 20,
    shot: 10,
    fire: 0,
    water: 25,
    thunder: 5,
    dragon: 10,
    ice: 20,
    stun: 0
  },
  {
    part_name: "脚",
    slash: 30,
    blunt: 35,
    shot: 25,
    fire: 0,
    water: 10,
    thunder: 5,
    dragon: 5,
    ice: 10,
    stun: 0
  }
]

g_hitzones.each do |hitzone_data|
  g_variant.hitzones.find_or_create_by!(
    part_name: hitzone_data[:part_name]
  ) do |hitzone|
    hitzone.assign_attributes(hitzone_data)
  end
end

puts "リオレウスの肉質データを登録しました！"
