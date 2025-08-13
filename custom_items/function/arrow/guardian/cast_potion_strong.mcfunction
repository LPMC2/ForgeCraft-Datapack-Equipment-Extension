$summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:1,Radius:2.5f,RadiusPerTick:-0.01f,RadiusOnUse:-0.2f,Duration:100,potion_contents:{potion:"$(potion)"}}
playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 1 0
particle item{item:"splash_potion"} ~ ~0.1 ~ 0.2 0.2 0.2 0.1 3 normal
scoreboard players set .istipped const 0