$execute store result score #danger_increase sanct.numbers run data get storage sanct:storage root.danger_increase $(power_scale)

$execute store result score #count sanct.numbers store result score #var sanct.numbers run data get storage sanct:storage root.summon.$(fetch)
$execute store result storage sanct:storage root.summon.$(return) run scoreboard players $(operation)
$tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{text:"",color:red,italic:true},{text:"DANGER INCREASED:\n",color:dark_red,bold:true,italic:false},$(message)]
$$(command)