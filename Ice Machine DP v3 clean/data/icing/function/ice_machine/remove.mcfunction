#Kill yourself...again?
kill @s

clear @p barrier[minecraft:custom_data={gui_item:1}]
kill @e[type=item,distance=..3,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrier"}}]

#Summon the dropped ice machine item
execute if entity @p[gamemode=survival] run summon item ~ ~0.5 ~ {Invulnerable:1b,Tags:["ice_machine"],Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_name":"Ice Machine","minecraft:item_model":"icing:ice_machine","minecraft:entity_data":{id:"minecraft:item_frame",Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"icing:ice_machine"}},Fixed:1b,Invisible:1b,Invulnerable:1b,Tags:["ice_machine"]}}}}

#Kill the dropper item
execute if entity @p[gamemode=survival] run kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper"}}]
