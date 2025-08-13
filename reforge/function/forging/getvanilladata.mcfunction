# Generic
execute as @s[type=minecraft:item_display] run function reforge:forging/string_data/get_name
data modify storage minecraft:reforge vanilla.name set from storage minecraft:string storage.combined_name
execute if data entity @s item.components.minecraft:custom_data.itemname run data modify storage minecraft:reforge vanilla.name set from entity @s item.components.minecraft:custom_data.itemname
execute as @s[type=minecraft:item_display] run function reforge:forging/string_data/type_name/get_type
data modify storage minecraft:reforge vanilla.typename set from storage minecraft:string storage.combined_name
#data modify storage minecraft:reforge vanilla.typename set string entity @s[type=item_display] item.id 10
data modify storage minecraft:reforge vanilla.type set value "Other"
data modify storage minecraft:reforge vanilla.typeid set value 9
data modify storage minecraft:reforge vanilla.modifier set value []
data modify storage minecraft:reforge vanilla.durability set value 100

# Type
execute if score .itemtype id matches 1.. store result storage minecraft:reforge vanilla.typeid int 1 run scoreboard players get .itemtype id
execute if score .itemtype id matches 1 run data modify storage minecraft:reforge vanilla.type set value "Melee"
execute if score .itemtype id matches 2 run data modify storage minecraft:reforge vanilla.type set value "Ranged"
execute if score .itemtype id matches 3 run data modify storage minecraft:reforge vanilla.type set value "Armor - Helmet"
execute if score .itemtype id matches 4 run data modify storage minecraft:reforge vanilla.type set value "Armor - Chestplate"
execute if score .itemtype id matches 5 run data modify storage minecraft:reforge vanilla.type set value "Armor - Leggings"
execute if score .itemtype id matches 6 run data modify storage minecraft:reforge vanilla.type set value "Armor - Boots"
execute if score .itemtype id matches 7 run data modify storage minecraft:reforge vanilla.type set value "Tool"
execute if score .itemtype id matches 8 run data modify storage minecraft:reforge vanilla.type set value "Utility"
# Custom Items
execute unless score .itemtype id matches 1.. as @s[type=minecraft:item_display] run function reforge:forging/item_data/init

# -------- Melee --------
# Wooden Sword
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_sword",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 100
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_sword",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:3,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.6,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"}]

# Stone Sword
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_sword",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 250
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_sword",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:4,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.6,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"}]

# Iron Sword
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_sword",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 400
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_sword",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.6,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"}]

# Gold Sword
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_sword",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 320
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_sword",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:4,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.5,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"}]

# Diamond Sword
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_sword",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 2500
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_sword",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:6,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.6,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"}]

# Netherite Sword
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_sword",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 3000
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_sword",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:7,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.6,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"}]

# Trident
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:trident",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 400
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:trident",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:8,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.7,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"}]

# Wooden Axe
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_axe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 100
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_axe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:6,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.8,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.05,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# Stone Axe
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_axe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 250
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_axe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:8,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.8,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.10,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# Iron Axe
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_axe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 400
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_axe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:8,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.775,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.10,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# Gold Axe
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_axe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 320
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_axe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:7,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.675,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.20,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# Diamond Axe
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_axe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 2500
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_axe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:8,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.75,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.20,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# Netherite Axe
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_axe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 3000
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_axe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:9,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.75,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.25,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# Mace (Upcoming Item)
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:mace",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 1000
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:mace",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.85,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"}]

#-------- Ranged --------
# Bow
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:bow",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 750
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:bow",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"movement_speed",name:"movement_speed",amount:0.01,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

# Crossbow
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:crossbow",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 700
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:crossbow",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"movement_speed",name:"movement_speed",amount:0.01,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

# -------- Armor --------

