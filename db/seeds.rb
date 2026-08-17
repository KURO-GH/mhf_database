# リオレウス変種
monster = Monster.find_or_create_by!(name: "リオレウス")

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

puts "リオレウス変種の肉質データを登録しました！"