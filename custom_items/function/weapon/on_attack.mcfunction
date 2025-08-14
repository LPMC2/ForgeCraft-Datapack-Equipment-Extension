####################
# Example:
# execute as @a[tag=onHit] at @s run say I hit you! -> Player who hit the target
# execute as @s run say ouch! -> Target whose player hit it
# Another Example on Dealing Damage:
# data modify storage minecraft:damage store.damage set value -10
# execute as @s run function custom_items:health/apply_data
#####################
execute if entity @s[tag=!block_mob] unless score @s init_health matches 1.. run execute store result score @s init_health run attribute @s minecraft:max_health get 1
execute if entity @s[tag=!block_mob] store result score @s health run data get entity @s Health
execute as @s if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.stunning run function custom_items:weapon/stunning/apply
execute as @s[tag=!striking] if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.striking run function custom_items:weapon/striking/apply
execute as @s if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.precise run function custom_items:weapon/precise/get_chance
execute as @s if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.electric run function custom_items:weapon/electric/get_chance
execute as @s if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.breaching run function custom_items:weapon/breaching/apply
#execute as @p[tag=onHit] if data entity @s SelectedItem.components.minecraft:custom_data.cleaving_melee run function custom_items:weapon/cleaving/apply
# > Leeching
execute as @s[tag=!leeching] if data entity @p[tag=onHit,tag=!leeching] SelectedItem.components.minecraft:custom_data.leeching run function custom_items:weapon/leeching/apply
execute as @s[tag=leeching] if data entity @p[tag=onHit,tag=leeching] SelectedItem.components.minecraft:custom_data.leeching run scoreboard players set @s leeching 0
execute as @s[tag=leeching] if data entity @p[tag=onHit,tag=leeching] SelectedItem.components.minecraft:custom_data.leeching run scoreboard players set @p[tag=onHit,tag=leeching] leeching 0

# Absorption
execute as @s[tag=!absorption_sw] if data entity @p[tag=onHit,tag=!absorption_sw] SelectedItem.components.minecraft:custom_data.sword_of_absorption run function custom_items:weapon/absorption_sword/apply
execute as @s[tag=absorption_sw] if data entity @p[tag=onHit,tag=absorption_sw] SelectedItem.components.minecraft:custom_data.sword_of_absorption run scoreboard players set @s absorption_sword_cd 0
execute as @s[tag=absorption_sw] if data entity @p[tag=onHit,tag=absorption_sw] SelectedItem.components.minecraft:custom_data.sword_of_absorption run scoreboard players set @p[tag=onHit,tag=absorption_sw] absorption_sword_cd 0

# Contagion
execute as @s if score @p[tag=onHit] contagion_armor_count matches 1.. run function custom_items:armor/contagion/apply_on_hit
# Rotten
execute as @s if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.rotten_reforge run function custom_items:weapon/rotten/apply

execute as @s if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.weakening run function custom_items:weapon/weakening/apply
execute as @p[tag=onHit] if data entity @s SelectedItem.components.minecraft:custom_data.heart_of_the_sword run function custom_items:weapon/hots/atk_heal

# Chaining
execute as @s if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.chaining_melee run function custom_items:weapon/chaining/init

execute as @s[tag=!block_mob] if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.provoker run function custom_items:weapon/provoker/apply
#execute if score @s[type=!#entity_hit_matching:non_mob] max_shielding_charges matches 1.. if score @s shielding_charges matches 1.. run function custom_items:armor/shielding/remove_charge
execute as @s run function mobs:on_hit

# Poisoned
execute as @s if data entity @p[tag=onHit] SelectedItem.components.minecraft:custom_data.poisoned_melee run function custom_items:weapon/poisoned/apply

# Reset
scoreboard players set @p[tag=onHit] damage_dealt 0
tag @a remove onHit
execute if entity @s[tag=!block_mob] run scoreboard players operation @s init_health = @s health
execute if score @s arrow_id matches 1.. unless score @s rapid_cd matches 1.. run execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s arrow_id
execute if score @s arrow_id matches 1.. unless score @s rapid_cd matches 1.. run function custom_items:arrow/remove_storage with storage minecraft:arrow store