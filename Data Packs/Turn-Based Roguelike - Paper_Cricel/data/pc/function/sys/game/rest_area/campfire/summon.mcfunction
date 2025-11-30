
# effect
summon text_display ~ ~1.25 ~ {Tags:[pc.rest_area,pc.rest_area.campfire],alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 1b, teleport_duration: 1, text: "◆    Rest    ◆", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
setblock ~ ~1 ~ air
setblock ~ ~1 ~ purple_shulker_box[facing=up]{CustomName:[{text:"Campfire Base"}]}