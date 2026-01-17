$scoreboard players set .enhancementmaxcount const $(enhancementmaxcount)
$scoreboard players set .ismobmodification const $(ismobmodification)
$scoreboard players set .isrequireconvert const $(isrequireconvert)
$scoreboard players set .istexturearmor const $(istexturearmor)
$scoreboard players set .istextureequipment const $(istextureequipment)
$scoreboard players set .forgingxpmultiplier const $(forgingxpmultiplier)
$data modify storage forgecraft:display settings.format set value "$(abilitydisplaytype)"
function forgecraft_lpmc2:load/display/load
tellraw @a [{"color":"dark_gray","italic":false,"text":"--------------------"},{"bold":true,"color":"gold","italic":false,"text":"ForgeCraft"},{"bold":false,"color":"dark_gray","italic":false,"text":"--------------------\n\n"},{"bold":false,"color":"green","italic":false,"text":"💾 Settings saved & applied!"},{"bold":false,"color":"dark_gray","italic":false,"text":"\n\n----------------------------------------"}]