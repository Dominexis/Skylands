
# if (effects and looking at) :
execute if entity @s[tag=pc.grid.looking] if data storage pc:temp infocheck.effects[0] run return run function sys:effect/checker/2b

# else :
kill 20060423-0-0-1-0