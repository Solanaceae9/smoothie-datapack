

# Armor Stand
execute at @s align xyz run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:["ice_machine"], equipment:{head:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"icing:ice_machine"}}}}
#execute at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invisible:1b, Tags:["ice_machine"], equipment:{head:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"icing:ice_machine"}}}}

execute at @s if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:dropper{components: {}, CustomName: "Ice Machine", Items: [{components: {"minecraft:item_model": "icing:menu", "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}]}
execute at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:dropper{components: {}, CustomName: "Ice Machine", Items: [{components: {"minecraft:item_model": "icing:menu", "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}]}
execute at @s if block ~ ~ ~ minecraft:short_grass run setblock ~ ~ ~ minecraft:dropper{components: {}, CustomName: "Ice Machine", Items: [{components: {"minecraft:item_model": "icing:menu", "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}]}
execute at @s if block ~ ~ ~ minecraft:short_dry_grass run setblock ~ ~ ~ minecraft:dropper{components: {}, CustomName: "Ice Machine", Items: [{components: {"minecraft:item_model": "icing:menu", "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}]}

# Item Display 
# data modifier that kinda fixes item display? brightness:{block:0,sky:14}
#execute at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["ice_machine"],item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"icing:ice_machine"}},transformation:[1.001f,0f,0f,0f,0f,1.001f,0f,0f,0f,0f,1.001f,0f,0f,0f,0f,1f]}

kill @s