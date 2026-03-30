# exe : object

# effect
function pc:sys/object/intent/icon/self/clear

execute anchored eyes run summon text_display ^ ^ ^ {Tags:[pc.fx,pc.intent_icon,pc.intent_icon.self,pc.summon], alignment: "center", background: 0, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, teleport_duration: 3, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 2.5f, 2.5f], translation: [0.0f, -0.375f, 0.0f]}}
execute anchored eyes run tp @n[type=text_display,tag=pc.summon,distance=..100] ^ ^1.8 ^

scoreboard players operation @n[type=text_display,tag=pc.summon,distance=..100] pc.object_id = @s pc.object_id
data modify storage pc:temp intent set from entity @s data
data modify entity @n[type=text_display,tag=pc.summon,distance=..100] text set value ["",{text:"\uf003",font:"pc:default"},{nbt: "intent.intent.self", "storage": "pc:temp","interpret": true}]

    # Reset
tag @n[type=text_display,tag=pc.summon,distance=..100] remove pc.summon
data remove storage pc:temp intent