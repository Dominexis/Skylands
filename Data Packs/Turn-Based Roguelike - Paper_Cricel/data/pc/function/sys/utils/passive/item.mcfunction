## (storage) pc:temp passive {passive:'after_repair',hotbar:'skill[2]'}
## (exe) entity/player

$data modify storage pc:temp passive.current set from entity @s data.hotbar.$(hotbar)
$data modify storage pc:temp passive.current.passive set value $(passive)

function pc:sys/utils/passive/player/interpret with storage pc:temp passive.current

data remove storage pc:temp passive