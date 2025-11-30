
# effect
summon minecraft:text_display ~ ~ ~ {Tags:["pc.wireless_repair.wave"],alignment:"center",background:0,brightness:{block:15,sky:15},default_background:0b,line_width:200,see_through:0b,shadow:0b,text:{text:"◯",color:"#7C9DEF",type:"text"},transformation:{left_rotation:[-0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[5.0000014f,4.9999967f,4.9999957f],translation:[-0.1f,0.0f,0.59f]}}

# fx
playsound minecraft:entity.ravager.stunned master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5
playsound minecraft:entity.frog.hurt master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0