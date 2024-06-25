scoreboard players set $hs_timer hs_start 0
scoreboard players set @a[tag=hs_init] hs_won 0
execute as @a[scores={hs_class_load=-2..}] run scoreboard players operation @s hs_temp = @s hs_killcount
scoreboard players set $highest hs_temp -2147483648
execute as @a run scoreboard players operation $highest hs_temp > @s hs_temp
execute as @a[scores={hs_class_load=-2..}] if score @s hs_temp = $highest hs_temp run scoreboard players set @s hs_won 1
tp @a -7.5 46 -176.5
execute as @a[tag=hs_init] at @s run playsound minecraft:entity.experience_orb.pickup player @s
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:fireball]
kill @e[type=minecraft:item]
title @a[scores={hs_won=0}] title ""
title @a[scores={hs_won=1}] title "You Win!"
execute as @a[scores={hs_won=1}] at @s run playsound minecraft:entity.player.levelup player @s
title @a[tag=hs_init] subtitle ["",{"selector":"@a[scores={hs_won=1}]"},{"text":" won the competition!"}]
scoreboard players set @a[tag=hs_init] hs_class_load -2
