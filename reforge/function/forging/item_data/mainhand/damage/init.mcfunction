item modify entity @s weapon.mainhand custom_items:item_damage_full
enchant @s minecraft:sharpness 5
data modify storage minecraft:reforge vanilla.attack_damage set value 0
data modify storage minecraft:reforge vanilla.attack_speed set value 0
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:sharpness run data modify storage minecraft:reforge vanilla.type set value "Melee"
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:sharpness run data modify storage minecraft:reforge vanilla.typeid set value 1
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:sharpness run execute store result storage minecraft:reforge vanilla.attack_damage double 1 run random value 4..9
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:sharpness run execute store result storage minecraft:reforge vanilla.attack_speed double 0.01 run random value -90..-50
execute if items entity @s weapon.mainhand #minecraft:swords run execute store result storage minecraft:reforge vanilla.attack_damage double 1 run random value 6..11
execute if items entity @s weapon.mainhand #minecraft:swords run execute store result storage minecraft:reforge vanilla.attack_speed double 0.01 run random value -85..-55
execute if items entity @s weapon.mainhand #minecraft:axes run execute store result storage minecraft:reforge vanilla.attack_damage double 1 run random value 8..13
execute if items entity @s weapon.mainhand #minecraft:axes run execute store result storage minecraft:reforge vanilla.attack_speed double 0.01 run random value -90..-70
execute if items entity @s weapon.mainhand #minecraft:pickaxes run execute store result storage minecraft:reforge vanilla.attack_damage double 1 run random value 4..7
execute if items entity @s weapon.mainhand #minecraft:pickaxes run execute store result storage minecraft:reforge vanilla.attack_speed double 0.01 run random value -75..-65
execute if items entity @s weapon.mainhand #minecraft:shovels run execute store result storage minecraft:reforge vanilla.attack_damage double 1 run random value 3..8
execute if items entity @s weapon.mainhand #minecraft:shovels run execute store result storage minecraft:reforge vanilla.attack_speed double 0.01 run random value -80..-50
execute if items entity @s weapon.mainhand #minecraft:hoes run execute store result storage minecraft:reforge vanilla.attack_damage double 1 run random value 1..6
execute if items entity @s weapon.mainhand #minecraft:hoes run execute store result storage minecraft:reforge vanilla.attack_speed double 0.01 run random value -60..-25
function reforge:forging/item_data/mainhand/damage/get with storage minecraft:reforge vanilla