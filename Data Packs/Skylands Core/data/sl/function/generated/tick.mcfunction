# Tick plots with a non-off state
execute if score #plot.demo.state sl.value matches 1.. positioned 1792 0 256 run function sl:generated/plot/demo/main
execute if score #plot.oldschool_skyisland.state sl.value matches 1.. positioned 2816 0 -256 run function sl:generated/plot/oldschool_skyisland/main
execute if score #plot.feelsbatman.state sl.value matches 1.. positioned -256 0 -3840 run function sl:generated/plot/feelsbatman/main
execute if score #plot.gardensofbabble.state sl.value matches 1.. positioned 2816 0 3840 run function sl:generated/plot/gardensofbabble/main
execute if score #plot.itspungpond98.state sl.value matches 1.. positioned 768 0 -5376 run function sl:generated/plot/itspungpond98/main
execute if score #plot.did.state sl.value matches 1.. positioned -2816 0 -3840 run function sl:generated/plot/did/main
execute if score #plot.piecewiselantern.state sl.value matches 1.. positioned -1280 0 -1280 run function sl:generated/plot/piecewiselantern/main