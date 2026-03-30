
# fx
execute anchored eyes run summon text_display ^ ^ ^ {Tags:[pc.fx.hover_text,pc.fx,"pc.summon"],alignment: "center", background: 0, billboard: "center", default_background: 0b, line_width: 200, see_through: 1b, shadow: 1b, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, -0.375f, 0.0f]}}

$data modify entity @n[type=text_display,tag=pc.summon,distance=..20] text set value $(text)
execute as @n[type=text_display,tag=pc.summon,distance=..20] at @s if entity @n[type=text_display,tag=pc.fx.hover_text,tag=!pc.summon,distance=..0.1] positioned ~ ~0.75 ~ run function pc:fx/text/offset_y

tag @n[type=text_display,tag=pc.summon,distance=..20] remove pc.summon