# As : merchant
# Args :
#   - item_label (macro)
#   - text_array (macro)
#   - cost (macro)
##

$tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,tag=synb.tmp.listener] [{"text":"▶ ","color":"gray"},$(item_label), \
    {"text":" [?]","color":"#666666","hover_event":{"action":"show_text","value":$(text_array)}},{"text":" — ","color":"gray"},{"text":"$(cost)c","color":"white","bold":true}]