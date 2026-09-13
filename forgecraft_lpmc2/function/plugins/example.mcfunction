function forgecraft_lpmc2:plugins/register {\
    slug: 'example-plugin',\
    reforges:[\
        {\
            id: 1000,\
            name: 'Electrocuting',\
            description: 'Attack Entity causing electrocution',\
            info: 'Electrify Entity into oblivion',\
            req_xp: 20,\
            req_lvl: 5,\
            attributes: [\
                {\
                    type: 'minecraft:attack_damage',\
                    operation: 'add_value',\
                    slot: 'auto',\
                    amount: 1.5,\
                    percentage: 50\
                },\
                {\
                    type: 'minecraft:attack_speed',\
                    operation: 'add_multiplied_total',\
                    slot: 'auto',\
                    amount: -0.6\
                },\
                {\
                    type: 'minecraft:armor',\
                    operation: 'add_value',\
                    slot: 'offhand',\
                    amount: 2\
                },\
                {\
                    type: 'minecraft:armor_toughness',\
                    operation: 'add_multiplied_total',\
                    slot: 'auto',\
                    amount: 1.0,\
                }\
            ],\
            tags: {is_electric: 1b},\
            rarity: 'common',\
            texture: 'electric',\
            custom_function: 'example:electric/apply'\
        },\
        {\
            id: 1001,\
            name: 'Example Reforge',\
            description: 'The very example of reforge',\
            info: 'DEMO',\
            req_xp: 0,\
            req_lvl: 0,\
            attributes: [\
                {\
                    type: 'minecraft:attack_damage',\
                    operation: 'add_value',\
                    slot: 'auto',\
                    amount: 20,\
                    percentage: 200\
                }\
            ],\
            rarity: 'rare'\
        }\
    ]\
}