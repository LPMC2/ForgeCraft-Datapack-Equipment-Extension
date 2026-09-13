# Requirements
- Data must be appended in datapack load, otherwise the reforge won't register
- Must use V1.8.3 or later
- Don't change the slug, or else there might be duplicates

# location
forgecraft:plugin custom

# Format
{
    slug: string (UNIQUE)
    name: string
    reforges:
    {
        id: integer (Required, UNIQUE, don't get repeated with any other, including outside)
        name: string (Required)
        description: string (Required, Tooltip Reforge's description)
        info: string (Debug Menu Info)
        req_xp: integer (Required, XP level needed to apply)
        req_lvl: integer (Required, Forging Level needed to apply, 0 means no requirement)
        attributes: {
            type: string (For example, 'minecraft:attack_damage')
            operation: 'add_value' | 'add_multiplied_total' | 'add_multiplied_base'
            slot: string|'auto' (auto means based on item type)
            amount: double
            percentage: integer 
            (Add percentage value based on current Item's value, if available. amount is the fallback. For example, 100 -> +100%)
        }[]
        tags: object (For example, {is_electric: 1b})
        rarity: 'common' | 'uncommon' | 'rare' | 'epic' (Required)
        texture: string
        custom_function: string
        (Function that apply to the entity -> minecraft:item.
        Example: 'example:electric/apply')
    }[]
}

# Example
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
                },\
            ],\
            rarity: 'rare'\
        }\
    ]\
}