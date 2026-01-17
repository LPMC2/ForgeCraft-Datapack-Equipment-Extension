$dialog show @s { \
  "type": "minecraft:server_links",\
  "title": {\
    "text": "ForgeCraft",\
    "type": "text",\
    "extra": [\
      {\
        "text": " - ⚙ Settings",\
        "type": "text",\
        "color": "white",\
        "bold": false\
      }\
    ],\
    "color": "gold",\
    "bold": true\
  },\
  "inputs": [\
    {\
      "type": "minecraft:number_range",\
      "key": "enhancementmaxcount",\
      "width": 300,\
      "label": {\
        "text": "Maximum Applied Enhancement Books",\
        "type": "text",\
        "color": "white",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "text": "ℹ This set the maximum amount of enhancement books applied to the equipment.",\
            "type": "text",\
            "color": "yellow"\
          }\
        }\
      },\
      "start": 1,\
      "end": 300,\
      "step": 1,\
      "initial": $(enhancementmaxcount)\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "ismobmodification",\
      "label": {\
        "text": "Mob Modification",\
        "type": "text",\
        "color": "white",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "text": "⚠ Warning: Legacy feature. Will not support on any future version. ( Haven't updated since V1.4 )",\
            "type": "text",\
            "color": "red"\
          }\
        }\
      },\
      "initial": $(ismobmodification),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "isrequireconvert",\
      "label": {\
        "text": "Require Converting to apply reforge",\
        "type": "text",\
        "color": "white",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "text": "ℹ This will disable the auto convert feature for forging. You will need to use the Forging Converter in order to apply any reforge.",\
            "type": "text",\
            "color": "yellow"\
          }\
        }\
      },\
      "initial": $(isrequireconvert),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "istexturearmor",\
      "label": {\
        "text": "Model Texture - Armor",\
        "type": "text",\
        "color": "white",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "text": "ℹ This will control if the Armor displays the model (In 3rd person).",\
            "type": "text",\
            "color": "yellow"\
          }\
        }\
      },\
      "initial": $(istexturearmor),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "istextureequipment",\
      "label": {\
        "text": "Model Texture - Item",\
        "type": "text",\
        "color": "white",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "text": "ℹ This will control if the item display the custom texture. This is used to make sure other resourcepacks/mods/datapacks that modifies the item texture to work properly.",\
            "type": "text",\
            "color": "yellow"\
          }\
        }\
      },\
      "initial": $(istextureequipment),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "forgingxpmultiplier",\
      "width": 300,\
      "label": {\
        "text": "⚒ Forging XP Multiplier",\
        "type": "text",\
        "color": "white",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "text": "ℹ Multiplies the amount of Forging XP gained, which can make leveling up either easier, or much harder.",\
            "type": "text",\
            "color": "yellow"\
          }\
        }\
      },\
      "start": 1,\
      "end": 20,\
      "step": 1,\
      "initial": $(forgingxpmultiplier)\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "ability_display_type",\
      "label": {\
        "text": "Ability Display Type",\
        "type": "text"\
      },\
      "label_visible": true,\
      "options": [\
        {\
          "id": "actionbar",\
          "display": "Actionbar",\
          "initial": $(option_actionbar)\
        },\
        {\
          "id": "bossbar",\
          "display": "Bossbar",\
          "initial": $(option_bossbar)\
        },\
        {\
          "id": "none",\
          "display": "None!",\
          "initial": $(option_none)\
        }\
      ]\
    }\
  ],\
  "can_close_with_escape": true,\
  "pause": true,\
  "after_action": "close",\
  "exit_action": {\
    "label": {\
      "text": "💾 Save",\
      "type": "text",\
      "color": "white"\
    },\
    "tooltip": {\
      "text": "Click to save & leave!",\
      "type": "text"\
    },\
    "width": 80,\
    "action": {\
      "type": "minecraft:dynamic/run_command",\
      "template": "function reforge:ui/components/settings/set {enhancementmaxcount:\"\u0024(enhancementmaxcount)\",ismobmodification:\"\u0024(ismobmodification)\",isrequireconvert:\"\u0024(isrequireconvert)\",istexturearmor:\"\u0024(istexturearmor)\",istextureequipment:\"\u0024(istextureequipment)\",forgingxpmultiplier:\"\u0024(forgingxpmultiplier)\",abilitydisplaytype:\"\u0024(ability_display_type)\"}"\
    }\
  },\
  "columns": 2\
}