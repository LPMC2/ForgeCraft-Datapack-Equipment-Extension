scoreboard players set .item_type const 0
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:arrow run scoreboard players set .item_type const 1
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:tipped_arrow run scoreboard players set .item_type const 2
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:spectral_arrow run scoreboard players set .item_type const 3
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:trident run return run function custom_items:arrow/dispenser/type/trident with storage minecraft:item throw
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:egg run return run function custom_items:arrow/dispenser/type/egg
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:snowball run return run function custom_items:arrow/dispenser/type/snowball
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:fire_charge run return run function custom_items:arrow/dispenser/type/fire_charge
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:experience_bottle run return run function custom_items:arrow/dispenser/type/exp_bottle
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:ender_pearl run return run function custom_items:arrow/dispenser/type/ender_pearl
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:lingering_potion run return run function custom_items:arrow/dispenser/type/potion_1 with storage minecraft:item throw
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:splash_potion run return run function custom_items:arrow/dispenser/type/potion with storage minecraft:item throw
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:firework_rocket run return run function custom_items:arrow/dispenser/type/firework_rocket with storage minecraft:item throw
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:wind_charge run return run function custom_items:arrow/dispenser/type/wind_charge
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:tnt run return run function custom_items:arrow/dispenser/type/tnt
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:minecart run return run function custom_items:arrow/dispenser/type/minecart
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:tnt_minecart run return run function custom_items:arrow/dispenser/type/tnt_minecart
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:chest_minecart run return run function custom_items:arrow/dispenser/type/chest_minecart
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:furnace_minecart run return run function custom_items:arrow/dispenser/type/furnace_minecart
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:hopper_minecart run return run function custom_items:arrow/dispenser/type/hopper_minecart
execute if items entity @p[tag=arrow_owner] weapon.offhand minecraft:armor_stand run return run function custom_items:arrow/dispenser/type/armor_stand
execute if score .item_type const matches 0 run return run function custom_items:arrow/dispenser/set_item with storage minecraft:item throw