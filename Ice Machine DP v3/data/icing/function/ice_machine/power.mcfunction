#decrease the fuel count by one
execute if score @s IceFuel matches 0 run item modify block ~ ~ ~ container.7 icing:test

#then reset the power count
execute if score @s IceFuel matches 0 run scoreboard players add @s IceFuel 300