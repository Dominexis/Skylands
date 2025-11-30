
# effect
execute if entity @s[tag=pc.sys.rc,advancements={pc:sys/rc=false}] run tag @s remove pc.sys.rc
advancement revoke @s only pc:sys/rc