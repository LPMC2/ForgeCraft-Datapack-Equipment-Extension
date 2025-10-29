# Base
data modify storage minecraft:reforge vanilla.modifier set value []
# Armor
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/armor run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"armor",amount:1,operation:"add_value",id:"$(uuid_1)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. if data storage minecraft:reforge vanilla.modifier[{type:"armor",slot:"head"}] store result storage minecraft:reforge vanilla.modifier[{type:"armor"}].amount double 1 run random value 2..5
execute if score .attribute_value const matches 1.. if data storage minecraft:reforge vanilla.modifier[{type:"armor",slot:"chest"}] store result storage minecraft:reforge vanilla.modifier[{type:"armor"}].amount double 1 run random value 6..10
execute if score .attribute_value const matches 1.. if data storage minecraft:reforge vanilla.modifier[{type:"armor",slot:"legs"}] store result storage minecraft:reforge vanilla.modifier[{type:"armor"}].amount double 1 run random value 5..9
execute if score .attribute_value const matches 1.. if data storage minecraft:reforge vanilla.modifier[{type:"armor",slot:"feet"}] store result storage minecraft:reforge vanilla.modifier[{type:"armor"}].amount double 1 run random value 1..5
# Armor Toughness
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/armor_toughness run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"armor_toughness",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"armor_toughness"}].amount double 1 run random value 1..5
# Attack Damage
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/attack_damage run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"attack_damage",amount:1,operation:"add_value",id:"$(uuid_3)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"attack_damage"}].amount double 0.1 run random value 1..40
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:swords run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_damage"}].amount double 1 run random value 6..11
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:axes run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_damage"}].amount double 1 run random value 8..13
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:pickaxes run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_damage"}].amount double 1 run random value 4..7
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:shovels run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_damage"}].amount double 1 run random value 3..8
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:hoes run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_damage"}].amount double 1 run random value 1..6
# Attack Knockback
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/attack_knockback run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"attack_knockback",amount:1,operation:"add_multiplied_base",id:"$(uuid_4)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"attack_knockback"}].amount double 0.01 run random value 10..100
# Attack Speed
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/attack_speed run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"attack_speed",amount:-0.5,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"attack_speed"}].amount double 0.01 run random value 1..25
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:swords run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_speed"}].amount double 0.01 run random value -85..-55
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:axes run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_speed"}].amount double 0.01 run random value -90..-70
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:pickaxes run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_speed"}].amount double 0.01 run random value -75..-65
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:shovels run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_speed"}].amount double 0.01 run random value -80..-50
execute if score .attribute_value const matches 1.. if items entity @s weapon.mainhand #minecraft:hoes run execute store result storage minecraft:reforge vanilla.modifier[{type:"attack_speed"}].amount double 0.01 run random value -60..-25
# Block Break Speed
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/block_break_speed run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"block_break_speed",amount:0.05,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"block_break_speed"}].amount double 0.001 run random value 10..500
# block_interaction_range
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/block_interaction_range run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"block_interaction_range",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"block_interaction_range"}].amount double 0.1 run random value 1..20
# burning_time
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/burning_time run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"burning_time",amount:1,operation:"add_multiplied_base",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"burning_time"}].amount double 0.01 run random value -100..-10
# entity_interaction_range
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/entity_interaction_range run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"entity_interaction_range",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"entity_interaction_range"}].amount double 0.1 run random value 1..20
# explosion_knockback_resistance
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/explosion_knockback_resistance run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"explosion_knockback_resistance",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"explosion_knockback_resistance"}].amount double 1 run random value 1..10
# fall_damage_multiplier
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/fall_damage_multiplier run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"fall_damage_multiplier",amount:-0.1,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"fall_damage_multiplier"}].amount double 0.01 run random value -50..-10
# gravity
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/gravity run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"gravity",amount:-0.25,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"gravity"}].amount double 100 run random value -90..-10
# jump_strength
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/jump_strength run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"jump_strength",amount:0.1,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"jump_strength"}].amount double 0.01 run random value 1..30
# knockback_resistance
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/knockback_resistance run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"knockback_resistance",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"knockback_resistance"}].amount double 1 run random value 1..20
# luck
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/luck run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"luck",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"luck"}].amount double 1 run random value 1..5
# max_health
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/max_health run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"max_health",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"max_health"}].amount double 1 run random value 1..5
# mining_efficiency
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/mining_efficiency run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"mining_efficiency",amount:0.1,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"mining_efficiency"}].amount double 0.01 run random value 1..50
# movement_efficiency
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/movement_efficiency run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"movement_efficiency",amount:0.1,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"movement_efficiency"}].amount double 0.01 run random value 10..100
# movement_speed
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/movement_speed run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"movement_speed",amount:1,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"movement_speed"}].amount double 0.01 run random value 1..20
# oxygen_bonus
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/oxygen_bonus run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"oxygen_bonus",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"oxygen_bonus"}].amount double 1 run random value 1..5
# safe_fall_distance
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/safe_fall_distance run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"safe_fall_distance",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"safe_fall_distance"}].amount double 1 run random value 1..10
# scale
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/scale run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"scale",amount:0.1,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"scale"}].amount double 0.01 run random value -90..90
# sneaking_speed
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/sneaking_speed run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"sneaking_speed",amount:0.1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"sneaking_speed"}].amount double 0.01 run random value 10..50
# step_height
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/step_height run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"step_height",amount:1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"step_height"}].amount double 0.1 run random value 1..20
# submerged_mining_speed
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/submerged_mining_speed run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"submerged_mining_speed",amount:0.5,operation:"add_multiplied_total",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"submerged_mining_speed"}].amount double 0.01 run random value 10..400
# sweeping_damage_ratio
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/sweeping_damage_ratio run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"sweeping_damage_ratio",amount:0.1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"sweeping_damage_ratio"}].amount double 0.1 run random value 1..10
# water_movement_efficiency
scoreboard players reset .attribute_value const
execute if function reforge:forging/item_data/attribute/type/get/water_movement_efficiency run scoreboard players set .attribute_value const 1
$execute if score .attribute_value const matches 1.. run data modify storage minecraft:reforge vanilla.modifier append value {type:"water_movement_efficiency",amount:0.1,operation:"add_value",id:"$(uuid_2)",slot:"$(slot)"}
execute if score .attribute_value const matches 1.. store result storage minecraft:reforge vanilla.modifier[{type:"water_movement_efficiency"}].amount double 0.1 run random value 1..10
