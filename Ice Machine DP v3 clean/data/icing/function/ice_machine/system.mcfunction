#If there is fuel in the machine, run the power function
execute as @e[tag=ice_machine] at @s if block ~ ~ ~ dropper{Items:[{id:'minecraft:redstone',Slot:7b}]} run function icing:ice_machine/power

#Place the appropriate ice crystal overlay in the machine, but only if there isn't an item where the crystal should be, so it doesn't delete an item.
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 251..300 run execute if items block ~ ~ ~ container.4 minecraft:barrier run item replace block ~ ~ ~ container.4 with barrier[item_model="icing:ice_crystal_6",tooltip_display={hide_tooltip:1b},custom_data={gui_item: 1}]
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 201..250 run execute if items block ~ ~ ~ container.4 minecraft:barrier run item replace block ~ ~ ~ container.4 with barrier[item_model="icing:ice_crystal_5",tooltip_display={hide_tooltip:1b},custom_data={gui_item: 1}]
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 151..200 run execute if items block ~ ~ ~ container.4 minecraft:barrier run item replace block ~ ~ ~ container.4 with barrier[item_model="icing:ice_crystal_4",tooltip_display={hide_tooltip:1b},custom_data={gui_item: 1}]
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 101..150 run execute if items block ~ ~ ~ container.4 minecraft:barrier run item replace block ~ ~ ~ container.4 with barrier[item_model="icing:ice_crystal_3",tooltip_display={hide_tooltip:1b},custom_data={gui_item: 1}]
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 51..100 run execute if items block ~ ~ ~ container.4 minecraft:barrier run item replace block ~ ~ ~ container.4 with barrier[item_model="icing:ice_crystal_2",tooltip_display={hide_tooltip:1b},custom_data={gui_item: 1}]
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 1..50 run execute if items block ~ ~ ~ container.4 minecraft:barrier run item replace block ~ ~ ~ container.4 with barrier[item_model="icing:ice_crystal_1",tooltip_display={hide_tooltip:1b},custom_data={gui_item: 1}]
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 0 run execute if items block ~ ~ ~ container.4 minecraft:barrier run item replace block ~ ~ ~ container.4 with barrier[item_model="icing:ice_crystal_0",tooltip_display={hide_tooltip:1b},custom_data={gui_item: 1}]

#If there is power in the machine, freeze the water above it
execute as @e[tag=ice_machine] at @s if score @s IceFuel matches 1.. run function icing:ice_machine/freeze