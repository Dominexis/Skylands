
# effect
summon text_display ~ ~2 ~ {Tags:[pc.rest_area,pc.start_button,pc.start_button.title],alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 1b,Rotation:[-90f,0f],transformation: {left_rotation: [0.0f, 0f, 0.0f, 1f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 1f, 1f], translation: [0.0f, 0.0f, 0.0f]}}
summon item_display ~ ~1.5 ~ {Tags:[pc.rest_area,pc.start_button,pc.start_button.icon],item: {count: 1, id: "minecraft:paper"}, billboard: "vertical", transformation: {left_rotation: [0.0f, 0f, 0.0f, 1f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]}}
summon interaction ~ ~1 ~ {Tags:[pc.rest_area,pc.start_button,pc.sys.button,pc.start_button.button],data:{command:'function pc:sys/game/rest_area/start_button/act/use'}}
summon text_display ~ ~0.6875 ~ {Tags:[pc.rest_area,pc.start_button,pc.start_button.tip],alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {text:" ▶  Click to Start  ◀ ",color:"gray"}}

data remove storage pc:game combat
$function pc:game/$(map_id)/$(level)/setup
schedule function pc:sys/game/rest_area/start_button/3 1t

# fx
playsound minecraft:entity.illusioner.mirror_move master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
playsound minecraft:ui.loom.select_pattern master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.5