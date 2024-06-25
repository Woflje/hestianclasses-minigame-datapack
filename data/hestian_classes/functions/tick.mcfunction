scoreboard players set @a[tag=!hs_init] hs_class_load -2
tag @a[tag=!hs_init] add hs_init
scoreboard players set @a[scores={hs_class_load=-2}] hs_killcount 0
scoreboard players set @a[scores={hs_class_load=-2}] hs_class_load -1
tp @a[scores={hs_relog=1..,hs_health=1..}] -7.5 46 -176.5
tp @a[scores={hs_class_load=-2..-1,hs_health=1..}] -7.5 46 -176.5
scoreboard players remove @a[scores={hs_relog=1..}] hs_killcount 1
clear @a[scores={hs_relog=1..,hs_class_load=3}]
scoreboard players set @a[scores={hs_relog=1..}] hs_li_t 1
scoreboard players set @a[scores={hs_relog=1..}] hs_class_load -1
scoreboard players set @a[scores={hs_relog=1..}] hs_relog 0
effect clear @a[scores={hs_class_load=-1}]
clear @a[scores={hs_class_load=-1}]
title @a[scores={hs_class_load=-1}] times 10 40 30
scoreboard players set @a[scores={hs_class_load=-1}] hs_class_number -1
scoreboard players set @a[scores={hs_class_load=-1}] hs_killstreak 0
scoreboard players set @a[scores={hs_class_load=-1}] hs_killstreak_c 0
scoreboard players set @a[scores={hs_class_load=-1}] hs_spell_fb_cd 0
scoreboard players set @a[scores={hs_class_load=-1}] hs_spell_ag_cd 0
scoreboard players set @a[scores={hs_class_load=-1}] hs_choice -1
scoreboard players enable @a[scores={hs_class_load=0}] hs_choice
execute as @a[scores={hs_class_load=-1}] run attribute @s minecraft:generic.max_health base set 20
effect give @a[scores={hs_class_load=-1}] minecraft:resistance 999999 255 true
effect give @a[scores={hs_class_load=-1}] minecraft:saturation 999999 255 true
effect give @a[scores={hs_class_load=-1}] minecraft:instant_health 1 255 true
effect give @a[scores={hs_class_load=-1}] minecraft:weakness 999999 255 true
give @a[scores={hs_class_load=-1}] written_book{pages:['["",{"text":"\\n"},{"text":" \\u0020","bold":true,"color":"dark_red"},{"text":"Hestian Classes","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=JyAJgnbKCe4"}},{"text":"\\n\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"by","color":"#8E7191"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Woflje","bold":true,"color":"light_purple"}]','["",{"text":" \\u0020Click a Class!","bold":true},{"text":"\\n","color":"reset"},{"text":"\\n \\u25b6","bold":true},{"text":"Assassin","bold":true,"clickEvent":{"action":"run_command","value":"/trigger hs_choice set 0"},"hoverEvent":{"action":"show_text","value":"Assassin"}},{"text":"\\n \\u25b6","bold":true},{"text":"Ranger","bold":true,"clickEvent":{"action":"run_command","value":"/trigger hs_choice set 1"},"hoverEvent":{"action":"show_text","value":"Ranger"}},{"text":"\\n \\u25b6","bold":true},{"text":"DragonBorn","bold":true,"clickEvent":{"action":"run_command","value":"/trigger hs_choice set 2"},"hoverEvent":{"action":"show_text","value":"DragonBorn"}},{"text":"\\n \\u25b6","bold":true},{"text":"Wizard","bold":true,"clickEvent":{"action":"run_command","value":"/trigger hs_choice set 3"},"hoverEvent":{"action":"show_text","value":"Wizard"}}]','["",{"text":"Assassin Class\\n\\n","bold":true,"color":"dark_red"},{"text":"HP:","bold":true,"color":"reset"},{"text":" 6 Hearts\\n","color":"reset"},{"text":"Effects:\\n","bold":true,"color":"reset"},{"text":" Resistance\\n"},{"text":" Saturation\\n"},{"text":" Instant_health\\n"},{"text":" Speed\\n"},{"text":"Gear:\\n","bold":true,"color":"reset"},{"text":" Smoke Bomb\\n","color":"reset"}]','["",{"text":"Assassin Class\\n\\n","bold":true,"color":"dark_red"},{"text":"A loud bang that blinds and stuns nearby players\\n","color":"reset"},{"text":" Ninja Helmet\\n","color":"reset"},{"text":" Ninja Tunic\\n","color":"reset"},{"text":" QuickKnife Boots\\n","color":"reset"},{"text":" Boring Leggings\\n","color":"reset"},{"text":" Sneak Tomahawk\\n","color":"reset"},{"text":" Danger Stick\\n","color":"reset"},{"text":" Yeet & Yanker\\n","color":"reset"},{"text":" Toxic Fart\\n","color":"reset"},{"text":" Carrot Juice\\n","color":"reset"},{"text":"10","color":"reset"},{"text":" Shiny Apple\\n","color":"reset"},{"text":"8","color":"reset"},{"text":" Uncampfired Fish\\n","color":"reset"}]','["",{"text":"Assassin Class\\n\\n","bold":true,"color":"dark_red"},{"text":" Hit and Run\\n","color":"reset"},{"text":"Restocks [max]\\n","bold":true,"color":"reset"},{"text":"Carrot Juice 2\\n"},{"text":"Toxic Fart 2\\n"},{"text":"Sneak Tomahawk 1\\n"},{"text":"Hit and Run 2\\n"},{"text":"Killstreak Rewards:","bold":true,"color":"reset"},{"text":" At a streak of 3:\\n Gear:\\n","bold":true,"color":"reset"},{"text":"5","color":"reset"},{"text":" Shiny Apple\\n","color":"reset"},{"text":"6","color":"reset"},{"text":" Uncampfired Fish\\n","color":"reset"}]','["",{"text":"Ranger Class\\n\\n","bold":true,"color":"dark_red"},{"text":"HP:","bold":true,"color":"reset"},{"text":" 9 Hearts\\n","color":"reset"},{"text":"Effects:\\n","bold":true,"color":"reset"},{"text":" Resistance\\n"},{"text":" Saturation\\n"},{"text":" Instant_health\\n"},{"text":" Speed\\n"},{"text":"Gear:\\n","bold":true,"color":"reset"},{"text":" Ranger Cap\\n","color":"reset"},{"text":" Ranger Tunic\\n","color":"reset"},{"text":" Boot remains\\n","color":"reset"},{"text":" Worn Jeans\\n","color":"reset"}]','["",{"text":"Ranger Class\\n\\n","bold":true,"color":"dark_red"},{"text":" Stick Launcher\\n","color":"reset"},{"text":"5","color":"reset"},{"text":" Flying Danger Stick\\n","color":"reset"},{"text":" Leg Day Faker\\n","color":"reset"},{"text":"2","color":"reset"},{"text":" Shiny Stick\\n","color":"reset"},{"text":" Stinky Stick\\n","color":"reset"},{"text":"10","color":"reset"},{"text":" Shiny Apple\\n","color":"reset"},{"text":"8","color":"reset"},{"text":" Uncampfired Fish\\n","color":"reset"},{"text":"Restocks [max]\\n","bold":true,"color":"reset"},{"text":"Flying Danger Stick 6\\n"},{"text":"Shiny Stick 3\\n"},{"text":"Stinky Stick 1\\n"}]','["",{"text":"Ranger Class\\n\\n","bold":true,"color":"dark_red"},{"text":"Killstreak Rewards:","bold":true,"color":"reset"},{"text":" At a streak of 3:\\n Gear:\\n","bold":true,"color":"reset"},{"text":"5","color":"reset"},{"text":" Shiny Apple\\n","color":"reset"},{"text":"6","color":"reset"},{"text":" Uncampfired Fish\\n","color":"reset"},{"text":" Heavy Stick Launcher\\n","color":"reset"}]','["",{"text":"DragonBorn Class\\n\\n","bold":true,"color":"dark_red"},{"text":"HP:","bold":true,"color":"reset"},{"text":" 9 Hearts\\n","color":"reset"},{"text":"Effects:\\n","bold":true,"color":"reset"},{"text":" Resistance\\n"},{"text":" Saturation\\n"},{"text":" Instant_health\\n"},{"text":" Jump_boost\\n"},{"text":"Gear:\\n","bold":true,"color":"reset"},{"text":" Nightmare Head Replacement\\n","color":"reset"},{"text":" True Dragon Flappers\\n","color":"reset"},{"text":" Stompy Dragon Feet\\n","color":"reset"},{"text":" Stronk Drakon Leks\\n","color":"reset"}]','["",{"text":"DragonBorn Class\\n\\n","bold":true,"color":"dark_red"},{"text":" Dragons Tongue\\n","color":"reset"},{"text":"A powerful Dragon shout to stun and confuse nearby players\\n","color":"reset"},{"text":"5","color":"reset"},{"text":" Carrot Juice\\n","color":"reset"},{"text":" Strong Aftersun\\n","color":"reset"},{"text":" PAIN\\n","color":"reset"},{"text":" Toxic Farts\\n","color":"reset"},{"text":"10","color":"reset"},{"text":" Shiny Apple\\n","color":"reset"},{"text":"8","color":"reset"},{"text":" Uncampfired Fish\\n","color":"reset"},{"text":"Restocks [max]\\n","bold":true,"color":"reset"},{"text":"Wrapped Fart 5\\n"},{"text":"PAIN 2\\n"},{"text":"Toxic Farts 2\\n"}]','["",{"text":"DragonBorn Class\\n\\n","bold":true,"color":"dark_red"},{"text":"Killstreak Rewards:","bold":true,"color":"reset"},{"text":" At a streak of 3:\\n Gear:\\n","bold":true,"color":"reset"},{"text":"5","color":"reset"},{"text":" Shiny Apple\\n","color":"reset"},{"text":"6","color":"reset"},{"text":" Uncampfired Fish\\n","color":"reset"}]','["",{"text":"Wizard Class\\n\\n","bold":true,"color":"dark_red"},{"text":"HP:","bold":true,"color":"reset"},{"text":" 8 Hearts\\n","color":"reset"},{"text":"Effects:\\n","bold":true,"color":"reset"},{"text":" Resistance\\n"},{"text":" Saturation\\n"},{"text":" Instant_health\\n"},{"text":"Gear:\\n","bold":true,"color":"reset"},{"text":" Wizard Hat\\n","color":"reset"},{"text":" Wizard Robes\\n","color":"reset"},{"text":" Flying but not flying boots\\n","color":"reset"},{"text":" Tight Leggings\\n","color":"reset"},{"text":" Disguised Fireball\\n","color":"reset"}]','["",{"text":"Wizard Class\\n\\n","bold":true,"color":"dark_red"},{"text":" Gravity Wand\\n","color":"reset"},{"text":"Players near to you start levitating\\n","color":"reset"},{"text":" Puppet Master\\n","color":"reset"},{"text":"Summon a bunch of look-a-like decoys around you!\\n","color":"reset"},{"text":" Carrot Juice\\n","color":"reset"},{"text":" Strong Aftersun\\n","color":"reset"},{"text":" Instant Feel Better Drink\\n","color":"reset"},{"text":" Slowly Feel Better Drink\\n","color":"reset"},{"text":" Weakify Liquid\\n","color":"reset"},{"text":" Breaker of Shields\\n","color":"reset"},{"text":" Pure Alcohol\\n","color":"reset"},{"text":"10","color":"reset"},{"text":" Shiny Apple\\n","color":"reset"},{"text":"8","color":"reset"},{"text":" Uncampfired Fish\\n","color":"reset"},{"text":" Dissappearify\\n","color":"reset"}]','["",{"text":"Wizard Class\\n\\n","bold":true,"color":"dark_red"},{"text":"Restocks [max]\\n","bold":true,"color":"reset"},{"text":"Disguised Fireball 1\\n"},{"text":"Carrot Juice 3\\n"},{"text":"Strong Aftersun 3\\n"},{"text":"Instant Feel Better Drink 3\\n"},{"text":"Slowly Feel Better Drink 2\\n"},{"text":"Weakify Liquid 2\\n"},{"text":"Pure Alcohol 2\\n"},{"text":"Dissappearify 1\\n"}]','["",{"text":"Wizard Class\\n\\n","bold":true,"color":"dark_red"},{"text":"Killstreak Rewards:","bold":true,"color":"reset"},{"text":" At a streak of 3:\\n Gear:\\n","bold":true,"color":"reset"},{"text":"5","color":"reset"},{"text":" Shiny Apple\\n","color":"reset"},{"text":"6","color":"reset"},{"text":" Uncampfired Fish\\n","color":"reset"}]'],title:"Hestian Classes",author:"Woflje"} 1
scoreboard players set @a[scores={hs_class_load=-1,hs_health=1..}] hs_class_load 0
clear @a[scores={hs_class_load=..-1}]
scoreboard players set @a[scores={hs_class_load=-1,hs_li_t=0}] hs_li_t 1
scoreboard players set @a[scores={hs_class_load=-3,hs_health=1..}] hs_class_load -1
scoreboard players set @a[scores={hs_class_load=1}] hs_class_load 2
tp @a[scores={hs_class_load=2,hs_random_pos=0}] 28 -23 -106
tp @a[scores={hs_class_load=2,hs_random_pos=1}] -28 -13 -86
tp @a[scores={hs_class_load=2,hs_random_pos=2}] -38 -19 -74
tp @a[scores={hs_class_load=2,hs_random_pos=3}] 21 -23 16
tp @a[scores={hs_class_load=2,hs_random_pos=4}] 49 -21 23
tp @a[scores={hs_class_load=2,hs_random_pos=5}] 58 -16 3
tp @a[scores={hs_class_load=2,hs_random_pos=6}] 68 -10 22
tp @a[scores={hs_class_load=2,hs_random_pos=7}] 66 -1 -4
tp @a[scores={hs_class_load=2,hs_random_pos=8}] 35 -23 -75
tp @a[scores={hs_class_load=2,hs_random_pos=9}] -9 -20 -109
tp @a[scores={hs_class_load=2,hs_random_pos=10}] 13 -22 -30
tp @a[scores={hs_class_load=2,hs_random_pos=11}] 4 -23 12
tp @a[scores={hs_class_load=2,hs_random_pos=12}] 25 2 -44
tp @a[scores={hs_class_load=2,hs_random_pos=13}] -7 -21 -69
tp @a[scores={hs_class_load=2,hs_random_pos=14}] 88 -26 -45
tp @a[scores={hs_class_load=2,hs_random_pos=15}] -14 -13 2
tp @a[scores={hs_class_load=2,hs_random_pos=16}] -44 -10 -55
tp @a[scores={hs_class_load=2,hs_random_pos=17}] 49 4 40
scoreboard players add @a[scores={hs_class_load=0..2}] hs_random_pos 1
scoreboard players set @a[scores={hs_class_load=0..2,hs_random_pos=17..}] hs_random_pos 0
scoreboard players set @a[scores={hs_class_load=2}] hs_class_load 3
execute store result score $hs_timer hs_timerb run scoreboard players get $hs_timer hs_timer
bossbar set hs_time players @a
execute if score $hs_timer hs_timer matches 0..12000 run bossbar set hs_time name "Waiting for next Match"
execute if score $hs_timer hs_timer matches 0..12000 run bossbar set hs_time color blue
execute if score $hs_timer hs_timer matches 0..12000 run bossbar set hs_time max 12000
execute if score $hs_timer hs_timer matches 12001..42000 run scoreboard players remove $hs_timer hs_timerb 12000
execute if score $hs_timer hs_timer matches 12001..42000 run bossbar set hs_time name "Match Time"
execute if score $hs_timer hs_timer matches 12001..42000 run bossbar set hs_time color pink
execute if score $hs_timer hs_timer matches 12001..42000 run bossbar set hs_time max 30000
execute if score $hs_timer hs_timer matches 42001..42900 run scoreboard players remove $hs_timer hs_timerb 42000
execute if score $hs_timer hs_timer matches 42001..42900 run bossbar set hs_time name "Celebration Time"
execute if score $hs_timer hs_timer matches 42001..42900 run bossbar set hs_time color white
execute if score $hs_timer hs_timer matches 42001..42900 run bossbar set hs_time max 900
execute store result bossbar minecraft:hs_time value run scoreboard players get $hs_timer hs_timerb
clear @a[scores={hs_class_load=3}] minecraft:glass_bottle 1
scoreboard players set @a[scores={hs_class_load=0,hs_class_number=0..}] hs_class_load 1
effect clear @a[scores={hs_class_load=1}]
gamemode survival @a[scores={hs_class_load=1}]
scoreboard players set @a[scores={hs_class_load=1}] hs_killstreak 0
scoreboard players set @a[scores={hs_class_load=1}] hs_killstreak_c 0
scoreboard players set @a[scores={hs_class_load=1}] hs_spell_fb_cd -1
scoreboard players set @a[scores={hs_class_load=1}] hs_spell_ag_cd -1
scoreboard players set @a[scores={hs_class_load=1}] hs_spell_sb_cd -1
scoreboard players set @a[scores={hs_class_load=1}] hs_spell_dt_cd -1
scoreboard players set @a[scores={hs_class_load=1}] hs_spell_dc_cd -1
scoreboard players reset @a[scores={hs_class_load=1}] hs_choice
clear @a[scores={hs_class_load=1}]
execute if score $hs_timer hs_start matches 0 as @a[scores={hs_choice=0..}] run title @s actionbar "Match has yet to start!"
execute if score $hs_timer hs_start matches 0 as @a[scores={hs_choice=0..}] run scoreboard players set @s hs_choice -1
execute if score $hs_timer hs_start matches 1 as @a[scores={hs_choice=0,hs_class_load=0}] run scoreboard players set @s hs_class_number 0
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] hotbar.1 with minecraft:carrot_on_a_stick{Enchantments:[{}],display:{Name:"{\"text\":\"Smoke Bomb\"}",Lore:["[{\"text\":\"Right-Click to ignite a smokebomb and\",\"italic\":false}]","[{\"text\":\"blind nearby enemies\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=1,hs_class_number=0}] hs_spell_sb_cd 0
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] armor.head with minecraft:leather_helmet{display:{color:1908001},Unbreakable:1b,display:{color:1908001,Name:"{\"text\":\"Ninja Helmet\"}",Lore:["[{\"text\":\"A little present from King Slime\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] armor.chest with minecraft:leather_chestplate{display:{color:1908001},Unbreakable:1b,display:{color:1908001,Name:"{\"text\":\"Ninja Tunic\"}",Lore:["[{\"text\":\"So... soo many pockets\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] armor.feet with minecraft:leather_boots{display:{color:1908001},Unbreakable:1b,display:{color:1908001,Name:"{\"text\":\"QuickKnife Boots\"}",Lore:["[{\"text\":\"A true Assassin\",\"italic\":false}]","[{\"text\":\"has a knife everywhere!\",\"italic\":false}]","[{\"text\":\"Don't stick them in\",\"italic\":false}]","[{\"text\":\"your ribcage however\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] armor.legs with minecraft:leather_leggings{display:{color:1908001},Unbreakable:1b,display:{color:1908001,Name:"{\"text\":\"Boring Leggings\"}",Lore:["[{\"text\":\"All your fancy stuff ends here.\",\"italic\":false}]","[{\"text\":\"No more budget buddy\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] weapon.offhand with minecraft:golden_axe{Enchantments:[{id:sharpness,lvl:5}],Damage:31,display:{Name:"{\"text\":\"Sneak Tomahawk\"}",Lore:["[{\"text\":\"Roll 2D6 extra\",\"italic\":false}]","[{\"text\":\"for Sneak Attack\",\"italic\":false}]","[{\"text\":\"Breaks after one use\",\"italic\":false}]","[{\"text\":\"8sec to get it back\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] hotbar.0 with minecraft:iron_sword{Unbreakable:1b,display:{Name:"{\"text\":\"Danger Stick\"}",Lore:["[{\"text\":\"A stick with a pointy end.\",\"italic\":false}]","[{\"text\":\"Probably hurts.\",\"italic\":false}]","[{\"text\":\"Dangerous for sure\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] hotbar.2 with minecraft:fishing_rod{Unbreakable:1b,display:{Name:"{\"text\":\"Yeet & Yanker\"}",Lore:["[{\"text\":\"100% Stolen\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] hotbar.3 with minecraft:splash_potion{CustomPotionEffects:[{Id:19,Duration:240,ShowParticles:0b}],CustomPotionColor:484402,display:{Name:"{\"text\":\"Toxic Fart\"}",Lore:["[{\"text\":\"Stinks AND Stings!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=0}] hotbar.4 with minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 1
give @a[scores={hs_class_load=1,hs_class_number=0}] minecraft:apple{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}} 10
give @a[scores={hs_class_load=1,hs_class_number=0}] minecraft:cod{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}} 8
give @a[scores={hs_class_load=1,hs_class_number=0}] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:2,Duration:120,ShowParticles:1b}],display:{Name:"{\"text\":\"Hit and Run\"}",Lore:["[{\"text\":\"Take a sprint at your foes!\",\"italic\":false}]"]}} 1
effect give @a[scores={hs_class_load=1,hs_class_number=0}] minecraft:resistance 2 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=0}] minecraft:saturation 1 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=0}] minecraft:instant_health 1 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=0}] minecraft:speed 999999 0 true
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=0}] minecraft:apple{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}} 5
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=0}] minecraft:cod{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}} 6
title @a[scores={hs_class_number=0,hs_killstreak_c=0,hs_killstreak=3..}] title ""
title @a[scores={hs_class_number=0,hs_killstreak_c=0,hs_killstreak=3..}] subtitle "UPGRADE!"
execute as @a[scores={hs_class_number=0,hs_killstreak_c=0,hs_killstreak=3..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
execute as @a[scores={hs_class_number=0,hs_killstreak_c=0,hs_killstreak=3..}] run title @a[tag=hs_init] actionbar ["",{"selector":"@s"},{"text":" got a killstreak going of 3!"}]
scoreboard players set @a[scores={hs_class_number=0,hs_killstreak_c=0,hs_killstreak=3..,hs_class_load=3}] hs_killstreak_c 1
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t360 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t360 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=0,hs_count_16=2..}] hs_restock_t360 0
execute as @a[scores={hs_class_load=3,hs_class_number=0}] store result score @s hs_count_16 run clear @s minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t360=7200..,hs_class_number=0,hs_count_16=..1}] minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t360=..7200,hs_count_16=..1}] hs_restock_t360 1
clear @a[scores={hs_class_load=3,hs_class_number=0,hs_count_16=3..}] minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t360=7201..}] hs_restock_t360 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t120 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t120 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=0,hs_count_25=2..}] hs_restock_t120 0
execute as @a[scores={hs_class_load=3,hs_class_number=0}] store result score @s hs_count_25 run clear @s minecraft:splash_potion{CustomPotionEffects:[{Id:19,Duration:240,ShowParticles:0b}],CustomPotionColor:484402,display:{Name:"{\"text\":\"Toxic Fart\"}",Lore:["[{\"text\":\"Stinks AND Stings!\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t120=2400..,hs_class_number=0,hs_count_25=..1}] minecraft:splash_potion{CustomPotionEffects:[{Id:19,Duration:240,ShowParticles:0b}],CustomPotionColor:484402,display:{Name:"{\"text\":\"Toxic Fart\"}",Lore:["[{\"text\":\"Stinks AND Stings!\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t120=..2400,hs_count_25=..1}] hs_restock_t120 1
clear @a[scores={hs_class_load=3,hs_class_number=0,hs_count_25=3..}] minecraft:splash_potion{CustomPotionEffects:[{Id:19,Duration:240,ShowParticles:0b}],CustomPotionColor:484402,display:{Name:"{\"text\":\"Toxic Fart\"}",Lore:["[{\"text\":\"Stinks AND Stings!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t120=2401..}] hs_restock_t120 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t17 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t17 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=0,hs_count_54=1..}] hs_restock_t17 0
execute as @a[scores={hs_class_load=3,hs_class_number=0}] store result score @s hs_count_54 run clear @s minecraft:golden_axe{Enchantments:[{id:sharpness,lvl:5}],Damage:31,display:{Name:"{\"text\":\"Sneak Tomahawk\"}",Lore:["[{\"text\":\"Roll 2D6 extra\",\"italic\":false}]","[{\"text\":\"for Sneak Attack\",\"italic\":false}]","[{\"text\":\"Breaks after one use\",\"italic\":false}]","[{\"text\":\"8sec to get it back\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t17=340..,hs_class_number=0,hs_count_54=..0}] minecraft:golden_axe{Enchantments:[{id:sharpness,lvl:5}],Damage:31,display:{Name:"{\"text\":\"Sneak Tomahawk\"}",Lore:["[{\"text\":\"Roll 2D6 extra\",\"italic\":false}]","[{\"text\":\"for Sneak Attack\",\"italic\":false}]","[{\"text\":\"Breaks after one use\",\"italic\":false}]","[{\"text\":\"8sec to get it back\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t17=..340,hs_count_54=..0}] hs_restock_t17 1
clear @a[scores={hs_class_load=3,hs_class_number=0,hs_count_54=2..}] minecraft:golden_axe{Enchantments:[{id:sharpness,lvl:5}],Damage:31,display:{Name:"{\"text\":\"Sneak Tomahawk\"}",Lore:["[{\"text\":\"Roll 2D6 extra\",\"italic\":false}]","[{\"text\":\"for Sneak Attack\",\"italic\":false}]","[{\"text\":\"Breaks after one use\",\"italic\":false}]","[{\"text\":\"8sec to get it back\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t17=341..}] hs_restock_t17 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t15 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t15 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=0,hs_count_55=2..}] hs_restock_t15 0
execute as @a[scores={hs_class_load=3,hs_class_number=0}] store result score @s hs_count_55 run clear @s minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:2,Duration:120,ShowParticles:1b}],display:{Name:"{\"text\":\"Hit and Run\"}",Lore:["[{\"text\":\"Take a sprint at your foes!\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t15=300..,hs_class_number=0,hs_count_55=..1}] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:2,Duration:120,ShowParticles:1b}],display:{Name:"{\"text\":\"Hit and Run\"}",Lore:["[{\"text\":\"Take a sprint at your foes!\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t15=..300,hs_count_55=..1}] hs_restock_t15 1
clear @a[scores={hs_class_load=3,hs_class_number=0,hs_count_55=3..}] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:2,Duration:120,ShowParticles:1b}],display:{Name:"{\"text\":\"Hit and Run\"}",Lore:["[{\"text\":\"Take a sprint at your foes!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t15=301..}] hs_restock_t15 0
execute as @a[scores={hs_class_load=1,hs_class_number=0}] run attribute @s minecraft:generic.max_health base set 12
execute if score $hs_timer hs_start matches 1 as @a[scores={hs_choice=1,hs_class_load=0}] run scoreboard players set @s hs_class_number 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] armor.head with minecraft:leather_helmet{display:{color:6192150},Unbreakable:1b,display:{color:6192150,Name:"{\"text\":\"Ranger Cap\"}",Lore:["[{\"text\":\"Protects you from sunburn or\",\"italic\":false}]","[{\"text\":\"whatever rangers risk ranging\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] armor.chest with minecraft:leather_chestplate{display:{color:6192150},Unbreakable:1b,display:{color:6192150,Name:"{\"text\":\"Ranger Tunic\"}",Lore:["[{\"text\":\"Warm during cold nights,\",\"italic\":false}]","[{\"text\":\"cool during hot days\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] armor.feet with minecraft:leather_boots{display:{color:6192150},Unbreakable:1b,display:{color:6192150,Name:"{\"text\":\"Boot remains\"}",Lore:["[{\"text\":\"Very old and way\",\"italic\":false}]","[{\"text\":\"too trampled boots\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] armor.legs with minecraft:leather_leggings{display:{color:6192150},Unbreakable:1b,display:{color:6192150,Name:"{\"text\":\"Worn Jeans\"}",Lore:["[{\"text\":\"Do you EVER wash\",\"italic\":false}]","[{\"text\":\"your clothes?\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] hotbar.0 with minecraft:bow{Unbreakable:1b,display:{Name:"{\"text\":\"Stick Launcher\"}",Lore:["[{\"text\":\"TWANG\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] hotbar.1 with minecraft:arrow{display:{Name:"{\"text\":\"Flying Danger Stick\"}",Lore:["[{\"text\":\"It does not just fly, IT FLIES\",\"italic\":false}]"]}} 5
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] hotbar.4 with minecraft:potion{Potion:"minecraft:leaping",display:{Name:"{\"text\":\"Leg Day Faker\"}",Lore:["[{\"text\":\"Suddenly grows muscle\",\"italic\":false}]","[{\"text\":\"on your legs for STRONK jumps!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] hotbar.2 with minecraft:spectral_arrow{display:{Name:"{\"text\":\"Shiny Stick\"}",Lore:["[{\"text\":\"Wallhack activate\",\"italic\":false}]"]}} 2
item replace entity @a[scores={hs_class_load=1,hs_class_number=1}] hotbar.3 with minecraft:tipped_arrow{CustomPotionEffects:[{Id:19,Duration:100}],CustomPotionColor:1617727,display:{Name:"{\"text\":\"Stinky Stick\"}",Lore:["[{\"text\":\"It flies it stinks\",\"italic\":false}]","[{\"text\":\"it stings it stick\",\"italic\":false}]"]}} 1
give @a[scores={hs_class_load=1,hs_class_number=1}] minecraft:apple{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}} 10
give @a[scores={hs_class_load=1,hs_class_number=1}] minecraft:cod{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}} 8
effect give @a[scores={hs_class_load=1,hs_class_number=1}] minecraft:resistance 2 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=1}] minecraft:saturation 1 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=1}] minecraft:instant_health 1 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=1}] minecraft:speed 999999 0 true
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=1}] minecraft:apple{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}} 5
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=1}] minecraft:cod{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}} 6
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=1}] minecraft:crossbow{Unbreakable:1b,display:{Name:"{\"text\":\"Heavy Stick Launcher\"}",Lore:["[{\"text\":\"For tough boys and girls\",\"italic\":false}]"]}} 1
title @a[scores={hs_class_number=1,hs_killstreak_c=0,hs_killstreak=3..}] title ""
title @a[scores={hs_class_number=1,hs_killstreak_c=0,hs_killstreak=3..}] subtitle "UPGRADE!"
execute as @a[scores={hs_class_number=1,hs_killstreak_c=0,hs_killstreak=3..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
execute as @a[scores={hs_class_number=1,hs_killstreak_c=0,hs_killstreak=3..}] run title @a[tag=hs_init] actionbar ["",{"selector":"@s"},{"text":" got a killstreak going of 3!"}]
scoreboard players set @a[scores={hs_class_number=1,hs_killstreak_c=0,hs_killstreak=3..,hs_class_load=3}] hs_killstreak_c 1
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t5 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t5 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=1,hs_count_47=6..}] hs_restock_t5 0
execute as @a[scores={hs_class_load=3,hs_class_number=1}] store result score @s hs_count_47 run clear @s minecraft:arrow{display:{Name:"{\"text\":\"Flying Danger Stick\"}",Lore:["[{\"text\":\"It does not just fly, IT FLIES\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t5=100..,hs_class_number=1,hs_count_47=..5}] minecraft:arrow{display:{Name:"{\"text\":\"Flying Danger Stick\"}",Lore:["[{\"text\":\"It does not just fly, IT FLIES\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t5=..100,hs_count_47=..5}] hs_restock_t5 1
clear @a[scores={hs_class_load=3,hs_class_number=1,hs_count_47=7..}] minecraft:arrow{display:{Name:"{\"text\":\"Flying Danger Stick\"}",Lore:["[{\"text\":\"It does not just fly, IT FLIES\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t5=101..}] hs_restock_t5 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t10 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t10 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=1,hs_count_50=3..}] hs_restock_t10 0
execute as @a[scores={hs_class_load=3,hs_class_number=1}] store result score @s hs_count_50 run clear @s minecraft:spectral_arrow{display:{Name:"{\"text\":\"Shiny Stick\"}",Lore:["[{\"text\":\"Wallhack activate\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t10=200..,hs_class_number=1,hs_count_50=..2}] minecraft:spectral_arrow{display:{Name:"{\"text\":\"Shiny Stick\"}",Lore:["[{\"text\":\"Wallhack activate\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t10=..200,hs_count_50=..2}] hs_restock_t10 1
clear @a[scores={hs_class_load=3,hs_class_number=1,hs_count_50=4..}] minecraft:spectral_arrow{display:{Name:"{\"text\":\"Shiny Stick\"}",Lore:["[{\"text\":\"Wallhack activate\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t10=201..}] hs_restock_t10 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t14 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t14 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=1,hs_count_51=1..}] hs_restock_t14 0
execute as @a[scores={hs_class_load=3,hs_class_number=1}] store result score @s hs_count_51 run clear @s minecraft:tipped_arrow{CustomPotionEffects:[{Id:19,Duration:100}],CustomPotionColor:1617727,display:{Name:"{\"text\":\"Stinky Stick\"}",Lore:["[{\"text\":\"It flies it stinks\",\"italic\":false}]","[{\"text\":\"it stings it stick\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t14=280..,hs_class_number=1,hs_count_51=..0}] minecraft:tipped_arrow{CustomPotionEffects:[{Id:19,Duration:100}],CustomPotionColor:1617727,display:{Name:"{\"text\":\"Stinky Stick\"}",Lore:["[{\"text\":\"It flies it stinks\",\"italic\":false}]","[{\"text\":\"it stings it stick\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t14=..280,hs_count_51=..0}] hs_restock_t14 1
clear @a[scores={hs_class_load=3,hs_class_number=1,hs_count_51=2..}] minecraft:tipped_arrow{CustomPotionEffects:[{Id:19,Duration:100}],CustomPotionColor:1617727,display:{Name:"{\"text\":\"Stinky Stick\"}",Lore:["[{\"text\":\"It flies it stinks\",\"italic\":false}]","[{\"text\":\"it stings it stick\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t14=281..}] hs_restock_t14 0
execute as @a[scores={hs_class_load=1,hs_class_number=1}] run attribute @s minecraft:generic.max_health base set 18
execute if score $hs_timer hs_start matches 1 as @a[scores={hs_choice=2,hs_class_load=0}] run scoreboard players set @s hs_class_number 2
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] armor.head with minecraft:dragon_head{display:{Name:"{\"text\":\"Nightmare Head Replacement\"}",Lore:["[{\"text\":\"GROWL!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] armor.chest with minecraft:elytra{Unbreakable:1b,display:{Name:"{\"text\":\"True Dragon Flappers\"}",Lore:["[{\"text\":\"Will keep you in the sky, where you belong\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] armor.feet with minecraft:netherite_boots{Enchantments:[{id:feather_falling,lvl:4}],Unbreakable:1b,display:{Name:"{\"text\":\"Stompy Dragon Feet\"}",Lore:["[{\"text\":\"Can catch you from quite a fall!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] armor.legs with minecraft:netherite_leggings{Unbreakable:1b,display:{Name:"{\"text\":\"Stronk Drakon Leks\"}",Lore:["[{\"text\":\"THICC Thighs!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] hotbar.0 with minecraft:carrot_on_a_stick{Enchantments:[{id:fire_aspect,lvl:2}],display:{Name:"{\"text\":\"Dragons Tongue\"}",Lore:["[{\"text\":\"Right-Click to\",\"italic\":false}]","[{\"text\":\"shout like a Dragon and\",\"italic\":false}]","[{\"text\":\"stun and confuse enemies!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=1,hs_class_number=2}] hs_spell_dt_cd 0
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] hotbar.1 with minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 5
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] hotbar.2 with minecraft:potion{Potion:"minecraft:fire_resistance",display:{Name:"{\"text\":\"Strong Aftersun\"}",Lore:["[{\"text\":\"Prevents your skin from burning!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] hotbar.3 with minecraft:lingering_potion{Potion:"minecraft:harming",display:{Name:"{\"text\":\"PAIN\"}",Lore:["[{\"text\":\"This will seriously hurt\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=2}] hotbar.4 with minecraft:lingering_potion{CustomPotionEffects:[{Id:19,Duration:240}],CustomPotionColor:1617727,display:{Name:"{\"text\":\"Toxic Farts\"}",Lore:["[{\"text\":\"Stinks AND Stings!\",\"italic\":false}]"]}} 1
give @a[scores={hs_class_load=1,hs_class_number=2}] minecraft:apple{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}} 10
give @a[scores={hs_class_load=1,hs_class_number=2}] minecraft:cod{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}} 8
effect give @a[scores={hs_class_load=1,hs_class_number=2}] minecraft:resistance 2 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=2}] minecraft:saturation 1 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=2}] minecraft:instant_health 1 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=2}] minecraft:jump_boost 999999 1 true
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=2}] minecraft:apple{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}} 5
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=2}] minecraft:cod{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}} 6
title @a[scores={hs_class_number=2,hs_killstreak_c=0,hs_killstreak=3..}] title ""
title @a[scores={hs_class_number=2,hs_killstreak_c=0,hs_killstreak=3..}] subtitle "UPGRADE!"
execute as @a[scores={hs_class_number=2,hs_killstreak_c=0,hs_killstreak=3..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
execute as @a[scores={hs_class_number=2,hs_killstreak_c=0,hs_killstreak=3..}] run title @a[tag=hs_init] actionbar ["",{"selector":"@s"},{"text":" got a killstreak going of 3!"}]
scoreboard players set @a[scores={hs_class_number=2,hs_killstreak_c=0,hs_killstreak=3..,hs_class_load=3}] hs_killstreak_c 1
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t7 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t7 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=2,hs_count_12=5..}] hs_restock_t7 0
execute as @a[scores={hs_class_load=3,hs_class_number=2}] store result score @s hs_count_12 run clear @s minecraft:firework_rocket{display:{Name:"{\"text\":\"Wrapped Fart\"}",Lore:["[{\"text\":\"Do a speed!\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t7=140..,hs_class_number=2,hs_count_12=..4}] minecraft:firework_rocket{display:{Name:"{\"text\":\"Wrapped Fart\"}",Lore:["[{\"text\":\"Do a speed!\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t7=..140,hs_count_12=..4}] hs_restock_t7 1
clear @a[scores={hs_class_load=3,hs_class_number=2,hs_count_12=6..}] minecraft:firework_rocket{display:{Name:"{\"text\":\"Wrapped Fart\"}",Lore:["[{\"text\":\"Do a speed!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t7=141..}] hs_restock_t7 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t40 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t40 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=2,hs_count_18=2..}] hs_restock_t40 0
execute as @a[scores={hs_class_load=3,hs_class_number=2}] store result score @s hs_count_18 run clear @s minecraft:lingering_potion{Potion:"minecraft:harming",display:{Name:"{\"text\":\"PAIN\"}",Lore:["[{\"text\":\"This will seriously hurt\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t40=800..,hs_class_number=2,hs_count_18=..1}] minecraft:lingering_potion{Potion:"minecraft:harming",display:{Name:"{\"text\":\"PAIN\"}",Lore:["[{\"text\":\"This will seriously hurt\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t40=..800,hs_count_18=..1}] hs_restock_t40 1
clear @a[scores={hs_class_load=3,hs_class_number=2,hs_count_18=3..}] minecraft:lingering_potion{Potion:"minecraft:harming",display:{Name:"{\"text\":\"PAIN\"}",Lore:["[{\"text\":\"This will seriously hurt\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t40=801..}] hs_restock_t40 0
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=2,hs_count_19=2..}] hs_restock_t40 0
execute as @a[scores={hs_class_load=3,hs_class_number=2}] store result score @s hs_count_19 run clear @s minecraft:lingering_potion{CustomPotionEffects:[{Id:19,Duration:240}],CustomPotionColor:1617727,display:{Name:"{\"text\":\"Toxic Farts\"}",Lore:["[{\"text\":\"Stinks AND Stings!\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t40=800..,hs_class_number=2,hs_count_19=..1}] minecraft:lingering_potion{CustomPotionEffects:[{Id:19,Duration:240}],CustomPotionColor:1617727,display:{Name:"{\"text\":\"Toxic Farts\"}",Lore:["[{\"text\":\"Stinks AND Stings!\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t40=..800,hs_count_19=..1}] hs_restock_t40 1
clear @a[scores={hs_class_load=3,hs_class_number=2,hs_count_19=3..}] minecraft:lingering_potion{CustomPotionEffects:[{Id:19,Duration:240}],CustomPotionColor:1617727,display:{Name:"{\"text\":\"Toxic Farts\"}",Lore:["[{\"text\":\"Stinks AND Stings!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t40=801..}] hs_restock_t40 0
execute as @a[scores={hs_class_load=1,hs_class_number=2}] run attribute @s minecraft:generic.max_health base set 18
execute if score $hs_timer hs_start matches 1 as @a[scores={hs_choice=3,hs_class_load=0}] run scoreboard players set @s hs_class_number 3
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] armor.head with minecraft:leather_helmet{display:{color:8991416},Unbreakable:1b,display:{color:8991416,Name:"{\"text\":\"Wizard Hat\"}",Lore:["[{\"text\":\"Very pointy, believe me!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] armor.chest with minecraft:leather_chestplate{display:{color:8991416},Unbreakable:1b,display:{color:8991416,Name:"{\"text\":\"Wizard Robes\"}",Lore:["[{\"text\":\"Fancy dress\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] armor.feet with minecraft:leather_boots{display:{color:8991416},Unbreakable:1b,display:{color:8991416,Name:"{\"text\":\"Flying but not flying boots\"}",Lore:["[{\"text\":\"Sadly just normal boots\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] armor.legs with minecraft:leather_leggings{display:{color:8991416},Unbreakable:1b,display:{color:8991416,Name:"{\"text\":\"Tight Leggings\"}",Lore:["[{\"text\":\"Very appealing to\",\"italic\":false}]","[{\"text\":\"the older Wizards\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.0 with minecraft:snowball{Enchantments:[{id:fire_aspect,lvl:1}],display:{Name:"{\"text\":\"Disguised Fireball\"}",Lore:["[{\"text\":\"Right-Click to shoot a Fireball!\",\"italic\":false}]","[{\"text\":\"A Wizard's most powerful spell!\",\"italic\":false}]","[{\"text\":\"Use without caution!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.1 with minecraft:warped_fungus_on_a_stick{Enchantments:[{id:fire_aspect,lvl:1}],display:{Name:"{\"text\":\"Gravity Wand\"}",Lore:["[{\"text\":\"Right-Click to send\",\"italic\":false}]","[{\"text\":\"people around you flying!\",\"italic\":false}]","[{\"text\":\"Leviosaaaahh!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=1,hs_class_number=3}] hs_spell_ag_cd 0
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.2 with minecraft:carrot_on_a_stick{Enchantments:[{id:fire_aspect,lvl:1}],display:{Name:"{\"text\":\"Puppet Master\"}",Lore:["[{\"text\":\"Right-Click to summon a bunch of\",\"italic\":false}]","[{\"text\":\"look-a-like decoys around you!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=1,hs_class_number=3}] hs_spell_dc_cd 0
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.3 with minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.4 with minecraft:potion{Potion:"minecraft:fire_resistance",display:{Name:"{\"text\":\"Strong Aftersun\"}",Lore:["[{\"text\":\"Prevents your skin from burning!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.5 with minecraft:potion{Potion:"minecraft:healing",display:{Name:"{\"text\":\"Instant Feel Better Drink\"}",Lore:["[{\"text\":\"Extremely Healthy\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.6 with minecraft:potion{Potion:"minecraft:regeneration",display:{Name:"{\"text\":\"Slowly Feel Better Drink\"}",Lore:["[{\"text\":\"Extremely Healthy\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.7 with minecraft:splash_potion{CustomPotionEffects:[{Id:18,Amplifier:1,Duration:240,ShowParticles:0b}],display:{Name:"{\"text\":\"Weakify Liquid\"}",Lore:["[{\"text\":\"Take away some muscle!\",\"italic\":false}]"]}} 1
item replace entity @a[scores={hs_class_load=1,hs_class_number=3}] hotbar.8 with minecraft:wooden_axe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage", Name:"generic.attack_damage", Amount:4.0, Operation:0, UUID:[I; 42853, 1689024593, -201178, -1559272105]}],display:{Name:"{\"text\":\"Breaker of Shields\"}",Lore:["[{\"text\":\"For those stinky knights\",\"italic\":false}]","[{\"text\":\"with all that HP\",\"italic\":false}]"]}} 1
give @a[scores={hs_class_load=1,hs_class_number=3}] minecraft:splash_potion{CustomPotionEffects:[{Id:9,Duration:280}],CustomPotionColor:1617796,display:{Name:"{\"text\":\"Pure Alcohol\"}",Lore:["[{\"text\":\"Will make people drunk!\",\"italic\":false}]"]}} 1
give @a[scores={hs_class_load=1,hs_class_number=3}] minecraft:apple{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}} 10
give @a[scores={hs_class_load=1,hs_class_number=3}] minecraft:cod{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}} 8
give @a[scores={hs_class_load=1,hs_class_number=3}] minecraft:splash_potion{CustomPotionEffects:[{Id:14,Duration:240,ShowParticles:0b}],display:{Name:"{\"text\":\"Dissappearify\"}",Lore:["[{\"text\":\"Dissappear out of\",\"italic\":false}]","[{\"text\":\"their lives\",\"italic\":false}]"]}} 1
effect give @a[scores={hs_class_load=1,hs_class_number=3}] minecraft:resistance 2 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=3}] minecraft:saturation 1 255 true
effect give @a[scores={hs_class_load=1,hs_class_number=3}] minecraft:instant_health 1 255 true
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=3}] minecraft:apple{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}} 5
give @a[scores={hs_class_load=3,hs_killstreak_c=0,hs_killstreak=3,hs_class_number=3}] minecraft:cod{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}} 6
title @a[scores={hs_class_number=3,hs_killstreak_c=0,hs_killstreak=3..}] title ""
title @a[scores={hs_class_number=3,hs_killstreak_c=0,hs_killstreak=3..}] subtitle "UPGRADE!"
execute as @a[scores={hs_class_number=3,hs_killstreak_c=0,hs_killstreak=3..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
execute as @a[scores={hs_class_number=3,hs_killstreak_c=0,hs_killstreak=3..}] run title @a[tag=hs_init] actionbar ["",{"selector":"@s"},{"text":" got a killstreak going of 3!"}]
scoreboard players set @a[scores={hs_class_number=3,hs_killstreak_c=0,hs_killstreak=3..,hs_class_load=3}] hs_killstreak_c 1
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t12 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t12 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=3,hs_count_1=1..}] hs_restock_t12 0
execute as @a[scores={hs_class_load=3,hs_class_number=3}] store result score @s hs_count_1 run clear @s minecraft:snowball{Enchantments:[{id:fire_aspect,lvl:1}],display:{Name:"{\"text\":\"Disguised Fireball\"}",Lore:["[{\"text\":\"Right-Click to shoot a Fireball!\",\"italic\":false}]","[{\"text\":\"A Wizard's most powerful spell!\",\"italic\":false}]","[{\"text\":\"Use without caution!\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t12=240..,hs_class_number=3,hs_count_1=..0}] minecraft:snowball{Enchantments:[{id:fire_aspect,lvl:1}],display:{Name:"{\"text\":\"Disguised Fireball\"}",Lore:["[{\"text\":\"Right-Click to shoot a Fireball!\",\"italic\":false}]","[{\"text\":\"A Wizard's most powerful spell!\",\"italic\":false}]","[{\"text\":\"Use without caution!\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t12=..240,hs_count_1=..0}] hs_restock_t12 1
clear @a[scores={hs_class_load=3,hs_class_number=3,hs_count_1=2..}] minecraft:snowball{Enchantments:[{id:fire_aspect,lvl:1}],display:{Name:"{\"text\":\"Disguised Fireball\"}",Lore:["[{\"text\":\"Right-Click to shoot a Fireball!\",\"italic\":false}]","[{\"text\":\"A Wizard's most powerful spell!\",\"italic\":false}]","[{\"text\":\"Use without caution!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t12=241..}] hs_restock_t12 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t240 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t240 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=3,hs_count_16=3..}] hs_restock_t240 0
execute as @a[scores={hs_class_load=3,hs_class_number=3}] store result score @s hs_count_16 run clear @s minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t240=4800..,hs_class_number=3,hs_count_16=..2}] minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t240=..4800,hs_count_16=..2}] hs_restock_t240 1
clear @a[scores={hs_class_load=3,hs_class_number=3,hs_count_16=4..}] minecraft:potion{Potion:"minecraft:night_vision",display:{Name:"{\"text\":\"Carrot Juice\"}",Lore:["[{\"text\":\"Get some darkvision in there! (60ft in dim light)\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t240=4801..}] hs_restock_t240 0
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=3,hs_count_17=3..}] hs_restock_t240 0
execute as @a[scores={hs_class_load=3,hs_class_number=3}] store result score @s hs_count_17 run clear @s minecraft:potion{Potion:"minecraft:fire_resistance",display:{Name:"{\"text\":\"Strong Aftersun\"}",Lore:["[{\"text\":\"Prevents your skin from burning!\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t240=4800..,hs_class_number=3,hs_count_17=..2}] minecraft:potion{Potion:"minecraft:fire_resistance",display:{Name:"{\"text\":\"Strong Aftersun\"}",Lore:["[{\"text\":\"Prevents your skin from burning!\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t240=..4800,hs_count_17=..2}] hs_restock_t240 1
clear @a[scores={hs_class_load=3,hs_class_number=3,hs_count_17=4..}] minecraft:potion{Potion:"minecraft:fire_resistance",display:{Name:"{\"text\":\"Strong Aftersun\"}",Lore:["[{\"text\":\"Prevents your skin from burning!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t240=4801..}] hs_restock_t240 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t60 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t60 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=3,hs_count_20=3..}] hs_restock_t60 0
execute as @a[scores={hs_class_load=3,hs_class_number=3}] store result score @s hs_count_20 run clear @s minecraft:potion{Potion:"minecraft:healing",display:{Name:"{\"text\":\"Instant Feel Better Drink\"}",Lore:["[{\"text\":\"Extremely Healthy\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t60=1200..,hs_class_number=3,hs_count_20=..2}] minecraft:potion{Potion:"minecraft:healing",display:{Name:"{\"text\":\"Instant Feel Better Drink\"}",Lore:["[{\"text\":\"Extremely Healthy\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t60=..1200,hs_count_20=..2}] hs_restock_t60 1
clear @a[scores={hs_class_load=3,hs_class_number=3,hs_count_20=4..}] minecraft:potion{Potion:"minecraft:healing",display:{Name:"{\"text\":\"Instant Feel Better Drink\"}",Lore:["[{\"text\":\"Extremely Healthy\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t60=1201..}] hs_restock_t60 0
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=3,hs_count_22=2..}] hs_restock_t60 0
execute as @a[scores={hs_class_load=3,hs_class_number=3}] store result score @s hs_count_22 run clear @s minecraft:potion{Potion:"minecraft:regeneration",display:{Name:"{\"text\":\"Slowly Feel Better Drink\"}",Lore:["[{\"text\":\"Extremely Healthy\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t60=1200..,hs_class_number=3,hs_count_22=..1}] minecraft:potion{Potion:"minecraft:regeneration",display:{Name:"{\"text\":\"Slowly Feel Better Drink\"}",Lore:["[{\"text\":\"Extremely Healthy\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t60=..1200,hs_count_22=..1}] hs_restock_t60 1
clear @a[scores={hs_class_load=3,hs_class_number=3,hs_count_22=3..}] minecraft:potion{Potion:"minecraft:regeneration",display:{Name:"{\"text\":\"Slowly Feel Better Drink\"}",Lore:["[{\"text\":\"Extremely Healthy\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t60=1201..}] hs_restock_t60 0
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=3,hs_count_24=2..}] hs_restock_t60 0
execute as @a[scores={hs_class_load=3,hs_class_number=3}] store result score @s hs_count_24 run clear @s minecraft:splash_potion{CustomPotionEffects:[{Id:18,Amplifier:1,Duration:240,ShowParticles:0b}],display:{Name:"{\"text\":\"Weakify Liquid\"}",Lore:["[{\"text\":\"Take away some muscle!\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t60=1200..,hs_class_number=3,hs_count_24=..1}] minecraft:splash_potion{CustomPotionEffects:[{Id:18,Amplifier:1,Duration:240,ShowParticles:0b}],display:{Name:"{\"text\":\"Weakify Liquid\"}",Lore:["[{\"text\":\"Take away some muscle!\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t60=..1200,hs_count_24=..1}] hs_restock_t60 1
clear @a[scores={hs_class_load=3,hs_class_number=3,hs_count_24=3..}] minecraft:splash_potion{CustomPotionEffects:[{Id:18,Amplifier:1,Duration:240,ShowParticles:0b}],display:{Name:"{\"text\":\"Weakify Liquid\"}",Lore:["[{\"text\":\"Take away some muscle!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t60=1201..}] hs_restock_t60 0
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=3,hs_count_26=2..}] hs_restock_t60 0
execute as @a[scores={hs_class_load=3,hs_class_number=3}] store result score @s hs_count_26 run clear @s minecraft:splash_potion{CustomPotionEffects:[{Id:9,Duration:280}],CustomPotionColor:1617796,display:{Name:"{\"text\":\"Pure Alcohol\"}",Lore:["[{\"text\":\"Will make people drunk!\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t60=1200..,hs_class_number=3,hs_count_26=..1}] minecraft:splash_potion{CustomPotionEffects:[{Id:9,Duration:280}],CustomPotionColor:1617796,display:{Name:"{\"text\":\"Pure Alcohol\"}",Lore:["[{\"text\":\"Will make people drunk!\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t60=..1200,hs_count_26=..1}] hs_restock_t60 1
clear @a[scores={hs_class_load=3,hs_class_number=3,hs_count_26=3..}] minecraft:splash_potion{CustomPotionEffects:[{Id:9,Duration:280}],CustomPotionColor:1617796,display:{Name:"{\"text\":\"Pure Alcohol\"}",Lore:["[{\"text\":\"Will make people drunk!\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t60=1201..}] hs_restock_t60 0
scoreboard players set @a[scores={hs_class_load=1}] hs_restock_t30 0
scoreboard players add @a[scores={hs_class_load=3}] hs_restock_t30 1
scoreboard players set @a[scores={hs_class_load=3,hs_class_number=3,hs_count_56=1..}] hs_restock_t30 0
execute as @a[scores={hs_class_load=3,hs_class_number=3}] store result score @s hs_count_56 run clear @s minecraft:splash_potion{CustomPotionEffects:[{Id:14,Duration:240,ShowParticles:0b}],display:{Name:"{\"text\":\"Dissappearify\"}",Lore:["[{\"text\":\"Dissappear out of\",\"italic\":false}]","[{\"text\":\"their lives\",\"italic\":false}]"]}} 0
give @a[scores={hs_class_load=3,hs_restock_t30=600..,hs_class_number=3,hs_count_56=..0}] minecraft:splash_potion{CustomPotionEffects:[{Id:14,Duration:240,ShowParticles:0b}],display:{Name:"{\"text\":\"Dissappearify\"}",Lore:["[{\"text\":\"Dissappear out of\",\"italic\":false}]","[{\"text\":\"their lives\",\"italic\":false}]"]}} 1
scoreboard players add @a[scores={hs_class_load=3,hs_restock_t30=..600,hs_count_56=..0}] hs_restock_t30 1
clear @a[scores={hs_class_load=3,hs_class_number=3,hs_count_56=2..}] minecraft:splash_potion{CustomPotionEffects:[{Id:14,Duration:240,ShowParticles:0b}],display:{Name:"{\"text\":\"Dissappearify\"}",Lore:["[{\"text\":\"Dissappear out of\",\"italic\":false}]","[{\"text\":\"their lives\",\"italic\":false}]"]}} 1
scoreboard players set @a[scores={hs_class_load=3,hs_restock_t30=601..}] hs_restock_t30 0
execute as @a[scores={hs_class_load=1,hs_class_number=3}] run attribute @s minecraft:generic.max_health base set 16
execute at @e[type=minecraft:snowball] run summon minecraft:fireball ^ ^ ^0.2 {power:[0.0,-0.01,0.0]}
execute as @e[type=minecraft:snowball] at @s run data modify entity @e[type=minecraft:fireball,limit=1,sort=nearest] Motion set from entity @s Motion
kill @e[type=minecraft:snowball]
execute as @a[scores={hs_use_snb=1..}] at @s run playsound minecraft:entity.ghast.shoot player @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run playsound minecraft:entity.zombie_villager.cure player @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=1..}] at @s run playsound minecraft:entity.bee.sting player @s
title @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=1..}] actionbar "Spell recharging..."
title @a[scores={hs_spell_ag_cd=1,hs_class_load=3}] actionbar "Gravity Spell ready!"
execute as @a[scores={hs_spell_ag_cd=1}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
scoreboard players remove @a[scores={hs_spell_ag_cd=1..}] hs_spell_ag_cd 1
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run effect give @e[distance=1..10] minecraft:levitation 3 1 false
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run playsound minecraft:item.trident.return player @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=1..}] at @s run playsound minecraft:entity.bee.sting player @s
title @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=1..}] actionbar "Spell recharging..."
title @a[scores={hs_spell_gl_cd=1,hs_class_load=3}] actionbar "Glow Spell ready!"
execute as @a[scores={hs_spell_gl_cd=1}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
scoreboard players remove @a[scores={hs_spell_gl_cd=1..}] hs_spell_gl_cd 1
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run effect give @e[distance=1..15] minecraft:glowing 6 1 true
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run playsound minecraft:item.totem.use player @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=1..}] at @s run playsound minecraft:entity.bee.sting player @s
title @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=1..}] actionbar "Spell recharging..."
title @a[scores={hs_spell_dc_cd=1,hs_class_load=3}] actionbar "Decoy Spell ready!"
execute as @a[scores={hs_spell_dc_cd=1}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
scoreboard players remove @a[scores={hs_spell_dc_cd=1..}] hs_spell_dc_cd 1
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run effect give @e[distance=1..3] minecraft:blindness 1 1 true
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~3 ~ ~ {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~-3 ~ ~ {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~ ~ ~3 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~ ~ ~-3 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~2 ~ ~2 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~2 ~ ~-2 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~2 ~ ~2 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~2 ~ ~-2 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~0.5 ~ ~1.5 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~0.5 ~ ~-1.5 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~-0.5 ~ ~1.5 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run summon minecraft:armor_stand ~-0.5 ~ ~-1.5 {Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711893}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11545754}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:"player_head",Count:1b,tag:{SkullOwner:""}}],HandItems:[{id:"carrot_on_a_stick",Count:1b},{}],DisabledSlots:4144959,Pose:{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}
scoreboard players set @e[type=armor_stand,tag=!decoy,tag=decoy_init] hs_spell_dc_cd 0
tag @e[type=armor_stand,tag=!decoy,tag=decoy_init] add decoy
execute as @e[type=armor_stand,tag=decoy,scores={hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 8 force @a
execute as @e[type=armor_stand,tag=decoy,scores={hs_spell_dc_cd=0}] at @s run playsound minecraft:item.trident.return player @a
scoreboard players add @e[type=armor_stand,tag=decoy,scores={hs_spell_dc_cd=..100}] hs_spell_dc_cd 1
execute as @e[type=armor_stand,tag=decoy,scores={hs_spell_dc_cd=100..}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 8 force @a
kill @e[type=armor_stand,tag=decoy,scores={hs_spell_dc_cd=100..}]
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_sb_cd=0}] at @s run playsound minecraft:entity.generic.explode player @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_sb_cd=1..}] at @s run playsound minecraft:entity.bee.sting player @s
title @a[scores={hs_use_wand_ca=1..,hs_spell_sb_cd=1..}] actionbar "Spell recharging..."
title @a[scores={hs_spell_sb_cd=1,hs_class_load=3}] actionbar "Smoke Bomb ready!"
execute as @a[scores={hs_spell_sb_cd=1}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
scoreboard players remove @a[scores={hs_spell_sb_cd=1..}] hs_spell_sb_cd 1
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_sb_cd=0}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_sb_cd=0}] at @s run effect give @e[distance=1..7] minecraft:blindness 7 1 true
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_sb_cd=0}] at @s run effect give @e[distance=1..7] minecraft:slowness 7 1 true
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run playsound minecraft:entity.ender_dragon.growl player @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=1..}] at @s run playsound minecraft:entity.bee.sting player @s
title @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=1..}] actionbar "Spell recharging..."
title @a[scores={hs_spell_dt_cd=1,hs_class_load=3}] actionbar "Dragon's Tongue ready!"
execute as @a[scores={hs_spell_dt_cd=1}] at @s run playsound minecraft:entity.experience_orb.pickup player @s
scoreboard players remove @a[scores={hs_spell_dt_cd=1..}] hs_spell_dt_cd 1
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run effect give @e[distance=1..8] minecraft:nausea 10 1 false
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run effect give @e[distance=1..8] minecraft:poison 10 2 false
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run effect give @e[distance=1..8] minecraft:slowness 3 3 false
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.0 ~0.0 ~0.0 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.0 ~0.0 ~0.0 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.0 ~0.0 ~0.0 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.0 ^0.0 ^0.0 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.0 ^0.0 ^0.0 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.196 ~0.02 ~0.04 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.196 ~0.02 ~0.04 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.196 ~0.02 ~0.04 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.016 ^0.003 ^0.02 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.016 ^0.003 ^0.16 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.368 ~0.04 ~0.156 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.368 ~0.04 ~0.156 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.368 ~0.04 ~0.156 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.029 ^0.012 ^0.04 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.029 ^0.012 ^0.32 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.495 ~0.06 ~0.339 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.495 ~0.06 ~0.339 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.495 ~0.06 ~0.339 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.04 ^0.027 ^0.06 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.04 ^0.027 ^0.48 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.557 ~0.08 ~0.574 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.557 ~0.08 ~0.574 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.557 ~0.08 ~0.574 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.045 ^0.046 ^0.08 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.045 ^0.046 ^0.64 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.54 ~0.1 ~0.841 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.54 ~0.1 ~0.841 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.54 ~0.1 ~0.841 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.043 ^0.067 ^0.1 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.043 ^0.067 ^0.8 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.435 ~0.12 ~1.118 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.435 ~0.12 ~1.118 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.435 ~0.12 ~1.118 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.035 ^0.089 ^0.12 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.035 ^0.089 ^0.96 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.238 ~0.14 ~1.38 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.238 ~0.14 ~1.38 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.238 ~0.14 ~1.38 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.019 ^0.11 ^0.14 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.019 ^0.11 ^1.12 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-0.047 ~0.16 ~1.599 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-0.047 ~0.16 ~1.599 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-0.047 ~0.16 ~1.599 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.004 ^0.128 ^0.16 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.004 ^0.128 ^1.28 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-0.409 ~0.18 ~1.753 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-0.409 ~0.18 ~1.753 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-0.409 ~0.18 ~1.753 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.033 ^0.14 ^0.18 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.033 ^0.14 ^1.44 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-0.832 ~0.2 ~1.819 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-0.832 ~0.2 ~1.819 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-0.832 ~0.2 ~1.819 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.067 ^0.145 ^0.2 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.067 ^0.145 ^1.6 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-1.295 ~0.22 ~1.779 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-1.295 ~0.22 ~1.779 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-1.295 ~0.22 ~1.779 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.104 ^0.142 ^0.22 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.104 ^0.142 ^1.76 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-1.77 ~0.24 ~1.621 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-1.77 ~0.24 ~1.621 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-1.77 ~0.24 ~1.621 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.142 ^0.13 ^0.24 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.142 ^0.13 ^1.92 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-2.228 ~0.26 ~1.34 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-2.228 ~0.26 ~1.34 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-2.228 ~0.26 ~1.34 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.178 ^0.107 ^0.26 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.178 ^0.107 ^2.08 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-2.638 ~0.28 ~0.938 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-2.638 ~0.28 ~0.938 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-2.638 ~0.28 ~0.938 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.211 ^0.075 ^0.28 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.211 ^0.075 ^2.24 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-2.97 ~0.3 ~0.423 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-2.97 ~0.3 ~0.423 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-2.97 ~0.3 ~0.423 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.238 ^0.034 ^0.3 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.238 ^0.034 ^2.4 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-3.195 ~0.32 ~-0.187 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-3.195 ~0.32 ~-0.187 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-3.195 ~0.32 ~-0.187 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.256 ^-0.015 ^0.32 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.256 ^-0.015 ^2.56 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-3.287 ~0.34 ~-0.869 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-3.287 ~0.34 ~-0.869 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-3.287 ~0.34 ~-0.869 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.263 ^-0.07 ^0.34 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.263 ^-0.07 ^2.72 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-3.228 ~0.36 ~-1.593 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-3.228 ~0.36 ~-1.593 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-3.228 ~0.36 ~-1.593 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.258 ^-0.127 ^0.36 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.258 ^-0.127 ^2.88 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-3.006 ~0.38 ~-2.325 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-3.006 ~0.38 ~-2.325 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-3.006 ~0.38 ~-2.325 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.24 ^-0.186 ^0.38 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.24 ^-0.186 ^3.04 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-2.615 ~0.4 ~-3.027 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-2.615 ~0.4 ~-3.027 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-2.615 ~0.4 ~-3.027 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.209 ^-0.242 ^0.4 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.209 ^-0.242 ^3.2 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-2.059 ~0.42 ~-3.661 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-2.059 ~0.42 ~-3.661 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-2.059 ~0.42 ~-3.661 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.165 ^-0.293 ^0.42 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.165 ^-0.293 ^3.36 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-1.352 ~0.44 ~-4.187 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-1.352 ~0.44 ~-4.187 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-1.352 ~0.44 ~-4.187 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.108 ^-0.335 ^0.44 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.108 ^-0.335 ^3.52 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-0.516 ~0.46 ~-4.571 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-0.516 ~0.46 ~-4.571 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-0.516 ~0.46 ~-4.571 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.041 ^-0.366 ^0.46 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.041 ^-0.366 ^3.68 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.42 ~0.48 ~-4.782 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.42 ~0.48 ~-4.782 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.42 ~0.48 ~-4.782 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.034 ^-0.383 ^0.48 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.034 ^-0.383 ^3.84 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~1.418 ~0.5 ~-4.795 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~1.418 ~0.5 ~-4.795 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~1.418 ~0.5 ~-4.795 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.113 ^-0.384 ^0.5 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.113 ^-0.384 ^4.0 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~2.436 ~0.52 ~-4.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~2.436 ~0.52 ~-4.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~2.436 ~0.52 ~-4.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.195 ^-0.368 ^0.52 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.195 ^-0.368 ^4.16 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~3.427 ~0.54 ~-4.173 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~3.427 ~0.54 ~-4.173 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~3.427 ~0.54 ~-4.173 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.274 ^-0.334 ^0.54 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.274 ^-0.334 ^4.32 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~4.343 ~0.56 ~-3.535 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~4.343 ~0.56 ~-3.535 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~4.343 ~0.56 ~-3.535 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.347 ^-0.283 ^0.56 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.347 ^-0.283 ^4.48 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~5.136 ~0.58 ~-2.695 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~5.136 ~0.58 ~-2.695 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~5.136 ~0.58 ~-2.695 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.411 ^-0.216 ^0.58 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.411 ^-0.216 ^4.64 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~5.761 ~0.6 ~-1.676 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~5.761 ~0.6 ~-1.676 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~5.761 ~0.6 ~-1.676 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.461 ^-0.134 ^0.6 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.461 ^-0.134 ^4.8 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~6.179 ~0.62 ~-0.515 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~6.179 ~0.62 ~-0.515 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~6.179 ~0.62 ~-0.515 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.494 ^-0.041 ^0.62 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.494 ^-0.041 ^4.96 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~6.356 ~0.64 ~0.746 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~6.356 ~0.64 ~0.746 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~6.356 ~0.64 ~0.746 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.509 ^0.06 ^0.64 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.509 ^0.06 ^5.12 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~6.272 ~0.66 ~2.056 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~6.272 ~0.66 ~2.056 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~6.272 ~0.66 ~2.056 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.502 ^0.164 ^0.66 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.502 ^0.164 ^5.28 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~5.912 ~0.68 ~3.36 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~5.912 ~0.68 ~3.36 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~5.912 ~0.68 ~3.36 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.473 ^0.269 ^0.68 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.473 ^0.269 ^5.44 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~5.277 ~0.7 ~4.599 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~5.277 ~0.7 ~4.599 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~5.277 ~0.7 ~4.599 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.422 ^0.368 ^0.7 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.422 ^0.368 ^5.6 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~4.38 ~0.72 ~5.714 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~4.38 ~0.72 ~5.714 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~4.38 ~0.72 ~5.714 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.35 ^0.457 ^0.72 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.35 ^0.457 ^5.76 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~3.245 ~0.74 ~6.65 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~3.245 ~0.74 ~6.65 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~3.245 ~0.74 ~6.65 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.26 ^0.532 ^0.74 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.26 ^0.532 ^5.92 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~1.91 ~0.76 ~7.356 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~1.91 ~0.76 ~7.356 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~1.91 ~0.76 ~7.356 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.153 ^0.588 ^0.76 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.153 ^0.588 ^6.08 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.421 ~0.78 ~7.789 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.421 ~0.78 ~7.789 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.421 ~0.78 ~7.789 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.034 ^0.623 ^0.78 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.034 ^0.623 ^6.24 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-1.164 ~0.8 ~7.915 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-1.164 ~0.8 ~7.915 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-1.164 ~0.8 ~7.915 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.093 ^0.633 ^0.8 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.093 ^0.633 ^6.4 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-2.781 ~0.82 ~7.714 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-2.781 ~0.82 ~7.714 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-2.781 ~0.82 ~7.714 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.222 ^0.617 ^0.82 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.222 ^0.617 ^6.56 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-4.362 ~0.84 ~7.179 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-4.362 ~0.84 ~7.179 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-4.362 ~0.84 ~7.179 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.349 ^0.574 ^0.84 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.349 ^0.574 ^6.72 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-5.837 ~0.86 ~6.316 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-5.837 ~0.86 ~6.316 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-5.837 ~0.86 ~6.316 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.467 ^0.505 ^0.86 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.467 ^0.505 ^6.88 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-7.138 ~0.88 ~5.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-7.138 ~0.88 ~5.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-7.138 ~0.88 ~5.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.571 ^0.412 ^0.88 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.571 ^0.412 ^7.04 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-8.2 ~0.9 ~3.709 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-8.2 ~0.9 ~3.709 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-8.2 ~0.9 ~3.709 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.656 ^0.297 ^0.9 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.656 ^0.297 ^7.2 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-8.969 ~0.92 ~2.051 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-8.969 ~0.92 ~2.051 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-8.969 ~0.92 ~2.051 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.717 ^0.164 ^0.92 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.717 ^0.164 ^7.36 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-9.397 ~0.94 ~0.233 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-9.397 ~0.94 ~0.233 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-9.397 ~0.94 ~0.233 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.752 ^0.019 ^0.94 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.752 ^0.019 ^7.52 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-9.453 ~0.96 ~-1.674 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-9.453 ~0.96 ~-1.674 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-9.453 ~0.96 ~-1.674 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.756 ^-0.134 ^0.96 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.756 ^-0.134 ^7.68 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-9.118 ~0.98 ~-3.591 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-9.118 ~0.98 ~-3.591 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-9.118 ~0.98 ~-3.591 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.729 ^-0.287 ^0.98 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.729 ^-0.287 ^7.84 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-8.391 ~1.0 ~-5.44 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-8.391 ~1.0 ~-5.44 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-8.391 ~1.0 ~-5.44 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.671 ^-0.435 ^1.0 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.671 ^-0.435 ^8.0 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-7.286 ~1.02 ~-7.139 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-7.286 ~1.02 ~-7.139 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-7.286 ~1.02 ~-7.139 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.583 ^-0.571 ^1.02 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.583 ^-0.571 ^8.16 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-5.834 ~1.04 ~-8.609 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-5.834 ~1.04 ~-8.609 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-5.834 ~1.04 ~-8.609 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.467 ^-0.689 ^1.04 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.467 ^-0.689 ^8.32 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-4.085 ~1.06 ~-9.781 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-4.085 ~1.06 ~-9.781 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-4.085 ~1.06 ~-9.781 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.327 ^-0.783 ^1.06 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.327 ^-0.783 ^8.48 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-2.099 ~1.08 ~-10.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-2.099 ~1.08 ~-10.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-2.099 ~1.08 ~-10.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.168 ^-0.848 ^1.08 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.168 ^-0.848 ^8.64 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~0.049 ~1.1 ~-11.0 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~0.049 ~1.1 ~-11.0 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~0.049 ~1.1 ~-11.0 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.004 ^-0.88 ^1.1 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.004 ^-0.88 ^8.8 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~2.274 ~1.12 ~-10.967 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~2.274 ~1.12 ~-10.967 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~2.274 ~1.12 ~-10.967 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.182 ^-0.877 ^1.12 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.182 ^-0.877 ^8.96 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~4.486 ~1.14 ~-10.48 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~4.486 ~1.14 ~-10.48 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~4.486 ~1.14 ~-10.48 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.359 ^-0.838 ^1.14 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.359 ^-0.838 ^9.12 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~6.592 ~1.16 ~-9.545 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~6.592 ~1.16 ~-9.545 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~6.592 ~1.16 ~-9.545 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.527 ^-0.764 ^1.16 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.527 ^-0.764 ^9.28 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~8.501 ~1.18 ~-8.184 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~8.501 ~1.18 ~-8.184 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~8.501 ~1.18 ~-8.184 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.68 ^-0.655 ^1.18 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.68 ^-0.655 ^9.44 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~10.126 ~1.2 ~-6.439 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~10.126 ~1.2 ~-6.439 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~10.126 ~1.2 ~-6.439 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.81 ^-0.515 ^1.2 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.81 ^-0.515 ^9.6 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~11.39 ~1.22 ~-4.37 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~11.39 ~1.22 ~-4.37 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~11.39 ~1.22 ~-4.37 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.911 ^-0.35 ^1.22 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.911 ^-0.35 ^9.76 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~12.229 ~1.24 ~-2.053 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~12.229 ~1.24 ~-2.053 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~12.229 ~1.24 ~-2.053 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.978 ^-0.164 ^1.24 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.978 ^-0.164 ^9.92 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~12.593 ~1.26 ~0.424 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~12.593 ~1.26 ~0.424 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~12.593 ~1.26 ~0.424 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.007 ^0.034 ^1.26 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.007 ^0.034 ^10.08 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~12.452 ~1.28 ~2.963 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~12.452 ~1.28 ~2.963 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~12.452 ~1.28 ~2.963 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.996 ^0.237 ^1.28 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.996 ^0.237 ^10.24 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~11.797 ~1.3 ~5.462 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~11.797 ~1.3 ~5.462 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~11.797 ~1.3 ~5.462 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.944 ^0.437 ^1.3 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.944 ^0.437 ^10.4 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~10.638 ~1.32 ~7.815 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~10.638 ~1.32 ~7.815 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~10.638 ~1.32 ~7.815 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.851 ^0.625 ^1.32 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.851 ^0.625 ^10.56 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~9.007 ~1.34 ~9.921 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~9.007 ~1.34 ~9.921 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~9.007 ~1.34 ~9.921 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.721 ^0.794 ^1.34 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.721 ^0.794 ^10.72 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~6.959 ~1.36 ~11.685 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~6.959 ~1.36 ~11.685 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~6.959 ~1.36 ~11.685 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.557 ^0.935 ^1.36 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.557 ^0.935 ^10.88 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~4.565 ~1.38 ~13.023 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~4.565 ~1.38 ~13.023 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~4.565 ~1.38 ~13.023 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.365 ^1.042 ^1.38 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.365 ^1.042 ^11.04 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~1.914 ~1.4 ~13.869 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~1.914 ~1.4 ~13.869 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~1.914 ~1.4 ~13.869 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.153 ^1.109 ^1.4 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.153 ^1.109 ^11.2 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-0.892 ~1.42 ~14.172 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-0.892 ~1.42 ~14.172 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-0.892 ~1.42 ~14.172 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.071 ^1.134 ^1.42 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.071 ^1.134 ^11.36 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-3.741 ~1.44 ~13.905 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-3.741 ~1.44 ~13.905 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-3.741 ~1.44 ~13.905 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.299 ^1.112 ^1.44 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.299 ^1.112 ^11.52 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-6.519 ~1.46 ~13.064 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-6.519 ~1.46 ~13.064 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-6.519 ~1.46 ~13.064 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.521 ^1.045 ^1.46 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.521 ^1.045 ^11.68 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-9.107 ~1.48 ~11.666 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-9.107 ~1.48 ~11.666 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-9.107 ~1.48 ~11.666 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.729 ^0.933 ^1.48 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.729 ^0.933 ^11.84 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-11.395 ~1.5 ~9.754 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-11.395 ~1.5 ~9.754 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-11.395 ~1.5 ~9.754 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.912 ^0.78 ^1.5 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.912 ^0.78 ^12.0 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-13.281 ~1.52 ~7.393 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-13.281 ~1.52 ~7.393 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-13.281 ~1.52 ~7.393 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-1.062 ^0.591 ^1.52 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-1.062 ^0.591 ^12.16 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-14.675 ~1.54 ~4.668 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-14.675 ~1.54 ~4.668 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-14.675 ~1.54 ~4.668 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-1.174 ^0.373 ^1.54 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-1.174 ^0.373 ^12.32 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-15.509 ~1.56 ~1.681 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-15.509 ~1.56 ~1.681 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-15.509 ~1.56 ~1.681 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-1.241 ^0.134 ^1.56 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-1.241 ^0.134 ^12.48 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-15.733 ~1.58 ~-1.452 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-15.733 ~1.58 ~-1.452 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-15.733 ~1.58 ~-1.452 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-1.259 ^-0.116 ^1.58 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-1.259 ^-0.116 ^12.64 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-15.323 ~1.6 ~-4.606 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-15.323 ~1.6 ~-4.606 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-15.323 ~1.6 ~-4.606 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-1.226 ^-0.369 ^1.6 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-1.226 ^-0.369 ^12.8 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-14.278 ~1.62 ~-7.653 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-14.278 ~1.62 ~-7.653 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-14.278 ~1.62 ~-7.653 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-1.142 ^-0.612 ^1.62 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-1.142 ^-0.612 ^12.96 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-12.627 ~1.64 ~-10.465 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-12.627 ~1.64 ~-10.465 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-12.627 ~1.64 ~-10.465 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-1.01 ^-0.837 ^1.64 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-1.01 ^-0.837 ^13.12 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-10.422 ~1.66 ~-12.921 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-10.422 ~1.66 ~-12.921 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-10.422 ~1.66 ~-12.921 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.834 ^-1.034 ^1.66 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.834 ^-1.034 ^13.28 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-7.739 ~1.68 ~-14.911 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-7.739 ~1.68 ~-14.911 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-7.739 ~1.68 ~-14.911 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.619 ^-1.193 ^1.68 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.619 ^-1.193 ^13.44 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-4.678 ~1.7 ~-16.344 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-4.678 ~1.7 ~-16.344 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-4.678 ~1.7 ~-16.344 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.374 ^-1.308 ^1.7 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.374 ^-1.308 ^13.6 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~-1.353 ~1.72 ~-17.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~-1.353 ~1.72 ~-17.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~-1.353 ~1.72 ~-17.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^-0.108 ^-1.372 ^1.72 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^-0.108 ^-1.372 ^13.76 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~2.104 ~1.74 ~-17.272 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~2.104 ~1.74 ~-17.272 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~2.104 ~1.74 ~-17.272 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.168 ^-1.382 ^1.74 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.168 ^-1.382 ^13.92 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~5.557 ~1.76 ~-16.7 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~5.557 ~1.76 ~-16.7 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~5.557 ~1.76 ~-16.7 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.445 ^-1.336 ^1.76 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.445 ^-1.336 ^14.08 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~8.864 ~1.78 ~-15.436 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~8.864 ~1.78 ~-15.436 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~8.864 ~1.78 ~-15.436 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.709 ^-1.235 ^1.78 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.709 ^-1.235 ^14.24 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~11.886 ~1.8 ~-13.518 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~11.886 ~1.8 ~-13.518 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~11.886 ~1.8 ~-13.518 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.951 ^-1.081 ^1.8 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.951 ^-1.081 ^14.4 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~14.494 ~1.82 ~-11.008 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~14.494 ~1.82 ~-11.008 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~14.494 ~1.82 ~-11.008 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.159 ^-0.881 ^1.82 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.159 ^-0.881 ^14.56 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~16.572 ~1.84 ~-7.996 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~16.572 ~1.84 ~-7.996 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~16.572 ~1.84 ~-7.996 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.326 ^-0.64 ^1.84 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.326 ^-0.64 ^14.72 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~18.024 ~1.86 ~-4.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~18.024 ~1.86 ~-4.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~18.024 ~1.86 ~-4.594 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.442 ^-0.367 ^1.86 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.442 ^-0.367 ^14.88 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~18.777 ~1.88 ~-0.931 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~18.777 ~1.88 ~-0.931 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~18.777 ~1.88 ~-0.931 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.502 ^-0.075 ^1.88 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.502 ^-0.075 ^15.04 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~18.785 ~1.9 ~2.848 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~18.785 ~1.9 ~2.848 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~18.785 ~1.9 ~2.848 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.503 ^0.228 ^1.9 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.503 ^0.228 ^15.2 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~18.033 ~1.92 ~6.592 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~18.033 ~1.92 ~6.592 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~18.033 ~1.92 ~6.592 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.443 ^0.527 ^1.92 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.443 ^0.527 ^15.36 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~16.534 ~1.94 ~10.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~16.534 ~1.94 ~10.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~16.534 ~1.94 ~10.147 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.323 ^0.812 ^1.94 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.323 ^0.812 ^15.52 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~14.335 ~1.96 ~13.366 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~14.335 ~1.96 ~13.366 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~14.335 ~1.96 ~13.366 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^1.147 ^1.069 ^1.96 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^1.147 ^1.069 ^15.68 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] at @s run particle minecraft:firework ~11.51 ~1.98 ~16.111 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] at @s run particle minecraft:firework ~11.51 ~1.98 ~16.111 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] at @s run particle minecraft:cloud ~11.51 ~1.98 ~16.111 0 0 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] at @s run particle minecraft:firework ^0.921 ^1.289 ^1.98 0 1 0 0 1 force @a
execute as @a[scores={hs_use_snb=1..}] at @s run particle minecraft:flame ^0.921 ^1.289 ^15.84 0 1 0 0 1 force @a
execute as @a[scores={hs_use_wand_ca=1..,hs_spell_sb_cd=0}] at @s run particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
scoreboard players set @e[type=minecraft:fireball,tag=!fbt] hs_spell_fb_cd 8
tag @e[type=minecraft:fireball,tag=!fbt] add fbt
scoreboard players remove @e[type=minecraft:fireball,scores={hs_spell_fb_cd=1..}] hs_spell_fb_cd 1
execute as @e[type=minecraft:fireball,scores={hs_spell_fb_cd=0}] at @s run playsound minecraft:item.crossbow.loading_end player @a
execute as @e[type=minecraft:fireball,scores={hs_spell_fb_cd=0}] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players set @e[type=minecraft:fireball,scores={hs_spell_fb_cd=0}] hs_spell_fb_cd 8
scoreboard players set @a[scores={hs_use_wand_wf=1..,hs_spell_ag_cd=0}] hs_spell_ag_cd 400
scoreboard players set @a[scores={hs_use_wand_ca=1..,hs_spell_gl_cd=0}] hs_spell_gl_cd 400
scoreboard players set @a[scores={hs_use_wand_ca=1..,hs_spell_sb_cd=0}] hs_spell_sb_cd 400
scoreboard players set @a[scores={hs_use_wand_ca=1..,hs_spell_dt_cd=0}] hs_spell_dt_cd 400
scoreboard players set @a[scores={hs_use_wand_ca=1..,hs_spell_dc_cd=0}] hs_spell_dc_cd 400
scoreboard players set @a[scores={hs_use_wand_wf=1..}] hs_use_wand_wf 0
scoreboard players set @a[scores={hs_use_wand_ca=1..}] hs_use_wand_ca 0
scoreboard players set @a[scores={hs_use_snb=1..}] hs_use_snb 0
execute at @a[scores={hs_class_load=3,hs_dead=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_apple",Count:1,tag:{display:{Name:"{\"text\":\"Gold Coated Fruit\"}",Lore:["[{\"text\":\"Not sure if you should\",\"italic\":false}]","[{\"text\":\"eat gold but I'm not your mother\",\"italic\":false}]"]}}}}
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_apple"}},tag=!kbi] add kbi
execute at @a[scores={hs_class_load=3,hs_dead=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:apple",Count:5,tag:{display:{Name:"{\"text\":\"Shiny Apple\"}",Lore:["[{\"text\":\"An apple a heart\",\"italic\":false}]","[{\"text\":\"keeps the killing away\",\"italic\":false}]"]}}}}
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:apple"}},tag=!kbi] add kbi
execute at @a[scores={hs_class_load=3,hs_dead=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cod",Count:5,tag:{display:{Name:"{\"text\":\"Uncampfired Fish\"}",Lore:["[{\"text\":\"Cook it on a campfire!\",\"italic\":false}]"]}}}}
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:cod"}},tag=!kbi] add kbi
scoreboard players set @a[scores={hs_dead=1..}] hs_class_load -3
scoreboard players set @a[scores={hs_dead=1..}] hs_dead 0
execute as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
tag @e[type=item] add processed
kill @e[type=item,tag=!kbi,nbt={OnGround:1b}]
execute as @e[type=minecraft:arrow,tag=!pua,nbt=!{pickup:0b}] run data modify entity @s pickup set value 0b
execute as @e[type=minecraft:spectral_arrow,tag=!pua,nbt=!{pickup:0b}] run data modify entity @s pickup set value 0b
scoreboard players add $hs_timer hs_timer 1
execute if score $hs_timer hs_timer matches 2 run title @a title "Hestian Classes"
execute if score $hs_timer hs_timer matches 2 run title @a subtitle "Starting in 10 minutes!"
execute if score $hs_timer hs_timer matches 11400 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 11400 run title @a[tag=hs_init] subtitle "Starting in 30 seconds!"
execute if score $hs_timer hs_timer matches 11600 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 11600 run title @a[tag=hs_init] subtitle "Starting in 20 seconds!"
execute if score $hs_timer hs_timer matches 11800 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 11800 run title @a[tag=hs_init] subtitle "Starting in 10 seconds!"
execute if score $hs_timer hs_timer matches 11900 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 11900 run title @a[tag=hs_init] subtitle "Starting in 5 seconds!"
execute if score $hs_timer hs_timer matches 30000 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 30000 run title @a[tag=hs_init] subtitle "10 minutes left!"
execute if score $hs_timer hs_timer matches 36000 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 36000 run title @a[tag=hs_init] subtitle "5 minutes left!"
execute if score $hs_timer hs_timer matches 40800 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 40800 run title @a[tag=hs_init] subtitle "60 seconds left!"
execute if score $hs_timer hs_timer matches 41400 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 41400 run title @a[tag=hs_init] subtitle "30 seconds left!"
execute if score $hs_timer hs_timer matches 41800 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 41800 run title @a[tag=hs_init] subtitle "10 seconds left!"
execute if score $hs_timer hs_timer matches 41900 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 41900 run title @a[tag=hs_init] subtitle "5"
execute if score $hs_timer hs_timer matches 41920 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 41920 run title @a[tag=hs_init] subtitle "4"
execute if score $hs_timer hs_timer matches 41940 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 41940 run title @a[tag=hs_init] subtitle "3"
execute if score $hs_timer hs_timer matches 41960 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 41960 run title @a[tag=hs_init] subtitle "2"
execute if score $hs_timer hs_timer matches 41980 run title @a[tag=hs_init] title ""
execute if score $hs_timer hs_timer matches 41980 run title @a[tag=hs_init] subtitle "1"
execute if score $hs_timer hs_timer matches 12000 run scoreboard players set $hs_timer hs_start 1
execute if score $hs_timer hs_timer matches 12000 run scoreboard players set @a[tag=hs_init] hs_killcount 0
execute if score $hs_timer hs_timer matches 12000 run execute as @a[tag=hs_init] at @s run playsound minecraft:entity.experience_orb.pickup player @s
execute if score $hs_timer hs_timer matches 12000 run title @a[tag=hs_init] title "START!"
execute if score $hs_timer hs_timer matches 12000 run title @a[tag=hs_init] subtitle "Choose a class!"
execute if score $hs_timer hs_timer matches 12000 run title @a[tag=hs_init] actionbar "Match duration: 25 minutes"
execute if score $hs_timer hs_timer matches 42000 run function hestian_classes:get_winner
execute if score $hs_timer hs_timer matches 42003 run effect give @a[scores={hs_won=1}] minecraft:glowing 999999 1 true
execute if score $hs_timer hs_timer matches 42900 run scoreboard players reset * hs_won
execute if score $hs_timer hs_timer matches 42900 run scoreboard players reset * hs_killcount
execute if score $hs_timer hs_timer matches 42900 run scoreboard players set @a[tag=hs_init] hs_class_load -2
execute if score $hs_timer hs_timer matches 42900 run scoreboard players set $hs_timer hs_timer 0
