# Init Function #
scoreboard players set .distance const 0
execute if score .globalarrow id matches 10000.. run scoreboard players set .globalarrow id 0
scoreboard players add .globalarrow id 1
scoreboard players operation @s id = .globalarrow id
execute store result storage minecraft:arrow store.id int 1 run scoreboard players add @s id 0
execute as @s run function custom_items:arrow/storearrowdata with storage minecraft:arrow store
tag @s add find
#function custom_items:arrow/remove_unused
execute as @a at @s run function custom_items:arrow/find_players
# ------------- #
execute if data entity @s weapon.components.minecraft:custom_data.tactical_bow run execute as @s run function custom_items:arrow/tactical/init
execute if data entity @s[tag=!arrow_ignore] weapon.components.minecraft:custom_data.doubleshot run execute as @s run function custom_items:arrow/doubleshot/init
execute if data entity @s[tag=!arrow_ignore] weapon.components.minecraft:custom_data.rapid run execute as @s run function custom_items:arrow/rapid/init
execute if data entity @s weapon.components.minecraft:custom_data.combat_bow run execute as @s run function custom_items:arrow/combat/init
execute if data entity @s[tag=!arrow_ignore] weapon.components.minecraft:custom_data.hurricane run execute as @s run function custom_items:arrow/hurricane/fire
execute if data entity @s weapon.components.minecraft:custom_data.magical run execute as @s run function custom_items:arrow/magical/init
execute if data entity @s weapon.components.minecraft:custom_data.poison_bow run execute as @s run function custom_items:arrow/poison/init
execute if data entity @s weapon.components.minecraft:custom_data.poisoned_ranged run execute as @s run function custom_items:arrow/poisoned/init
execute if data entity @s weapon.components.minecraft:custom_data.piercing run execute as @s run function custom_items:arrow/piercing/init
execute if data entity @s[nbt={crit:1b}] weapon.components.minecraft:custom_data.supercharged run execute as @s run function custom_items:arrow/super_charged/init
execute if data entity @s[nbt={crit:1b}] weapon.components.minecraft:custom_data.light run execute as @s run function custom_items:arrow/light/apply
execute if data entity @s weapon.components.minecraft:custom_data.powerful run execute as @s run function custom_items:arrow/powerful/init
execute if data entity @s weapon.components.minecraft:custom_data.dispenser run execute as @s run function custom_items:arrow/dispenser/init
execute if data entity @s weapon.components.minecraft:custom_data.enhanced run execute as @s run function custom_items:arrow/enhanced/init
execute if data entity @s weapon.components.minecraft:custom_data.copperized run execute as @s run function custom_items:arrow/copperize/init
execute as @s if score @p[tag=arrow_owner,tag=on_fire] inferno_armor_count matches 1.. run execute as @s run function custom_items:armor/inferno/apply_arrow
execute as @s if score @p[tag=arrow_owner] berserk_armor_count matches 1.. if score @p[tag=arrow_owner] berserk_armor_kill_count matches 1.. run execute as @s run function custom_items:armor/berserk/apply_arrow
execute if data entity @s weapon.components.minecraft:custom_data.ender_reforge run execute as @s run function custom_items:arrow/ender/on_fire
execute if data entity @s weapon.components.minecraft:custom_data.guardian run execute as @s run function custom_items:arrow/guardian/on_fire

tag @s add initialized
execute as @s run function custom_items:arrow/set_id