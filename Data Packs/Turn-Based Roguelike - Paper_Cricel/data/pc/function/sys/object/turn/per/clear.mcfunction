
# effect
function pc:sys/object/passive/use {type:end_act}
function pc:sys/object/passive/use {type:end_turn}

kill @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
function pc:sys/object/turn/clear