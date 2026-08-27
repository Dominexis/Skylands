
$execute positioned ~1.5 ~100 ~1.5 as $(sync) facing entity @e[predicate=pc:sys/entity/$(target),sort=$(sort),distance=..100,limit=1,type=!minecraft:giant] feet rotated ~$(rotate) 0 run function pc:sys/entity/rotate/proofread$(mode)
$execute rotated as $(sync) positioned $(pos) run function pc:sys/grid/range/type/use