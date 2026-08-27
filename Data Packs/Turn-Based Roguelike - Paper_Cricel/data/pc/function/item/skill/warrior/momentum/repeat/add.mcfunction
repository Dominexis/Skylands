
$execute store result score #repeat pc.main run data get entity @s data.hotbar.$(hotbar).combat.repeat
$execute store result entity @s data.hotbar.$(hotbar).combat.repeat int 1 run scoreboard players operation #repeat pc.main += #epcost pc.main