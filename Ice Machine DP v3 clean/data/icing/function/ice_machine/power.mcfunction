#This consumes one fuel and sets power to full

#Decrease the fuel count in the machine by one
execute if score @s IceFuel matches 0 run item modify block ~ ~ ~ container.7 icing:count_minus

#Then reset the power count
execute if score @s IceFuel matches 0 run scoreboard players add @s IceFuel 300