## usage : use item replace to modify
## (macro) {slot:"entity @s container.0"}

$item replace entity 20060423-0-0-0-1 contents from $(slot)
execute as 20060423-0-0-0-1 run function pc:sys/item/update/2
$item replace $(slot) from entity 20060423-0-0-0-1 contents