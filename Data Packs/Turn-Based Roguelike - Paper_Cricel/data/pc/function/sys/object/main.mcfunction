
# effect
execute on passengers if entity @s[tag=pc.object.same_rot] run rotate @s ~ 0
execute if data entity @s data.schedule[0] run function pc:sys/object/schedule/main