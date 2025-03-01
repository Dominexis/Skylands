# Tick plots with a non-off state
execute if score #plot.demo.state sl.value matches 1.. positioned 1792 0 256 run function sl:generated/plot/demo/main
execute if score #plot.oldschool_skyisland.state sl.value matches 1.. positioned 2816 0 -256 run function sl:generated/plot/oldschool_skyisland/main