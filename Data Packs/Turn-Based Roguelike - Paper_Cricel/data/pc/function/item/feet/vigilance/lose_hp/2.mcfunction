# exe : object

# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/set {id:"entity @s data.in_combat.feet.vigilance.no_cost"}
function pc:item/feet/vigilance/new_turn/2

scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:"weakness"}
function pc:passive/effect/apply {effect:"regeneration"}

# fx
function pc:fx/text/use {text:[{text:"Vigilance",color:"aqua"}]}
playsound minecraft:entity.ghast.hurt master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.8
playsound minecraft:entity.firework_rocket.blast master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player]