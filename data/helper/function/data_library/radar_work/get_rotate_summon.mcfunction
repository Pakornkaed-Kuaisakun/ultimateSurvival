execute store result score @s mwt.player.rot run data get entity @s Rotation[0] 1

execute at @s positioned ~ ~ ~ run summon area_effect_cloud ~ ~ ~ {Tags: ['mwt.radar.ae','global.ignore','global.ignore.pos'], Age: 0, Duration: 1}