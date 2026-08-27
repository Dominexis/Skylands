$data modify storage synb.d:tmp args.shape set from storage synb.d:values item.firework.exp_shape[$(shape_i)]
$data modify storage synb.d:tmp args.colors set from storage synb.d:values item.firework.exp_colors[$(colors_i)]
$data modify storage synb.d:tmp args.fade_colors set from storage synb.d:values item.firework.exp_colors[$(fade_colors_i)]
$data modify storage synb.d:tmp args.twinkle set from storage synb.d:values item.firework.bool[$(twinkle_i)]
$data modify storage synb.d:tmp args.trail set from storage synb.d:values item.firework.bool[$(trail_i)]
function synb:all_items/firework/_spawn_explosion2 with storage synb.d:tmp args