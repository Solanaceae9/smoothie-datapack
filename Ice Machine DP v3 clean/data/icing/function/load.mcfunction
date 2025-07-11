#Create a scoreboard objective that will later keep track of how many items are left to return to the player from a list of items that shouldn't be in the ice machine
scoreboard objectives add gui dummy
scoreboard objectives add IceFuel dummy

#Create a storage container with the gui covering in it
data remove storage ice fuel
data modify storage ice fuel insert 0 value {components: {"minecraft:item_model": "icing:menu", "minecraft:tooltip_display":{hide_tooltip:1b}, "minecraft:custom_data": {gui_item: 1}}, count: 1, Slot: 4b, id: "minecraft:barrier"}

execute as @e[tag=ice_machine] at @s run function icing:ice_machine/system