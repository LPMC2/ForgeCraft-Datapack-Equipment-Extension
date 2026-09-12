function forgecraft_lpmc2:plugins/register {\
    slug: 'example-plugin',\
    reforges:[{\
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
            },\
            {\
                type: 'minecraft:attack_speed',\
                operation: 'add_multiplied_total',\
                slot: 'auto',\
                amount: -0.6,\
            },\
            {\
                type: 'minecraft:armor',\
                operation: 'add_value',\
                slot: 'offhand',\
                amount: 2\
            }\
        ],\
        tags: {is_electric: 1b},\
        rarity: 'common',\
        texture: 'electric',\
        custom_function: 'example:electric/apply'\
    }]\
}