
execute if score #dbmax pc.main matches -1 run return run function sys:entity/repair/fail/infinte
execute if score #db pc.main >= #dbmax pc.main run return run function sys:entity/repair/fail/full
execute if data storage pc:temp repair.entity.repair run return run function sys:entity/repair/fail/repairing
return 1