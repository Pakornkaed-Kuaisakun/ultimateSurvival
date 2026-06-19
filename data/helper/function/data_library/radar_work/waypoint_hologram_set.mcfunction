execute unless data entity @s CustomName run setblock ~ 319 ~ minecraft:oak_sign{Text1:"[\"\",{\"nbt\":\"name\",\"storage\": \"mwt:name.radar\",\"color\":\"aqua\",\"interpret\": true},{\"text\": \" \"},[{\"score\": {\"name\": \"@p[tag=mwt.receive.radar,limit=1]\",\"objective\": \"mwt.radar.posx\"},\"color\":\"gold\"},{\"text\":\", \"},{\"score\": {\"name\": \"@p[tag=mwt.receive.radar,limit=1]\",\"objective\": \"mwt.radar.posz\"}}]]"}
data modify entity @s CustomName set from block ~ 319 ~ Text1
data modify entity @s CustomNameVisible set value 1b
setblock ~ 319 ~ air
execute if score @p[tag=mwt.receive.radar,limit=1] mwt.swap.sec matches 14.. run kill @s
