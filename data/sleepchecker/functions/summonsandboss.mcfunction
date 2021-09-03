summon lightning_bolt ~ ~ ~
particle minecraft:soul_fire_flame ~ ~ ~ .125 .25 .125 .25 1000
scoreboard players set #Data BossAtackID -1
scoreboard players set #Data BossAtackTime 0
summon husk ~ ~ ~ {CustomName:"\"SANDMAN\"", AbsorptionAmount:100, HandItems:[{Count:10, id:sand}, {Count:2, id:diamond}], ArmorItems:[{Count:1, id:leather_boots, tag:{Enchantments:[{id:"minecraft:feather_falling", lvl:255}, {id:"minecraft:unbreaking", lvl:255}, {id:"minecraft:depth_strider", lvl:255}, {id:"minecraft:soul_speed", lvl:10}]}}, {}, {}, {Count:1,id:wither_skeleton_skull}], HandDropChances:[0.0f,1.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
effect give @e[limit=1, type=husk, name="SANDMAN"] fire_resistance 10000
effect give @e[limit=1, type=husk, name="SANDMAN"] speed 10000
effect give @e[limit=1, type=husk, name="SANDMAN"] strength 10000