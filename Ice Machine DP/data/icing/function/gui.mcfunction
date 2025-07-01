#Remove all menu items from player inventories
clear @p barrier[minecraft:custom_data={gui_item:1}]

#Copy items of machine to a "return" storage
data modify storage ice return set from block ~ ~ ~ Items

#Remove whatever was previously stored in the fuel list from other machines
data remove storage ice fuel

#put the gui covering back into the storage
data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:menu", "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}

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