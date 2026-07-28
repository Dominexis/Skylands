
$execute positioned ~1.5 ~100 ~1.5 as $(sync) facing entity @e[predicate=sys:entity/$(target),sort=$(sort),distance=..100,limit=1] feet rotated ~$(rotate) 0 run function sys:entity/rotate/proofread$(mode)
$execute rotated as $(sync) positioned $(pos) run function sys:grid/range/type/use