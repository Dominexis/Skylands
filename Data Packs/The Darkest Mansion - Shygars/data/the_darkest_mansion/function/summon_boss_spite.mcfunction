$summon vex $(x) $(y) $(z) {bound_pos:[I;$(x),$(y),$(z)],Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Tags:["Spite"],CustomName:"Spite",active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}
$summon interaction $(x) $(y) $(z) {height:2,Tags:["SpiteHitbox"]}
$execute positioned $(x) $(y) $(z) run function animated_java:spite/summon {args:{animation:"idle01",start_animation:true}}
$execute positioned $(x) $(y) $(z) as @e[tag=Spite,distance=..0.1] run ride @e[tag=aj.spite.root,distance=..0.1,limit=1] mount @s
execute as @e[tag=aj.spite.root] run function animated_java:spite/as_locator {name:"hitbox",command:"ride @e[tag=SpiteHitbox,limit=1] mount @s"}
scoreboard players set @e[tag=SpiteHitbox] SpiteHealth 300
scoreboard players set @e[tag=aj.spite.root] TDMHurtTime 0
bossbar set the_darkest_mansion:spite players @a