# Leather
# - Head
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:leather_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 110
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:leather_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:1,operation:"add_value",id:"$(1)",slot:"head"},{type:"armor_toughness",amount:0.25,operation:"add_value",id:"$(2)",slot:"head"}]
# - Chest
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:leather_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 160
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:leather_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:3,operation:"add_value",id:"$(1)",slot:"chest"},{type:"armor_toughness",amount:0.25,operation:"add_value",id:"$(2)",slot:"chest"}]
# - Legs
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:leather_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 150
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:leather_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:2,operation:"add_value",id:"$(1)",slot:"legs"},{type:"armor_toughness",amount:0.25,operation:"add_value",id:"$(2)",slot:"legs"}]
# - Feet
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:leather_boots",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 130
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:leather_boots",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:1,operation:"add_value",id:"$(1)",slot:"feet"},{type:"armor_toughness",amount:0.25,operation:"add_value",id:"$(2)",slot:"feet"}]

# Chainmail
# - Head
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:chainmail_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 330
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:chainmail_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:2,operation:"add_value",id:"$(1)",slot:"head"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"head"}]
# - Chest
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:chainmail_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 480
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:chainmail_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:5,operation:"add_value",id:"$(1)",slot:"chest"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"chest"}]
# - Legs
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:chainmail_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 450
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:chainmail_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:4,operation:"add_value",id:"$(1)",slot:"legs"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"legs"}]
# - Feet
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:chainmail_boots",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 390
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:chainmail_boots",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:1,operation:"add_value",id:"$(1)",slot:"feet"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"feet"}]

# Iron
# - Head
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 330
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:2,operation:"add_value",id:"$(1)",slot:"head"},{type:"armor_toughness",amount:0.75,operation:"add_value",id:"$(2)",slot:"head"}]
# - Chest
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 480
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:6,operation:"add_value",id:"$(1)",slot:"chest"},{type:"armor_toughness",amount:0.75,operation:"add_value",id:"$(2)",slot:"chest"}]
# - Legs
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 450
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:5,operation:"add_value",id:"$(1)",slot:"legs"},{type:"armor_toughness",amount:0.75,operation:"add_value",id:"$(2)",slot:"legs"}]
# - Feet
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_boots",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 390
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_boots",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:2,operation:"add_value",id:"$(1)",slot:"feet"},{type:"armor_toughness",amount:0.75,operation:"add_value",id:"$(2)",slot:"feet"}]

# Gold
# - Head
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 231
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:2,operation:"add_value",id:"$(1)",slot:"head"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"head"}]
# - Chest
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 336
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:6,operation:"add_value",id:"$(1)",slot:"chest"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"chest"}]
# - Legs
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 315
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:3,operation:"add_value",id:"$(1)",slot:"legs"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"legs"}]
# - Feet
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_boots",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 273
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_boots",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:1,operation:"add_value",id:"$(1)",slot:"feet"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"feet"}]

# Diamond
# - Head
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 726
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:3,operation:"add_value",id:"$(1)",slot:"head"},{type:"armor_toughness",amount:2,operation:"add_value",id:"$(2)",slot:"head"}]
# - Chest
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 1056
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:8,operation:"add_value",id:"$(1)",slot:"chest"},{type:"armor_toughness",amount:2,operation:"add_value",id:"$(2)",slot:"chest"}]
# - Legs
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 990
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:6,operation:"add_value",id:"$(1)",slot:"legs"},{type:"armor_toughness",amount:2,operation:"add_value",id:"$(2)",slot:"legs"}]
# - Feet
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_boots",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 858
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_boots",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:3,operation:"add_value",id:"$(1)",slot:"feet"},{type:"armor_toughness",amount:2,operation:"add_value",id:"$(2)",slot:"feet"}]

