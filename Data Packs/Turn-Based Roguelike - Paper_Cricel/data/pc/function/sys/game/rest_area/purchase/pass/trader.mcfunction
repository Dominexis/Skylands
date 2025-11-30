
# effect
$execute positioned $(pos) as @n[type=villager,tag=pc.rest_area.trader,dx=0,dy=0,dz=0] if data entity @s data.item[{slot:$(slot)}] unless items block ~ ~ ~ container.$(slot) *[custom_data~{pc:{sys.shop:1b}}] run data modify entity @s data.item[{slot:$(slot)}].is_sell set value false