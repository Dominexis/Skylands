
tag @s remove pc.player.tutorial
item replace entity @s armor.head with air
schedule clear pc:sys/player/title/tutorial/main

schedule function pc:sys/combat/round 2s

# fx
playsound minecraft:block.amethyst_block.resonate master @s ~ ~1024 ~ 0 1.25 1