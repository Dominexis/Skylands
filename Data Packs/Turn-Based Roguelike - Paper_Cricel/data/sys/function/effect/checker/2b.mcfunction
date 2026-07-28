
# if (already had infocheck) :
execute as 20060423-0-0-1-0 at @s run return run function sys:effect/checker/update/use

# else :
execute as @a[predicate=sys:entity/inturn,limit=1] at @s anchored eyes positioned ^ ^ ^ run function sys:effect/checker/summon