# Netherite
# - Head
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 814
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:3,operation:"add_value",id:"$(1)",slot:"head"},{type:"armor_toughness",amount:3,operation:"add_value",id:"$(2)",slot:"head"},{type:"knockback_resistance",name:"knockback_resistance",amount:0.1,operation:"add_value",id:"$(3)",slot:"head"}]
# - Chest
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 1184
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_chestplate",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:8,operation:"add_value",id:"$(1)",slot:"chest"},{type:"armor_toughness",amount:3,operation:"add_value",id:"$(2)",slot:"chest"},{type:"knockback_resistance",name:"knockback_resistance",amount:0.1,operation:"add_value",id:"$(3)",slot:"chest"}]
# - Legs
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 1110
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_leggings",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:6,operation:"add_value",id:"$(1)",slot:"legs"},{type:"armor_toughness",amount:3,operation:"add_value",id:"$(2)",slot:"legs"},{type:"knockback_resistance",name:"knockback_resistance",amount:0.1,operation:"add_value",id:"$(3)",slot:"legs"}]
# - Feet
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_boots",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 962
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_boots",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:3,operation:"add_value",id:"$(1)",slot:"feet"},{type:"armor_toughness",amount:3,operation:"add_value",id:"$(2)",slot:"feet"},{type:"knockback_resistance",name:"knockback_resistance",amount:0.1,operation:"add_value",id:"$(3)",slot:"feet"}]

# Turtle Shell
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:turtle_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 550
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:turtle_helmet",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:2,operation:"add_value",id:"$(1)",slot:"head"},{type:"armor_toughness",amount:0.5,operation:"add_value",id:"$(2)",slot:"head"}]

# Elytra
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:elytra",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 518
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:elytra",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"armor",amount:2,operation:"add_value",id:"$(1)",slot:"chest"}]

# -------- Tools --------
# - Pickaxe
# > Wooden
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 120
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:1,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.7,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.05,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Stone
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 262
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:2,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.7,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.10,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Iron
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 500
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:3,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.7,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.15,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Gold
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 320
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:2,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.6,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.20,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Diamond
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 3122
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:4,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.7,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.20,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Netherite
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 4062
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_pickaxe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.7,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.25,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# - Shovel
# > Wooden
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 120
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:1.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.75,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.05,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Stone
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 262
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:2.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.75,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.10,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Iron
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 500
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:3.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.75,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.15,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Gold
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 320
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:2.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.7,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.20,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Diamond
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 3122
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:4.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.75,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.20,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Netherite
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 4062
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_shovel",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:5.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.75,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.25,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# - Hoe
# > Wooden
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 120
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:wooden_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:0.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.25,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.05,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Stone
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 262
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:stone_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:1,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.25,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.10,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Iron
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 500
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:iron_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:1.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.25,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.15,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Gold
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 320
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:golden_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:2,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.25,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.20,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Diamond
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 3122
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:diamond_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:2.5,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.25,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.20,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# > Netherite
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 4062
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:netherite_hoe",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"attack_damage",amount:3,operation:"add_value",id:"$(1)",slot:"mainhand"},{type:"attack_speed",amount:-0.25,operation:"add_multiplied_total",id:"$(2)",slot:"mainhand"},{type:"block_break_speed",name:"block_break_speed",amount:0.25,operation:"add_multiplied_total",id:"$(3)",slot:"mainhand"}]

# - Shears
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:shears",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 476
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:shears",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"block_interaction_range",amount:0.25,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

# -------- Utilities --------


# - Brush
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:brush",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 128
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:brush",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"block_interaction_range",amount:0.25,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

# - Fishing Rod
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:fishing_rod",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 128
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:fishing_rod",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"entity_interaction_range",amount:0.25,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

# - Flint and Steel
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:flint_and_steel",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 128
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:flint_and_steel",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"block_interaction_range",amount:0.25,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

# - Shield
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:shield",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 672
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:shield",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"entity_interaction_range",amount:0.25,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

# - Carrot on a stick
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:carrot_on_a_stick",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 50
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:carrot_on_a_stick",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"entity_interaction_range",amount:0.25,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

# - Warped Fungus on a stick
execute if entity @s[type=item_display,nbt={item:{id:"minecraft:warped_fungus_on_a_stick",count:1}}] run data modify storage minecraft:reforge vanilla.durability set value 200
$execute if entity @s[type=item_display,nbt={item:{id:"minecraft:warped_fungus_on_a_stick",count:1}}] run data modify storage minecraft:reforge vanilla.modifier set value [{type:"entity_interaction_range",amount:0.25,operation:"add_multiplied_total",id:"$(1)",slot:"mainhand"}]

