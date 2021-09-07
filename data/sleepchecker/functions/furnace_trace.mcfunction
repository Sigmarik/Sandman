execute if block ~ ~ ~ furnace if data block ~ ~ ~ Items[0].tag.display{Name:'{"text":"Primed TNT"}'} if data block ~ ~ ~ Items[1] run summon tnt
execute if block ~ ~ ~ campfire if data block ~ ~ ~ Items[0].tag.display{Name:'{"text":"Primed TNT"}'} unless data block ~ ~ ~ {CookingTimes:[I; 0, 0, 0, 0]} run function sleepchecker:explode_campfire
#execute if block ~ ~ ~ campfire if data block ~ ~ ~ Items[0].tag.display{Name:'{"text":"Primed TNT"}'} unless data block ~ ~ ~ {CookingTimes:[I; 0, 0, 0, 0]} run advancement grant @s only sandman:adv1
execute if block ~ ~ ~ campfire if data block ~ ~ ~ Items[1].tag.display{Name:'{"text":"Primed TNT"}'} unless data block ~ ~ ~ {CookingTimes:[I; 0, 0, 0, 0]} run function sleepchecker:explode_campfire
#execute if block ~ ~ ~ campfire if data block ~ ~ ~ Items[1].tag.display{Name:'{"text":"Primed TNT"}'} unless data block ~ ~ ~ {CookingTimes:[I; 0, 0, 0, 0]} run advancement grant @s only sandman:adv1
execute if block ~ ~ ~ campfire if data block ~ ~ ~ Items[2].tag.display{Name:'{"text":"Primed TNT"}'} unless data block ~ ~ ~ {CookingTimes:[I; 0, 0, 0, 0]} run function sleepchecker:explode_campfire
#execute if block ~ ~ ~ campfire if data block ~ ~ ~ Items[2].tag.display{Name:'{"text":"Primed TNT"}'} unless data block ~ ~ ~ {CookingTimes:[I; 0, 0, 0, 0]} run advancement grant @s only sandman:adv1
execute if block ~ ~ ~ campfire if data block ~ ~ ~ Items[3].tag.display{Name:'{"text":"Primed TNT"}'} unless data block ~ ~ ~ {CookingTimes:[I; 0, 0, 0, 0]} run function sleepchecker:explode_campfire
#execute if block ~ ~ ~ campfire if data block ~ ~ ~ Items[3].tag.display{Name:'{"text":"Primed TNT"}'} unless data block ~ ~ ~ {CookingTimes:[I; 0, 0, 0, 0]} run advancement grant @s only sandman:adv1

#particle enchanted_hit ~ ~ ~
execute if block ~ ~ ~ air positioned ^ ^ ^.1 run function sleepchecker:furnace_trace
