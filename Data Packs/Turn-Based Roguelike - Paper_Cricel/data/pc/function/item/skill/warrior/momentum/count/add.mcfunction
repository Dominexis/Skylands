
$execute store result score #count pc.main run data get entity @s data.hotbar.$(hotbar).combat.count
scoreboard players operation #count pc.main += #epcost pc.main
execute if score #count pc.main matches 5.. run function pc:item/skill/warrior/momentum/count/loop
$execute store result entity @s data.hotbar.$(hotbar).combat.count int 1 run scoreboard players get #count pc.main