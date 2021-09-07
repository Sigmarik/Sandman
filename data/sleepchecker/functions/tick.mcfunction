scoreboard players set #Data NumPlayers 0
scoreboard players set #Data CurrentSleeping 0
scoreboard players set #Data BossCounter 0

execute at @e[type=husk, name="SANDMAN"] run scoreboard players add #Data BossCounter 1

execute as @a run scoreboard players add #Data NumPlayers 1
execute as @a if score @s SleepingTime matches 1.. run scoreboard players add #Data CurrentSleeping 1
scoreboard players operation #Data CurrentSleeping *= #Data OneH
scoreboard players operation #Data CurrentSleeping /= #Data NumPlayers

#execute as @a run execute store result score @s TntAmount run data get entity @s Inventory.

execute as @a store result score @s SleepingTime run data get entity @s SleepTimer
execute as @a if score @s SleepingTime matches 1 run me wants to sleep!
execute as @a if score @s SleepingTime matches 1 run execute as @p if score @s SleepingTime matches 0 run me still awake.
execute if score #Data CurrentSleeping >= #Data SleepPercentage run function sleepchecker:blurryeyes
execute if score #Data CurrentSleeping < #Data SleepPercentage run scoreboard players set #Data BlurryCalls 0

execute if score #Data SandmanDisabled matches 0 run execute at @e[type=husk, name="victim of sand"] run function sleepchecker:summonsandboss
execute if score #Data SandmanDisabled matches 0 run kill @e[type=husk, name="victim of sand"]
execute store result score #Data BossHealth run data get entity @e[limit=1, type=husk, name="SANDMAN"] Health
execute at @e[type=husk, name="SANDMAN"] if score #Data BossAtackTime matches 50.. run function sleepchecker:bossatack
#execute if score #Data BossAtackTime matches 50.. run say Atacked
execute if score #Data BossAtackTime matches 50.. run scoreboard players set #Data BossAtackTime 0
execute if score #Data BossHealth matches ..99 run scoreboard players set #Data SandmanDisabled 0
execute if score #Data BossCounter matches 0 run bossbar remove sandman
execute if score #Data BossCounter matches 1.. run function sleepchecker:createbossbar
scoreboard players add #Data BossAtackTime 1

execute at @e[type=husk, name="SANDMAN"] run execute if score #Data BossAtackID matches 4..5 run execute at @e[type=item, nbt={Item:{tag:{display:{Name:'{"text":"Primed TNT"}'}}}}] run particle flame ~ ~.5 ~ .125 .125 .125 .1 1
execute at @e[type=husk, name="SANDMAN"] run execute if score #Data BossAtackID matches 4..5 run execute at @a[nbt={Inventory:[{id:"minecraft:potato", tag:{display:{Name:'{"text":"Primed TNT"}'}}}]}] run particle flame ~ ~2 ~ .125 .125 .125 .11 1
execute at @e[type=husk, name="SANDMAN"] run execute if score #Data BossAtackID matches -1..0 run execute at @a[distance=..10] run particle minecraft:soul_fire_flame ~ ~2 ~ .125 .25 .125 .1 1
execute at @e[type=husk, name="SANDMAN"] run execute if score #Data BossAtackID matches 0 run execute at @a[distance=..10] run particle minecraft:soul_fire_flame ~ ~2 ~ .125 .25 .125 .3 5
execute if score #Data BossCounter matches 0 run kill @e[type=husk, name="Sandman's minion"]

execute as @a run data get entity @s recipeBook.isFurnaceGuiOpen
execute as @a at @s positioned ~ ~ ~ rotated as @s anchored eyes run function sleepchecker:furnace_trace
