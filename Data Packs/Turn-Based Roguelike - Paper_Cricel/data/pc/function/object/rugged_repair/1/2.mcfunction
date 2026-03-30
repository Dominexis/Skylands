
# effect
function pc:sys/item/durability/repair_object/first

    # Energy
scoreboard players add @p[predicate=pc:player/ingame,predicate=sl:player,tag=pc.user,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.epqueue 1

    # Durability
data modify storage pc:temp repair.value set value 94879487
function pc:sys/item/durability/repair_object/last

function pc:sys/object/damage/death