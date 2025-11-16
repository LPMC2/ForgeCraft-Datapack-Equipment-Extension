$data modify storage minecraft:reforge temp.ui.reforge_text append value { \
      "label": {\
        "text": "$(id) - $(name)",\
        "type": "text",\
        "color": "white"\
      },\
      "tooltip": {\
        "text": "$(info)",\
        "type": "text",\
        "color": "gray"\
      },\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "function reforge:ui/components/reforge_items/set/give_item {id:$(id),name:\"$(name)\"}"\
      },\
      "width": 175\
}
$data modify storage minecraft:reforge temp.ui.name set from storage minecraft:reforge data.reforge_data[$(index)].name
$data modify storage minecraft:reforge temp.ui.id set from storage minecraft:reforge data.reforge_data[$(index)].id
$data modify storage minecraft:reforge temp.ui.info set from storage minecraft:reforge data.reforge_data[$(index)].info
execute store result storage minecraft:reforge temp.ui.index int 1 run scoreboard players add .ui_index const 1
execute if score .ui_index const <= .ui_length const run function reforge:ui/components/reforge_items/set/loop with storage minecraft:reforge temp.ui