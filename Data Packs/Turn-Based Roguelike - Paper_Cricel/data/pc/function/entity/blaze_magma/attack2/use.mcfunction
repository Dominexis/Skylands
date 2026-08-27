
execute store result score #effect.value pc.main run data get entity @s data.effects[{id:"flaming_touch"}].value

execute anchored eyes positioned ^ ^ ^ run function pc:entity/blaze_magma/attack2/fx/use