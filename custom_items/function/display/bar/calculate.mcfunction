$scoreboard players operation .temp_value const = $(selector) $(score)
$scoreboard players set .temp_max const $(max)
scoreboard players operation .temp_remain const = .temp_max const
scoreboard players operation .temp_remain const -= .temp_value const
function custom_items:display/bar/set/start with storage forgecraft:display temp.data