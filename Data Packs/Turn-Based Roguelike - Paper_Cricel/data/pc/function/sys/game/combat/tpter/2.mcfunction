
# effect
function pc:sys/game/combat/tpter/clear
summon marker ~ ~ ~ {Tags:[pc.rest_area,pc.rest_area.tpter]}
function pc:sys/game/combat/tpter/tip/summon

# fx
playsound minecraft:block.end_portal.spawn master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 2 0.25
particle flash ~ ~ ~ 0 0 0 0 0 force
particle dust_color_transition{from_color:[0.380,0.102,0.541],scale:2,to_color:[1.000,0.788,0.929]} ~ ~ ~ 0.1 10 0.1 0 1000 force

particle witch ~3.0 ~ ~0.0 0 0 0 0 0 force
particle witch ~2.898 ~ ~0.776 0 0 0 0 0 force
particle witch ~2.598 ~ ~1.5 0 0 0 0 0 force
particle witch ~2.121 ~ ~2.121 0 0 0 0 0 force
particle witch ~1.5 ~ ~2.598 0 0 0 0 0 force
particle witch ~0.776 ~ ~2.898 0 0 0 0 0 force
particle witch ~0.0 ~ ~3.0 0 0 0 0 0 force
particle witch ~-0.776 ~ ~2.898 0 0 0 0 0 force
particle witch ~-1.5 ~ ~2.598 0 0 0 0 0 force
particle witch ~-2.121 ~ ~2.121 0 0 0 0 0 force
particle witch ~-2.598 ~ ~1.5 0 0 0 0 0 force
particle witch ~-2.898 ~ ~0.776 0 0 0 0 0 force
particle witch ~-3.0 ~ ~0.0 0 0 0 0 0 force
particle witch ~-2.898 ~ ~-0.776 0 0 0 0 0 force
particle witch ~-2.598 ~ ~-1.5 0 0 0 0 0 force
particle witch ~-2.121 ~ ~-2.121 0 0 0 0 0 force
particle witch ~-1.5 ~ ~-2.598 0 0 0 0 0 force
particle witch ~-0.776 ~ ~-2.898 0 0 0 0 0 force
particle witch ~-0.0 ~ ~-3.0 0 0 0 0 0 force
particle witch ~0.776 ~ ~-2.898 0 0 0 0 0 force
particle witch ~1.5 ~ ~-2.598 0 0 0 0 0 force
particle witch ~2.121 ~ ~-2.121 0 0 0 0 0 force
particle witch ~2.598 ~ ~-1.5 0 0 0 0 0 force
particle witch ~2.898 ~ ~-0.776 0 0 0 0 0 force