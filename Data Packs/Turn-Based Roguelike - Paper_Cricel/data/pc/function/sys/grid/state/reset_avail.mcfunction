
# effect
    # Display Mode
data modify entity @s data.display set value "basic"
execute if data entity @s data.occupy.repair run data modify entity @s data.display set value "repair"
execute at @s positioned ~-1.5 ~-100 ~-1.5 if entity @n[type=marker,tag=pc.intent.now,dx=2,dy=200,dz=2] run data modify entity @s data.display set value "intent"

execute if data entity @s {data:{display:"basic"}} if data storage pc:temp range run function pc:sys/grid/state/avail/player
execute if data entity @s {data:{display:"basic"}} if data storage pc:temp intent run function pc:sys/grid/state/avail/object
execute if data entity @s {data:{display:"intent"}} run function pc:sys/grid/state/avail/intent

    # Check is avail
execute if data entity @s {data:{type:"spac", avail:{spac:true}}} run data modify entity @s data.select.avail set value true
execute if data entity @s {data:{type:"wall", avail:{wall:true}}} run data modify entity @s data.select.avail set value true
execute if data entity @s {data:{type:"hole", avail:{hole:true}}} run data modify entity @s data.select.avail set value true
execute store success entity @s data.select.look byte 1 if entity @n[type=item_display,tag=pc.select.selected,tag=pc.temp,distance=..100]