execute if score #Data BossAtackID matches -2 run scoreboard players set #Data BossAtackID -1

execute if score #Data BossAtackID matches 6 run effect give @e[limit=1, type=husk, name="SANDMAN"] levitation 1 10
execute if score #Data BossAtackID matches 6 run scoreboard players set #Data BossAtackID -2

execute if score #Data BossAtackID matches 5 run execute at @a[nbt={Inventory:[{id:"minecraft:potato", tag:{display:{Name:'{"text":"Primed TNT"}'}}}]}] run summon creeper ~ ~ ~ {CustomName:"Sandman's bomb", Fuse:0, ExplosionRadius:3}
execute if score #Data BossAtackID matches 5 run clear @a[nbt={Inventory:[{id:"minecraft:potato", tag:{display:{Name:'{"text":"Primed TNT"}'}}}]}] tnt{display:{Name:'{"text":"Primed TNT"}'}}
execute if score #Data BossAtackID matches 5 run execute at @e[type=item, nbt={Item:{tag:{display:{Name:'{"text":"Primed TNT"}'}}}}] run summon creeper ~ ~ ~ {CustomName:"Sandman's bomb", Fuse:0, ExplosionRadius:2}
execute if score #Data BossAtackID matches 5 run scoreboard players set #Data BossAtackID 6

execute if score #Data BossAtackID matches 4 run scoreboard players set #Data BossAtackID 5

execute if score #Data BossAtackID matches 3 as @p[distance=..30] run function sleepchecker:give_bomb
execute if score #Data BossAtackID matches 3 run execute at @p[distance=..30] run particle flame ~ ~ ~ 1 1 1 .0001 200
execute if score #Data BossAtackID matches 3 run title @p[distance=..30] title "Bomb in pockets!"
execute if score #Data BossAtackID matches 3 run title @p[distance=..30] subtitle "throw it away or you will blow up"
execute if score #Data BossAtackID matches 3 run scoreboard players set #Data BossAtackID 4

execute if score #Data BossAtackID matches 2 run particle damage_indicator ~ ~1 ~ .125 .25 0 1 20
execute if score #Data BossHealth matches ..195 run effect give @s instant_damage
execute if score #Data BossAtackID matches 2 run scoreboard players set #Data BossAtackID 3

execute if score #Data BossAtackID matches 1 run function sleepchecker:summonminion
execute if score #Data BossAtackID matches 1 run function sleepchecker:summonminion
execute if score #Data BossAtackID matches 1 run scoreboard players set #Data BossAtackID 2

execute if score #Data BossAtackID matches 0 run execute at @a[distance=..10] run summon lightning_bolt ~ ~ ~
execute if score #Data BossAtackID matches 0 run effect give @a[distance=..10] blindness 3
execute if score #Data BossAtackID matches 0 run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 200
execute if score #Data BossAtackID matches 0 run scoreboard players set #Data BossAtackID 1

execute if score #Data BossAtackID matches -1 run particle minecraft:soul_fire_flame ~ ~.1 ~ 3 .01 3 .02 400
execute if score #Data BossAtackID matches -1 run scoreboard players set #Data BossAtackID 0
