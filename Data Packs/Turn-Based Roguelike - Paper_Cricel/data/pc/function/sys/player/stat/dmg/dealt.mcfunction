
function pc:sys/player/owner/find
scoreboard players operation @a[predicate=sl:player,tag=pc.sys.passive,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.stat.dmg_dealt += #damage pc.main
function pc:sys/player/owner/clear