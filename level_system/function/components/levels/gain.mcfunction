execute unless score @s forgecraft_lvl_objective matches 1.. run function level_system:init
execute unless score @s forgecraft_lvl_progress matches 0.. run function level_system:init
$scoreboard players set .temp_level_amt const $(amount)
execute unless score .temp_level_amt const matches 1.. run scoreboard players set .temp_level_amt const 1
execute if score .forgingxpmultiplier const matches 1.. run scoreboard players operation .temp_level_amt const *= .forgingxpmultiplier const
execute if score .temp_level_amt const matches 1.. run scoreboard players operation @s forgecraft_lvl_progress += .temp_level_amt const
execute if score @s forgecraft_lvl_progress >= @s forgecraft_lvl_objective run function level_system:components/upgrades/level
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 0.75 0
execute if score .temp_level_amt const matches 1.. run title @s actionbar [{"color":"#00f300","italic":false,"text":"⚒ Forging Experience: "},{"color":"green","text":"⦿ "},{"color":"white","italic":false,"score":{"name":"@s","objective":"forgecraft_lvl_progress"}},{"color":"white","text":" / "},{"color":"white","italic":false,"score":{"name":"@s","objective":"forgecraft_lvl_objective"}},{"color":"green","text":" [+"},{"color":"green","score":{"name":".temp_level_amt","objective":"const"}},{"color":"green","text":"]"}]
#execute unless score .temp_level_amt const matches 1.. run title @s actionbar [{"color":"#00f300","italic":false,"text":"⚒ Forging Experience: "},{"color":"green","text":"⦿ "},{"color":"white","italic":false,"score":{"name":"@s","objective":"forgecraft_lvl_progress"}},{"color":"white","text":" / "},{"color":"white","italic":false,"score":{"name":"@s","objective":"forgecraft_lvl_objective"}},{"color":"green","text":" [+1]"}]
scoreboard players reset .temp_level_amt const
scoreboard players set .disable_xp_actionbar const 30