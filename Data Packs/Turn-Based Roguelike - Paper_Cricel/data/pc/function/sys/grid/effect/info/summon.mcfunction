
# Display
kill @n[type=text_display,tag=pc.grid.effect_info,predicate=pc:in/plot,distance=..100]
summon text_display ~ ~4 ~ {Tags:[pc.fx,pc.grid.effect_info],transformation: {left_rotation: [-0.26f, 0.0f, 0.0f, 0.97f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0f, -3.75f, 2.0f]},alignment:"left",billboard:"vertical",background:-548577438,line_width:220}

function pc:sys/grid/effect/info/refresh