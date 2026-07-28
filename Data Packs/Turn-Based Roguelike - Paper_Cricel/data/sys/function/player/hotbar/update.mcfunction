## (macro) {hotbar:"head"}
## (exe) entity player

data modify storage pc:temp update.slots set value {head:{slot:"armor.head",hotbar:"head"},chest:{slot:"armor.chest",hotbar:"chest"},legs:{slot:"armor.legs",hotbar:"legs"},feet:{slot:"armor.feet",hotbar:"feet"},move:{slot:"container.0",hotbar:"move"},repair:{slot:"container.1",hotbar:"repair"},"skill[0]":{slot:"container.2",hotbar:"skill[0]"},"skill[1]":{slot:"container.3",hotbar:"skill[1]"},"skill[2]":{slot:"container.4",hotbar:"skill[2]"},"skill[3]":{slot:"container.5",hotbar:"skill[3]"},"skill[4]":{slot:"container.6",hotbar:"skill[4]"}}

tag @s add pc.hotbar.self
scoreboard players operation #self pc.main = @s sl.id
$execute as @a[predicate=sys:player/ingame,predicate=sl:player,predicate=sys:owner/player,limit=1] at @s run function sys:player/hotbar/update/2 with storage pc:temp update.slots.'$(hotbar)'
tag @s remove pc.hotbar.self

data remove storage pc:temp update