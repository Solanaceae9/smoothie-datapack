#place
execute as @e[type=item_frame, tag=ice_machine] at @s run function icing:ice_machine/place

#//Break

# Armor Stand
execute as @e[tag=ice_machine] at @s run function icing:ice_machine/system

execute as @e[type=armor_stand,tag=ice_machine] at @s unless block ~ ~ ~ minecraft:dropper run function icing:ice_machine/remove

#Do some stuff that keeps the gui the same
execute as @e[type=armor_stand,tag=ice_machine] at @s run function icing:ice_machine/gui

#Power Down
execute as @e[tag=ice_machine] if score @s IceFuel matches 1.. run scoreboard players remove @s IceFuel 1
#scoreboard players remove @e[tag=ice_machine] IceFuel 1