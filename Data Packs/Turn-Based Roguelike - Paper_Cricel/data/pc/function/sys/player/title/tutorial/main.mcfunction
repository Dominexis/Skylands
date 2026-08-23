
execute if score $combat.tutorial.page pc.game matches 1 as @a[tag=pc.player.tutorial,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/player/title/tutorial/page/1
execute if score $combat.tutorial.page pc.game matches 2 as @a[tag=pc.player.tutorial,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/player/title/tutorial/page/2
execute if score $combat.tutorial.page pc.game matches 3 as @a[tag=pc.player.tutorial,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/player/title/tutorial/page/3
execute if score $combat.tutorial.page pc.game matches 4 as @a[tag=pc.player.tutorial,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/player/title/tutorial/page/4

schedule function pc:sys/player/title/tutorial/main 1s