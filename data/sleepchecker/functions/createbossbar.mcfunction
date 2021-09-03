bossbar add sandman {"text":"Sandman himself", "color":"yellow"}
execute at @e[limit=1, type=husk, name="SANDMAN"] run bossbar set sandman players @a[distance=..100]
bossbar set sandman max 20
bossbar set sandman color yellow
execute store result bossbar sandman value run scoreboard players get #Data BossHealth