#For the last item in the storage, put it in slot 0 (different from slot 0b)
data modify storage ice return[-1].Slot set value 0

#Summon a new item at the location of the machine, then modify its data to match the current targeted item in the storage
summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1b},Tags:["new_item"]}
execute as @e[tag=new_item,limit=64,distance=..3] run data modify entity @s Item set from storage ice return[0]

#Delete the item we've already given back from the storage
data remove storage ice return[-1]

#Copy the current modified storage to the machine
data modify block ~ ~ ~ Items set from storage ice return

#Reduce the value by 1. If the score is still >0 (meaning there are still items in the storage), run the return function again
scoreboard players remove #return gui 1
execute if score #return gui matches 1.. run function icing:ice_machine/return

#Finally, after everything is gone, replace the fuel and gui item
data modify block ~ ~ ~ Items set from storage ice fuel