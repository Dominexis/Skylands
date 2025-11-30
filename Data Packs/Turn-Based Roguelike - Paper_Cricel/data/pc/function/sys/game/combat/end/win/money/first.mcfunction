
# effect
$execute store result storage pc:temp money.value int 1 run random value $(money)
data modify storage pc:temp money.value_extra set value 0
data modify storage pc:temp money.display set value {nbt:"money.value",storage:"pc:temp",color:"gold",bold:1b}