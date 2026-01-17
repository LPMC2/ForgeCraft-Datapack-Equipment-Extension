# Settings
- display format: actionbar (default) | bossbar

# Call Display function example

/execute as @p run function custom_items:display/add {tag:"raging_melee",type:"status",max:20,selector:"@s",score:"rage_meter_melee",format:"bar",color:"light_purple",label:"Raging Meter",unit:"s"}

# Bar Format: Quick update example:

function custom_items:display/bar/update {tag:"raging_melee"}

# Remove Display function example

/execute as @p run function custom_items:display/remove {tag:"raging_melee"}

# Set Display function example

/execute as @p run function custom_items:display/update {tag:"raging_melee",color:"red"}

# Storage format
- Settings: forgecraft:display settings{
    format: "actionbar | bossbar" | "none"
}
- Storage: forgecraft:display data.(id)
.result: [combined text string]
.id: target id. Use scoreboard id.
.actionbar
[
    {
        tag: unique ID for this display. e.g. "raging_melee",
        type:"countdown|timer|status",
        max: Maximum value of the time. Value should be > 0.,
        selector: e.g. @s, $temp
        score: e.g. raging_meter_melee
        format:"number|bar|string"
        color: e.g. "red"|"blue"|"#FF00FF"
        label: e.g. "Raging Meter",
        unit: label after the number/the bar icon. e.g. "s" | "⚡"
        left_bar: Not for initializing. Used for bar format, with unused units.
        right_bar: Not for initializing. Used for bar format, with used units.
    }
]

# Potential Display bar
- ▌
- ■
- ∎
- ▃
- ▄
- ▅
- ▆
- ▇
- █
- ▐
- ▍ 
- ▎
- ▉
- ▊
- ▋
- ❘
- ❙
- ❚
- ●