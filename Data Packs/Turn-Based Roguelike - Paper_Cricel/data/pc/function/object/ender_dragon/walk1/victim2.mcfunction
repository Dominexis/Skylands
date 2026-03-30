
# motion
execute store result score #temp pc.main run random value 1..2
execute if score #temp pc.main matches 1 rotated ~-90 -30 run function pc:sys/player/motion {s:0.5}
execute if score #temp pc.main matches 2 rotated ~90 -30 run function pc:sys/player/motion {s:0.5}

# fx
#title @s times 0 0 10
#title @s title {text:"A",font:"sl:fade"}
playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 1 1.25
playsound minecraft:entity.puffer_fish.sting master @s ~ ~ ~ 1 0