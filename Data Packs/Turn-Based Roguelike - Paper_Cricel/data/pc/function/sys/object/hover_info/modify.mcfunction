# exe : object

# effect
function pc:sys/object/hover_info/modify/hpbar
function pc:sys/object/hover_info/modify/hpvalue
function pc:sys/object/hover_info/modify/effect
data modify storage pc:temp hover.height set from entity @s data.height

execute on passengers if entity @s[type=minecraft:text_display,tag=pc.sys.hover_info] run function pc:sys/object/hover_info/modify/text

data remove storage pc:temp hover