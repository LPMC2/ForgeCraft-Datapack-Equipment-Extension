execute unless score @s forgecraft_lvl_objective matches 1.. run return run function level_system:init
execute unless score @s forgecraft_lvl_progress matches 0.. run return run function level_system:init
$scoreboard players add @s forgecraft_lvl_progress $(amount)
execute if score @s forgecraft_lvl_progress >= @s forgecraft_lvl_objective run function level_system:components/upgrades/level
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 0.75 0
$title @s actionbar [{"color":"#00f300","italic":false,"text":"⚒ Forging Experience: "},{"color":"green","text":"⦿ "},{"color":"white","italic":false,"score":{"name":"@s","objective":"forgecraft_lvl_progress"}},{"color":"white","text":" / "},{"color":"white","italic":false,"score":{"name":"@s","objective":"forgecraft_lvl_objective"}},{"color":"green","text":" [+$(amount)]"}]