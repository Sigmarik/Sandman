scoreboard players add #Data BlurryCalls 1
execute if score #Data SandmanDisabled matches 1 run execute if score #Data BlurryCalls matches 100.. run time set day
#execute if score #Data SandmanDisabled matches 1 run execute store result score 
execute if score #Data SandmanDisabled matches 0 run execute if score #Data BlurryCalls matches 1 run say Sandman felt something...
execute if score #Data SandmanDisabled matches 0 run execute as @a if score @s SleepingTime matches 0 run effect give @s blindness 2
execute if score #Data SandmanDisabled matches 0 run execute if score #Data BlurryCalls matches 500.. run execute as @a if score @s SleepingTime matches 0 run effect give @s nausea 5
execute if score #Data SandmanDisabled matches 0 run execute if score #Data BlurryCalls matches 1000 run execute as @a if score @s SleepingTime matches 0 run execute at @s run function sleepchecker:summonsandman