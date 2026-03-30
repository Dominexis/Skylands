
# Backup
scoreboard players operation #damage_temp pc.main = #damage pc.main
data modify storage pc:temp damage_temp set from storage pc:temp damage

# Calculate
#tellraw @a [{selector:"@s"}," Damage Storage: ",{nbt:"damage",storage:"pc:temp"},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
execute unless data storage pc:temp damage.is_heal anchored eyes run function pc:sys/object/damage/hurt
execute if data storage pc:temp damage.is_heal anchored eyes run function pc:sys/object/damage/heal
execute if score @s pc.hp matches ..0 run function pc:sys/object/damage/death

execute unless score #damage pc.main matches 0 run function pc:fx/show_dmg/use
function pc:sys/object/hover_info/modify

# Load Backup
scoreboard players operation #damage pc.main = #damage_temp pc.main
data modify storage pc:temp damage set from storage pc:temp damage_temp