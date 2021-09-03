gamerule commandBlockOutput true
gamerule sendCommandFeedback true
gamerule logAdminCommands false

scoreboard objectives add SleepingTime dummy
scoreboard objectives add NumPlayers dummy
scoreboard objectives add CurrentSleeping dummy
scoreboard objectives add SleepPercentage dummy
scoreboard objectives add OneH dummy
scoreboard objectives add DeltaTimeStamp dummy
scoreboard objectives add BlurryCalls dummy
scoreboard objectives add BossHealth dummy
scoreboard objectives add BossAtackID dummy
scoreboard objectives add BossAtackTime dummy
scoreboard objectives add SandmanDisabled dummy
scoreboard objectives add BossCounter dummy
scoreboard objectives add TntAmount dummy
scoreboard objectives add TntAmountMem dummy

scoreboard players set #Data OneH 100
scoreboard players set #Data SleepPercentage 30
scoreboard players set #Data BossHealth 100

say Data pack loaded