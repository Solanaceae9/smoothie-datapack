#Remove all menu items from player inventories
clear @p barrier[minecraft:custom_data={gui_item:1}]

#Delete all menu items that are on the floor
kill @e[type=item,distance=..3,limit=7,sort=nearest,nbt={Item:{id:"minecraft:barrier"}}]

#Copy items of machine to a "return" storage
data modify storage ice return set from block ~ ~ ~ Items

#Remove whatever was previously stored in the fuel list from other machines
data remove storage ice fuel

#put the gui covering back into the storage
#data modify storage ice fuel insert 0 from block ~ ~ ~ Items[{Slot:4b}]
#lokey this part is super redundant, but not because it's the same command with diff numbers, but because it's very similar to system.mcfuntion. It can likely be fixed with more functions or smth
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 251..300 run data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:ice_crystal_6", "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 201..250 run data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:ice_crystal_5", "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 151..200 run data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:ice_crystal_4", "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 101..150 run data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:ice_crystal_3", "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 51..100 run data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:ice_crystal_2", "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 1..50 run data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:ice_crystal_1", "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 0 run data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:ice_crystal_0", "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}


#Copy fuel slot of machine to a seperate "fuel" storage. Instead of just copying the item though, you have to insert it into an empty list of items so that you can put it back in the machine later
data modify storage ice fuel insert 0 from block ~ ~ ~ Items[{Slot:7b}]

#Not sure why, but placing the gui item and the fuel and gui item back right here fixes the stone issue and the gui disappearing
data modify block ~ ~ ~ Items set from storage ice fuel

#Remove items that aren't going to be given back to player. Timestamp: 18:31 in https://www.youtube.com/watch?v=z4tvTrqhBZE. Commands for everything had to be modified because of version update
data remove storage ice return[{components:{"minecraft:custom_data":{gui_item: 1}}}]

#Remove the item in slot 7, which should typically be the fuel for the ice machine. Don't give this back to the player
data remove storage ice return[{Slot:7b}]

#Only run the return function if there are items to return in the storage
execute store result score #return gui run data get storage ice return
execute if score #return gui matches 1.. run function icing:ice_machine/return