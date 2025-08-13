$execute if score .charges const = @s shielding_charges run data remove storage minecraft:text $(playerid).text
scoreboard players remove .charges const 1
$execute if score .charges const matches 0.. run data modify storage minecraft:text $(playerid).text append value "🛡"


execute if score .charges const matches 0.. run function custom_items:armor/shielding/get_charges_icon with storage minecraft:text store