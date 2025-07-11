#Summon an armor stand where the tagged item frame was placed
execute at @s align xyz run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b, Tags:["ice_machine"], equipment:{head:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"icing:ice_machine"}}}}

#Place the dropper with the graphical user interface inside. These are the four blocks it can be placed inside of
execute at @s if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:dropper{components: {}, CustomName: "Ice Machine", Items: [{components: {"minecraft:item_model": "icing:ice_crystal_0","minecraft:tooltip_display":{hide_tooltip:1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}]}
execute at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:dropper{components: {}, CustomName: "Ice Machine", Items: [{components: {"minecraft:item_model": "icing:ice_crystal_0","minecraft:tooltip_display":{hide_tooltip:1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}]}
execute at @s if block ~ ~ ~ minecraft:short_grass run setblock ~ ~ ~ minecraft:dropper{components: {}, CustomName: "Ice Machine", Items: [{components: {"minecraft:item_model": "icing:ice_crystal_0","minecraft:tooltip_display":{hide_tooltip:1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}]}
execute at @s if block ~ ~ ~ minecraft:short_dry_grass run setblock ~ ~ ~ minecraft:dropper{components: {}, CustomName: "Ice Machine", Items: [{components: {"minecraft:item_model": "icing:ice_crystal_0","minecraft:tooltip_display":{hide_tooltip:1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}]}

# Create Scoreboard for this machine that counts the amount of poewr left inside it
execute at @e[tag=ice_machine] at @s run scoreboard players add @e[tag=ice_machine] IceFuel 0

#Kill yourself, or something
kill @s