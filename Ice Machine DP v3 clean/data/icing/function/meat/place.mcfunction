

# Armor Stand
#execute at @s align xyz run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:["ice_machine"], equipment:{head:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"icing:ice_machine"}}}}
#execute at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invisible:1b, Tags:["ice_machine"], equipment:{head:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"icing:ice_machine"}}}}

execute at @s run setblock ~ ~ ~ minecraft:spawner
# Item Display 
# data modifier that kinda fixes item display? brightness:{block:0,sky:14}
execute at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["meat"],item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"icing:meat"}},transformation:[1.001f,0f,0f,0f,0f,1.001f,0f,0f,0f,0f,1.001f,0f,0f,0f,0f,1f]}

kill @s