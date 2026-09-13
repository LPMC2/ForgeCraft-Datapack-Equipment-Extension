function forgecraft_lpmc2:plugins/register {\
    slug: 'example-plugin',\
    reforges:[\
        {\
            id: 1000,\
            name: 'Example Reforge 1',\
            description: 'The very example of reforge',\
            info: 'DEMONSTRATION',\
            req_xp: 20,\
            req_lvl: 5,\
            types: [{id:1},{id:2}],\
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
            custom_function: 'custom_items:tool/chaining/test'\
        },\
        {\
            id: 1001,\
            name: 'Example Reforge 2',\
            description: 'The very example of reforge',\
            info: 'DEMONSTRATION',\
            req_xp: 0,\
            req_lvl: 0,\
            types: [{id:1},{id:2},{id:3},{id:4},{id:5},{id:6},{id:7},{id:8}],\
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
function forgecraft_lpmc2:plugins/register {\
    slug: 'example-plugin-2',\
    reforges:[\
        {\
            id: 1002,\
            name: 'Example Reforge 3',\
            description: 'The very example of reforge from exmaple 2',\
            info: 'DEMONSTRATION 2',\
            req_xp: 20,\
            req_lvl: 10,\
            types: [{id:1},{id:2},{id:3}],\
            attributes: [\
                {\
                    type: 'minecraft:attack_speed',\
                    operation: 'add_multiplied_total',\
                    slot: 'auto',\
                    amount: 0.5\
                }\
            ],\
            rarity: 'epic'\
        }\
    ]\
}