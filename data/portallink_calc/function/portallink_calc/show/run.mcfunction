function helper:data_library/lib/get_position
scoreboard players operation @s mwt.ptl.posx = @s mwt.get.posx
scoreboard players operation @s mwt.ptl.posz = @s mwt.get.posz
execute if predicate helper:data_library/dimension/overworld run function portallink_calc:portallink_calc/show/overworld
execute if predicate helper:data_library/dimension/nether run function portallink_calc:portallink_calc/show/nether
execute if predicate portallink_calc:portallink_calc/deactive run function portallink_calc:portallink_calc/event/deactive