
execute as @e[tag=pc.lobby.author,type=minecraft:armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run tp @s ~ ~0.5 ~
data modify entity @e[tag=pc.lobby.author,type=minecraft:armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] Motion[1] set value 0.25d

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s {nbt:"sys.lobby.author.title",storage:"pc:lang",interpret:1b}
tellraw @s {nbt:"sys.lobby.author.intro",storage:"pc:lang",interpret:1b}
tellraw @s ""
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{nbt:"sys.lobby.author.social",storage:"pc:lang",interpret:1b,type:"nbt"}]
tellraw @s {nbt:"sys.lobby.author.discord",storage:"pc:lang",interpret:1b}
tellraw @s {nbt:"sys.lobby.author.twitter",storage:"pc:lang",interpret:1b}
tellraw @s ""

playsound minecraft:block.note_block.chime master @s ~ ~1024 ~ 0 2 0.75
playsound minecraft:entity.puffer_fish.death master @s ~ ~1024 ~ 0 0 0.75
playsound minecraft:entity.item.pickup master @s ~ ~1024 ~ 0 2 0.75