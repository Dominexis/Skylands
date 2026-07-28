
execute if score $combat.tutorial.page pc.game matches 1 as @a[tag=pc.player.tutorial,limit=1] at @s run function sys:player/title/tutorial/page/1
execute if score $combat.tutorial.page pc.game matches 2 as @a[tag=pc.player.tutorial,limit=1] at @s run function sys:player/title/tutorial/page/2
execute if score $combat.tutorial.page pc.game matches 3 as @a[tag=pc.player.tutorial,limit=1] at @s run function sys:player/title/tutorial/page/3
execute if score $combat.tutorial.page pc.game matches 4 as @a[tag=pc.player.tutorial,limit=1] at @s run function sys:player/title/tutorial/page/4

schedule function sys:player/title/tutorial/main 1s