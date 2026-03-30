
# reset
advancement revoke @s only pc:sys/block/decorated_pot

# return item
execute anchored eyes positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 run function pc:sys/player/decorated_pot/2

# fx
tellraw @s ["",{color:"gray",text:"* A huge thank you to 虛樗SY and 小雪虎 for finding this bug! :D"}]
tellraw @s [{translate:"block.minecraft.decorated_pot"}," is slain by ",{selector:"@s"}]
playsound pc:decorated_pot master @s ~ ~ ~