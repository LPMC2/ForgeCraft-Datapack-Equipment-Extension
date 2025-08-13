$bossbar add boss_$(id) {"italic":false,"selector":"@s"}
$bossbar set boss_$(id) color purple
$execute store result bossbar boss_$(id) max run scoreboard players get @s init_health
$execute store result bossbar boss_$(id) value run scoreboard players get @s health
$bossbar set boss_$(id) players @a
$bossbar set boss_$(id) visible true
$data modify storage minecraft:boss bossbar append value {"id":$(id)}