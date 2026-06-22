# Set death coordinates
execute as @a[scores={deathcoords_d=1..}] store result score @s deathcoords_xd run data get entity @s Pos[0]
execute as @a[scores={deathcoords_d=1..}] store result score @s deathcoords_yd run data get entity @s Pos[1]
execute as @a[scores={deathcoords_d=1..}] store result score @s deathcoords_zd run data get entity @s Pos[2]
execute as @a[scores={deathcoords_d=1..}] at @s if dimension minecraft:overworld run scoreboard players set @s deathcoords_dimension 0
execute as @a[scores={deathcoords_d=1..}] at @s if dimension minecraft:the_nether run scoreboard players set @s deathcoords_dimension -1
execute as @a[scores={deathcoords_d=1..}] at @s if dimension minecraft:the_end run scoreboard players set @s deathcoords_dimension 1

execute as @a[scores={deathcoords_d=1..}] if score @s deathcoords_dimension matches 0 run tellraw @s [{"text":"You"},{"text":" died at "},{"text":"X: "},{"score":{"name":"@s","objective":"deathcoords_xd"},"color":"#FFAA00"},{"text":" Y: "},{"score":{"name":"@s","objective":"deathcoords_yd"},"color":"#FFAA00"},{"text":" Z: "},{"score":{"name":"@s","objective":"deathcoords_zd"},"color":"#FFAA00"}, " ", {"text":"[Overworld]", "color":"green"}]
execute as @a[scores={deathcoords_d=1..}] if score @s deathcoords_dimension matches -1 run tellraw @s [{"text":"You"},{"text":" died at "},{"text":"X: "},{"score":{"name":"@s","objective":"deathcoords_xd"},"color":"#FFAA00"},{"text":" Y: "},{"score":{"name":"@s","objective":"deathcoords_yd"},"color":"#FFAA00"},{"text":" Z: "},{"score":{"name":"@s","objective":"deathcoords_zd"},"color":"#FFAA00"}, " ", {"text":"[The Nether]", "color":"red"}]
execute as @a[scores={deathcoords_d=1..}] if score @s deathcoords_dimension matches 1 run tellraw @s [{"text":"You"},{"text":" died at "},{"text":"X: "},{"score":{"name":"@s","objective":"deathcoords_xd"},"color":"#FFAA00"},{"text":" Y: "},{"score":{"name":"@s","objective":"deathcoords_yd"},"color":"#FFAA00"},{"text":" Z: "},{"score":{"name":"@s","objective":"deathcoords_zd"},"color":"#FFAA00"}, " ", {"text":"[The End]", "color":"light_purple"}]

# Reset death score so it can trigger again on the next death
scoreboard players reset @a[scores={deathcoords_d=1..}] deathcoords_d