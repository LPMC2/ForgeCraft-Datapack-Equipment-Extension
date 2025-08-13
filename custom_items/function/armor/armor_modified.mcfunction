tag @s add target_armor
execute as @s run function custom_items:armor/get_armor_data
execute as @s run function custom_items:armor/tanky/get_data
execute as @s run function custom_items:armor/glasscannon/reset
execute as @s if items entity @s armor.* *[minecraft:custom_data~{glasscannon:1}] run schedule function custom_items:armor/glasscannon/update_value 2t replace
execute as @s run function custom_items:armor/mythic/get_data
execute as @s if score @s mythic_count matches 1.. run function custom_items:armor/mythic/get_boost

function custom_items:armor/leaping/reset
execute as @s if score @s max_shielding_charges matches 1.. run function custom_items:armor/shielding/calculate_max_charge
execute as @s if items entity @s armor.* *[minecraft:custom_data~{shielding:1}] run function custom_items:armor/shielding/calculate_max_charge
execute as @s if score @s dashing_count matches 1.. run function custom_items:armor/dashing/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{dashing:1}] run function custom_items:armor/dashing/get_data
execute as @s if score @s mysterious_count matches 1.. run function custom_items:armor/mysterious/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{mysterious:1}] run function custom_items:armor/mysterious/get_data
execute as @s if score @s warrior_count matches 1.. run function custom_items:armor/warrior/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{warrior:1}] run function custom_items:armor/warrior/get_data
execute as @s if score @s healthful_count matches 1.. run function custom_items:armor/healthful/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{healthful:1}] run function custom_items:armor/healthful/get_data
execute as @s if score @s super_chainmail_count matches 1.. run function custom_items:armor/fortified/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{fortified:1}] run function custom_items:armor/fortified/get_data
execute as @s if score @s forest_count matches 1.. run function custom_items:armor/forest/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{forest:1}] run function custom_items:armor/forest/get_data
execute as @s if score @s super_tank_count matches 1.. run function custom_items:armor/super_tank/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{super_tank:1}] run function custom_items:armor/super_tank/get_data
execute as @s if score @s absorption_armor_count matches 1.. run function custom_items:armor/absorption/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{absorption:1}] run function custom_items:armor/absorption/get_data
execute as @s if score @s inferno_armor_count matches 1.. run function custom_items:armor/inferno/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{inferno:1}] run function custom_items:armor/inferno/get_data
execute as @s if score @s berserk_armor_count matches 1.. run function custom_items:armor/berserk/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{berserk:1}] run function custom_items:armor/berserk/get_data
execute as @s if score @s reflective_armor_count matches 1.. run function custom_items:armor/reflective/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{reflective:1}] run function custom_items:armor/reflective/get_data
execute as @s if score @s contagion_armor_count matches 1.. run function custom_items:armor/contagion/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{contagion:1}] run function custom_items:armor/contagion/get_data
execute as @s if score @s poisoned_armor_count matches 1.. run function custom_items:armor/poisoned/get_data
execute as @s if items entity @s armor.* *[minecraft:custom_data~{poisoned_armor:1}] run function custom_items:armor/poisoned/get_data
scoreboard players set @s supervision_count 0
execute if items entity @s armor.head *[minecraft:custom_data~{supervision:1}] run scoreboard players set @s supervision_count 1
scoreboard players set @s sneaky_count 0
execute if items entity @s armor.feet *[minecraft:custom_data~{sneaky:1}] run scoreboard players set @s sneaky_count 1