$dialog show @s { \
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "ForgeCraft",\
    "type": "text",\
    "extra": [\
      {\
        "text": " - 🪲 Debug Menu",\
        "type": "text",\
        "color": "white",\
        "bold": false\
      }\
    ],\
    "color": "gold",\
    "bold": true\
  },\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": {\
      "text": "< ⚒ Reforge Contents >",\
      "type": "text",\
      "color": "white",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "text": "All items can be obtained by crafting. Check the crafting recipe first!\n\nClick on any of the items to get it. Available for Creative Mode only!",\
          "color": "green"\
        }\
      }\
    }\
  },\
  "can_close_with_escape": true,\
  "pause": true,\
  "after_action": "close",\
  "exit_action": {\
    "label": {\
      "text": "❌ Exit",\
      "type": "text",\
      "color": "white"\
    },\
    "tooltip": {\
      "text": "Click to leave!",\
      "type": "text"\
    },\
    "width": 80\
  },\
  "columns": 2,\
  "actions": $(reforge_text)\
}