world_name = 'teslan_7_hc'
datapack_output_path = f'../{world_name}/datapacks/Hestian_Classes_Datapack.zip'
### World options ###
#              "x y z"
coords_spawn = "-7.5 46 -176.5"

#			   ["x y z","x y z",..]
coords_start = ["28 -23 -106",
        "-28 -13 -86",
        "-38 -19 -74",
        "21 -23 16",
        "49 -21 23",
        "58 -16 3",
        "68 -10 22",
        "66 -1 -4",
        "35 -23 -75",
        "-9 -20 -109",
        "13 -22 -30",
        "4 -23 12",
        "25 2 -44",
        "-7 -21 -69",
        "88 -26 -45",
        "-14 -13 2",
        "-44 -10 -55",
        "49 4 40"]

gamerules = [
#   [gamerule,"true/false"]
	["announceAdvancements","false"],
	["commandBlockOutput","false"],
	["disableElytraMovementCheck","false"],
	["disableRaids","true"],
	["doDaylightCycle","true"],
	["doWeatherCycle","false"],
	["keepInventory","true"],
	["doMobSpawning","false"],
	["doTraderSpawning","false"],
	["doFireTick","false"]
]

objectives = [
	["hs_class_load","dummy"],
	["hs_class_number","dummy"],
	["hs_relog","minecraft.custom:minecraft.leave_game"],
	["hs_killcount","playerKillCount",'{"text":"Total Score","color":"red","bold":"true"}'],
	["hs_killstreak","playerKillCount"],
	["hs_killstreak_c","dummy"],
	["hs_spell_fb_cd","dummy"],
	["hs_spell_ag_cd","dummy"],
	["hs_spell_gl_cd","dummy"],
	["hs_spell_sb_cd","dummy"],
	["hs_spell_dt_cd","dummy"],
	["hs_spell_dc_cd","dummy"],
	["hs_random_pos","dummy"],
	["hs_deathcount","deathCount"],
	["hs_dead","deathCount"],
	["hs_deaths","deathCount"],
	["hs_timer","dummy"],
	["hs_temp","dummy"],
	["hs_tasks","dummy"],
	["hs_won","dummy"],
	["hs_start","dummy"],
	["hs_choice","trigger"],
	["hs_use_wand_wf","minecraft.used:minecraft.warped_fungus_on_a_stick"],
	["hs_use_wand_ca","minecraft.used:minecraft.carrot_on_a_stick"],
	["hs_use_snb","minecraft.used:minecraft.snowball"],
	["hs_health","health"],
	["hs_timerb","dummy"],
	["hs_li","dummy"],
	["hs_li_t","dummy"]
]

add_minecraft_to_commands = False

### General Game Options ###

match_duration_minutes = 25

lobby_wait_minutes = 10

after_match_seconds = 45

enable_kill_bounty = True

disable_item_dropping = True

info_book = {
	"pages": [
		(f'\'["",{{"text":"\\\\n"}},{{"text":" \\\\u0020","bold":true,"color":"dark_red"}},{{"text":"Hestian Classes","bold":true,"color":"dark_red",'
			f'"clickEvent":{{"action":"open_url","value":"https://www.youtube.com/watch?v=JyAJgnbKCe4"}}}},{{"text":"\\\\n\\\\n \\\\u0020'
			f' \\\\u0020 \\\\u0020 \\\\u0020 \\\\u0020 \\\\u0020","color":"reset"}},{{"text":"by","color":"#8E7191"}},{{"text":"\\\\n \\\\u0020 '
			f'\\\\u0020 \\\\u0020 \\\\u0020 ","color":"reset"}},{{"text":"Woflje","bold":true,"color":"light_purple"}}]\',')
	],
	"title": "Hestian Classes",
	"author": "Woflje"
}

# 1.19
minecraft_version = "1.19"

### Game options ###




items_info = [
	{
		"#":	"0",
		"name": "Auto Gen Book",
		"id": "",
		"lore": "",
		"nbt": []
	},
	{
		"#":	"1",
		"name": "Disguised Fireball",
		"id": "minecraft:snowball",
		"lore": "Right-Click to shoot a Fireball!\nA Wizard's most powerful spell!\nUse without caution!",
		"nbt": ["Enchantments:[{id:fire_aspect,lvl:1}]"]
	},
	{
		"#":	"2",
		"name": "Dragons Breath",
		"id": "minecraft:snowball",
		"lore": "Right-Click to shoot a Fireball!\nRain down on your prey!",
		"nbt": ["Enchantments:[{}]"]
	},
	{
		"#":	"3",
		"name": "Gravity Wand",
		"id": "minecraft:warped_fungus_on_a_stick",
		"lore": "Right-Click to send\npeople around you flying!\nLeviosaaaahh!",
		"nbt": ["Enchantments:[{id:fire_aspect,lvl:1}]"]
	},
	{
		"#":	"4",
		"name": "Glow Wand",
		"id": "minecraft:carrot_on_a_stick",
		"lore": "Right-Click to make\npoeple around you glow!\nYes - Wallhacks",
		"nbt": ["Enchantments:[{}]"]
	},
	{
		"#":	"5",
		"name": "Smoke Bomb",
		"id": "minecraft:carrot_on_a_stick",
		"lore": "Right-Click to ignite a smokebomb and\nblind nearby enemies",
		"nbt": ["Enchantments:[{}]"]
	},
	{
		"#":	"6",
		"name": "Dragons Tongue",
		"id": "minecraft:carrot_on_a_stick",
		"lore": "Right-Click to\nshout like a Dragon and\nstun and confuse enemies!",
		"nbt": ["Enchantments:[{id:fire_aspect,lvl:2}]"]
	},
	{
		"#":	"7",
		"name": "Puppet Master",
		"id": "minecraft:carrot_on_a_stick",
		"lore": "Right-Click to summon a bunch of\nlook-a-like decoys around you!",
		"nbt": ["Enchantments:[{id:fire_aspect,lvl:1}]"]
	},
	{
		"#":	"8",
		"name": "Shiny Apple",
		"id": "minecraft:apple",
		"lore": "An apple a heart\nkeeps the killing away",
		"nbt": []
	},
	{
		"#":	"9",
		"name": "Uncampfired Fish",
		"id": "minecraft:cod",
		"lore": "Cook it on a campfire!",
		"nbt": []
	},
	{
		"#":	"10",
		"name": "Protective Cardboard",
		"id": "minecraft:shield",
		"lore": "Protects you from pointy things!\nYou will get a new one some\nwhile after it breaks",
		"nbt": ['BlockEntityTag:{Base:14,Patterns:[{Pattern:"bri",Color:15},{Pattern:"bri",Color:14},{Pattern:"cbo",Color:15},{Pattern:"flo",Color:4}]}','Damage:300']
	},
	{
		"#":	"11",
		"name": "True Dragon Flappers",
		"id": "minecraft:elytra",
		"lore": "Will keep you in the sky, where you belong",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"12",
		"name": "Wrapped Fart",
		"id": "minecraft:firework_rocket",
		"lore": "Do a speed!",
		"nbt": []
	},
	{
		"#":	"13",
		"name": "Nightmare Head Replacement",
		"id": "minecraft:dragon_head",
		"lore": "GROWL!",
		"nbt": []
	},
	{
		"#":	"14",
		"name": "Stronk Drakon Leks",
		"id": "minecraft:netherite_leggings",
		"lore": "THICC Thighs!",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"15",
		"name": "Stompy Dragon Feet",
		"id": "minecraft:netherite_boots",
		"lore": "Can catch you from quite a fall!",
		"nbt": ["Enchantments:[{id:feather_falling,lvl:4}]",'Unbreakable:1b']
	},
	{
		"#":	"16",
		"name": "Carrot Juice",
		"id": "minecraft:potion",
		"lore": "Get some darkvision in there! (60ft in dim light)",
		"nbt": ['Potion:"minecraft:night_vision"']
	},
	{
		"#":	"17",
		"name": "Strong Aftersun",
		"id": "minecraft:potion",
		"lore": "Prevents your skin from burning!",
		"nbt": ['Potion:"minecraft:fire_resistance"']
	},
	{
		"#":	"18",
		"name": "PAIN",
		"id": "minecraft:lingering_potion",
		"lore": "This will seriously hurt",
		"nbt": ['Potion:"minecraft:harming"']
	},
	{
		"#":	"19",
		"name": "Toxic Farts",
		"id": "minecraft:lingering_potion",
		"lore": "Stinks AND Stings!",
		"nbt": ['CustomPotionEffects:[{Id:19,Duration:240}],CustomPotionColor:1617727']
	},
	{
		"#":	"20",
		"name": "Instant Feel Better Drink",
		"id": "minecraft:potion",
		"lore": "Extremely Healthy",
		"nbt": ['Potion:"minecraft:healing"']
	},
	{
		"#":	"21",
		"name": "Leg Day Faker",
		"id": "minecraft:potion",
		"lore": "Suddenly grows muscle\non your legs for STRONK jumps!",
		"nbt": ['Potion:"minecraft:leaping"']
	},
	{
		"#":	"22",
		"name": "Slowly Feel Better Drink",
		"id": "minecraft:potion",
		"lore": "Extremely Healthy",
		"nbt": ['Potion:"minecraft:regeneration"']
	},
	{
		"#":	"23",
		"name": "Sanic Serum",
		"id": "minecraft:potion",
		"lore": "Hedgehogs poop when\nthey run fast",
		"nbt": ['Potion:"minecraft:strong_swiftness"']
	},
	{
		"#":	"24",
		"name": "Weakify Liquid",
		"id": "minecraft:splash_potion",
		"lore": "Take away some muscle!",
		"nbt": ['CustomPotionEffects:[{Id:18,Amplifier:1,Duration:240,ShowParticles:0b}]']
	},
	{
		"#":	"25",
		"name": "Toxic Fart",
		"id": "minecraft:splash_potion",
		"lore": "Stinks AND Stings!",
		"nbt": ['CustomPotionEffects:[{Id:19,Duration:240,ShowParticles:0b}],CustomPotionColor:484402']
	},
	{
		"#":	"26",
		"name": "Pure Alcohol",
		"id": "minecraft:splash_potion",
		"lore": "Will make people drunk!",
		"nbt": ['CustomPotionEffects:[{Id:9,Duration:280}],CustomPotionColor:1617796']
	},
	{
		"#":	"27",
		"name": "Gold Coated Fruit",
		"id": "minecraft:golden_apple",
		"lore": "Not sure if you should\neat gold but I'm not your mother",
		"nbt": []
	},
	{
		"#":	"28",
		"name": "Wizard Hat",
		"id": "minecraft:leather_helmet",
		"lore": "Very pointy, believe me!",
		"nbt": ["display:{color:8991416}",'Unbreakable:1b']
	},
	{
		"#":	"29",
		"name": "Wizard Robes",
		"id": "minecraft:leather_chestplate",
		"lore": "Fancy dress",
		"nbt": ["display:{color:8991416}",'Unbreakable:1b']
	},
	{
		"#":	"30",
		"name": "Flying but not flying boots",
		"id": "minecraft:leather_boots",
		"lore": "Sadly just normal boots",
		"nbt": ["display:{color:8991416}",'Unbreakable:1b']
	},
	{
		"#":	"31",
		"name": "Tight Leggings",
		"id": "minecraft:leather_leggings",
		"lore": "Very appealing to\nthe older Wizards",
		"nbt": ["display:{color:8991416}",'Unbreakable:1b']
	},
	{
		"#":	"32",
		"name": "Ninja Helmet",
		"id": "minecraft:leather_helmet",
		"lore": "A little present from King Slime",
		"nbt": ["display:{color:1908001}",'Unbreakable:1b']
	},
	{
		"#":	"33",
		"name": "Ninja Tunic",
		"id": "minecraft:leather_chestplate",
		"lore": "So... soo many pockets",
		"nbt": ["display:{color:1908001}",'Unbreakable:1b']
	},
	{
		"#":	"34",
		"name": "QuickKnife Boots",
		"id": "minecraft:leather_boots",
		"lore": "A true Assassin\nhas a knife everywhere!\nDon't stick them in\nyour ribcage however",
		"nbt": ["display:{color:1908001}",'Unbreakable:1b']
	},
	{
		"#":	"35",
		"name": "Boring Leggings",
		"id": "minecraft:leather_leggings",
		"lore": "All your fancy stuff ends here.\nNo more budget buddy",
		"nbt": ["display:{color:1908001}",'Unbreakable:1b']
	},
	{
		"#":	"36",
		"name": "Ranger Cap",
		"id": "minecraft:leather_helmet",
		"lore": "Protects you from sunburn or\nwhatever rangers risk ranging",
		"nbt": ["display:{color:6192150}",'Unbreakable:1b']
	},
	{
		"#":	"37",
		"name": "Ranger Tunic",
		"id": "minecraft:leather_chestplate",
		"lore": "Warm during cold nights,\ncool during hot days",
		"nbt": ["display:{color:6192150}",'Unbreakable:1b']
	},
	{
		"#":	"38",
		"name": "Boot remains",
		"id": "minecraft:leather_boots",
		"lore": "Very old and way\ntoo trampled boots",
		"nbt": ["display:{color:6192150}",'Unbreakable:1b']
	},
	{
		"#":	"39",
		"name": "Worn Jeans",
		"id": "minecraft:leather_leggings",
		"lore": "Do you EVER wash\nyour clothes?",
		"nbt": ["display:{color:6192150}",'Unbreakable:1b']
	},
	{
		"#":	"40",
		"name": "Aluminium Hat",
		"id": "minecraft:chainmail_helmet",
		"lore": "Protects you from 5G",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"41",
		"name": "Tank T-Shirt",
		"id": "minecraft:chainmail_chestplate",
		"lore": "Makes you a medieval tank",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"42",
		"name": "Heavy Boots",
		"id": "minecraft:leather_boots",
		"lore": "Protects you from beartraps\nprobably",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"43",
		"name": "Iron Ironed Iron",
		"id": "minecraft:chainmail_leggings",
		"lore": "Protects you from pointy things\nhitting your sensitive thighs",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"44",
		"name": "Danger Stick",
		"id": "minecraft:iron_sword",
		"lore": "A stick with a pointy end.\nProbably hurts.\nDangerous for sure",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"45",
		"name": "War Axe",
		"id": "minecraft:iron_axe",
		"lore": "Keep out of reach from kids",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"46",
		"name": "Yeet & Yanker",
		"id": "minecraft:fishing_rod",
		"lore": "100% Stolen",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"47",
		"name": "Flying Danger Stick",
		"id": "minecraft:arrow",
		"lore": "It does not just fly, IT FLIES",
		"nbt": []
	},
	{
		"#":	"48",
		"name": "Stick Launcher",
		"id": "minecraft:bow",
		"lore": "TWANG",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"49",
		"name": "Heavy Stick Launcher",
		"id": "minecraft:crossbow",
		"lore": "For tough boys and girls",
		"nbt": ['Unbreakable:1b']
	},
	{
		"#":	"50",
		"name": "Shiny Stick",
		"id": "minecraft:spectral_arrow",
		"lore": "Wallhack activate",
		"nbt": []
	},
	{
		"#":	"51",
		"name": "Stinky Stick",
		"id": "minecraft:tipped_arrow",
		"lore": "It flies it stinks\nit stings it stick",
		"nbt": ['CustomPotionEffects:[{Id:19,Duration:100}],CustomPotionColor:1617727']
	},
	{
		"#":	"52",
		"name": "Inner Turtle Insticts",
		"id": "minecraft:potion",
		"lore": "Parry like a mad man",
		"nbt": ['Potion:"minecraft:turtle_master"']
	},
	{
		"#":	"53",
		"name":	"Breaker of Shields",
		"id":	"minecraft:wooden_axe",
		"lore":	"For those stinky knights\nwith all that HP",
		"nbt":	['Unbreakable:1b','AttributeModifiers:[{AttributeName:"generic.attack_damage", Name:"generic.attack_damage", Amount:4.0, Operation:0, UUID:[I; 42853, 1689024593, -201178, -1559272105]}]']
	},
	{
		"#":	"54",
		"name":	"Sneak Tomahawk",
		"id":	"minecraft:golden_axe",
		"lore":	"Roll 2D6 extra\nfor Sneak Attack\nBreaks after one use\n8sec to get it back",
		"nbt": ["Enchantments:[{id:sharpness,lvl:5}]",'Damage:31']
	},
	{
		"#":	"55",
		"name": "Hit and Run",
		"id": "minecraft:splash_potion",
		"lore": "Take a sprint at your foes!",
		"nbt": ['CustomPotionEffects:[{Id:1,Amplifier:2,Duration:120,ShowParticles:1b}]']
	},
	{
		"#":	"56",
		"name": "Dissappearify",
		"id": "minecraft:splash_potion",
		"lore": "Dissappear out of\ntheir lives",
		"nbt": ['CustomPotionEffects:[{Id:14,Duration:240,ShowParticles:0b}]']
	}
]
for i in range(0,len(items_info)):
	item_d = items_info[i]
	item_d['lore'] = item_d['lore'].replace("\n","\\\",\\\"italic\\\":false}]\",\"[{\\\"text\\\":\\\"")
	items_info[i] = item_d

kill_bounty_items = [[27,1],[8,5],[9,5]]

effects = [
	{
		"id":				"minecraft:resistance",
		"level":			"255",
		"duration":			"999999",
		"hide_particles":	"true"
	},
	{
		"id":				"minecraft:resistance",
		"level":			"255",
		"duration":			"2",
		"hide_particles":	"true"
	},
	{
		"id":				"minecraft:saturation",
		"level":			"255",
		"duration":			"999999",
		"hide_particles":	"true"
	},
	{
		"id":				"minecraft:instant_health",
		"level":			"255",
		"duration":			"1",
		"hide_particles":	"true"
	},
	{
		"id":				"minecraft:jump_boost",
		"level":			"1",
		"duration":			"999999",
		"hide_particles":	"true"
	},
	{
		"id":				"minecraft:speed",
		"level":			"0",
		"duration":			"999999",
		"hide_particles":	"true"
	},
	{
		"id":				"minecraft:saturation",
		"level":			"255",
		"duration":			"1",
		"hide_particles":	"true"
	},
	{
		"id":				"minecraft:weakness",
		"level":			"255",
		"duration":			"999999",
		"hide_particles":	"true"
	}
]

classes = [
	{
		"name":   "Assassin",
		"loadout":  [
		#	[item_number,count,replace,slot]
			[5,1,True,"hotbar.1"],
			[32,1,True,"armor.head"],
			[33,1,True,"armor.chest"],
			[34,1,True,"armor.feet"],
			[35,1,True,"armor.legs"],
			[54,1,True,"weapon.offhand"],
			[44,1,True,"hotbar.0"],
			[46,1,True,"hotbar.2"],
			[25,1,True,"hotbar.3"],
			[16,1,True,"hotbar.4"],
			[8,10,False,""],
			[9,8,False,""],
			[55,1,False,""]
		],
		"restocks": [
		#	[item_number,delay_seconds,max]
			[16,360,2],
			[25,120,2],
			[54,17,1],
			[55,15,2]
		],
		"killstreak_rewards": [
		#		[[[item_number,count,replace,slot],..],killstreak,[effects],sound]
				[[[8,5,False,""],[9,6,False,""]],3,[],6]
		],
		"effects": [1,6,3,5],
		"hearts": 6
	},
	{
		"name":   "Ranger",
		"loadout":  [
		#	[item_number,count,replace,slot]
			[36,1,True,"armor.head"],
			[37,1,True,"armor.chest"],
			[38,1,True,"armor.feet"],
			[39,1,True,"armor.legs"],
			[48,1,True,"hotbar.0"],
			[47,5,True,"hotbar.1"],
			[21,1,True,"hotbar.4"],
			[50,2,True,"hotbar.2"],
			[51,1,True,"hotbar.3"],
			[8,10,False,""],
			[9,8,False,""]
		],
		"restocks": [
		#	[item_number,delay_seconds,max]
			[47,5,6],
			[50,10,3],
			[51,14,1]
		],
		"killstreak_rewards": [
		#		[[[item_number,count,replace,slot],..],killstreak,[effects],sound]
				[[[8,5,False,""],[9,6,False,""],[49,1,False,""]],3,[],6]
		],
		"effects": [1,6,3,5],
		"hearts": 9
	},
	{
		"name":   "DragonBorn",
		"loadout":  [
		#	[item_number,count,replace,slot]
			[13,1,True,"armor.head"],
			[11,1,True,"armor.chest"],
			[15,1,True,"armor.feet"],
			[14,1,True,"armor.legs"],
			[6,1,True,"hotbar.0"],
			[16,5,True,"hotbar.1"],
			[17,1,True,"hotbar.2"],
			[18,1,True,"hotbar.3"],
			[19,1,True,"hotbar.4"],
			[8,10,False,""],
			[9,8,False,""]
		],
		"restocks": [
		#	[item_number,delay_seconds,max]e
			[12,7,5],
			[18,40,2],
			[19,40,2]
		],
		"killstreak_rewards": [
		#		[[[item_number,count,replace,slot],..],killstreak,[effects],sound]
				[[[8,5,False,""],[9,6,False,""]],3,[],6]
		],
		"effects": [1,6,3,4],
		"hearts": 9
	},
	# {
	# 	"name":   "Knight",
	# 	"loadout":  [
	# 	#	[item_number,count,replace,slot]
	# 		[40,1,True,"armor.head"],
	# 		[41,1,True,"armor.chest"],
	# 		[42,1,True,"armor.feet"],
	# 		[43,1,True,"armor.legs"],
	# 		[44,1,True,"hotbar.0"],
	# 		[10,1,True,"weapon.offhand"],
	# 		[52,1,True,"hotbar.1"],
	# 		[8,10,False,""],
	# 		[9,8,False,""]
	# 	],
	# 	"restocks": [
	# 	#	[item_number,delay_seconds,max]
	# 		[10,300,1],
	# 		[52,90,1]
	# 	],
	# 	"killstreak_rewards": [
	# 	#		[[[item_number,count,replace,slot],..],killstreak,[effects],sound]
	# 			[[[8,5,False,""],[9,6,False,""],[45,1,False,""]],3,[],6]
	# 	],
	# 	"effects": [1,6,3],
	# 	"hearts": 12
	# }
	# ,
	{
		"name":   "Wizard",
		"loadout":  [
		#	[item_number,count,replace,slot]
			[28,1,True,"armor.head"],
			[29,1,True,"armor.chest"],
			[30,1,True,"armor.feet"],
			[31,1,True,"armor.legs"],
			[1,1,True,"hotbar.0"],
			[3,1,True,"hotbar.1"],
			[7,1,True,"hotbar.2"],
			[16,1,True,"hotbar.3"],
			[17,1,True,"hotbar.4"],
			[20,1,True,"hotbar.5"],
			[22,1,True,"hotbar.6"],
			[24,1,True,"hotbar.7"],
			[53,1,True,"hotbar.8"],
			[26,1,False,""],
			[8,10,False,""],
			[9,8,False,""],
			[56,1,False,""]
		],
		"restocks": [
		#	[item_number,delay_seconds,max]
			[1,12,1],
			[16,240,3],
			[17,240,3],
			[20,60,3],
			[22,60,2],
			[24,60,2],
			[26,60,2],
			[56,30,1]
		],
		"killstreak_rewards": [
		#		[[[item_number,count,replace,slot],..],killstreak,[effects],sound]
				[[[8,5,False,""],[9,6,False,""]],3,[],6]
		],
		"effects": [1,6,3],
		"hearts": 8
	}
]
sounds = [
	"minecraft:block.anvil.destroy",
	"minecraft:block.bamboo.hit",
	"minecraft:entity.bee.sting",
	"minecraft:entity.ender_dragon.growl",
	"minecraft:block.end_portal.spawn",
	"minecraft:entity.zombie_villager.cure",
	"minecraft:entity.experience_orb.pickup",
	"minecraft:entity.player.levelup",
	"minecraft:item.totem.use",
	"minecraft:item.trident.return",
	"minecraft:ui.loom.select_pattern",
	"minecraft:entity.firework_rocket.blast",
	"minecraft:entity.generic.explode",
	"minecraft:entity.ghast.shoot",
	"minecraft:item.crossbow.loading_end"
]

## Spells

# Anti Gravity Spell
anti_gravity_spell_cooldown_seconds = 20

ag_particle = "minecraft:firework"

ag_sound_use = 5
ag_sound_ready = 6
ag_sound_not_ready = 2

# Glow Spell
glow_spell_cooldown_seconds = 20

gl_particle = "minecraft:firework"

gl_sound_use = 9
gl_sound_ready = 6
gl_sound_not_ready = 2

# Fireball Spell

fb_particle = "minecraft:flame"

fb_sound_use = 13
fb_sound_fly = 14

# Smoke Bomb
smoke_bomb_cooldown_seconds = 20

sb_sound_use = 12
sb_sound_ready = 6
sb_sound_not_ready = 2

# Dragon's Tongue
dragons_tongue_spell_cooldown_seconds = 20

dt_particle = "minecraft:firework"

dt_sound_use = 3
dt_sound_ready = 6
dt_sound_not_ready = 2

decoy_spell_cooldown_seconds = 20

dc_particle = "minecraft:cloud"

dc_sound_use = 8
dc_sound_not_ready = 2
dc_sound_ready = 6

dc_alive_duration_seconds = 5

start_sound = 6
finish_sound = 6
win_sound = 7

enable_teams = False

teams = [
	{
		"name": 					"team_red",
		"collisionRule":			"always",
		"color":					"red",
		"deathMessageVisibility":	"always",
		"displayName":				"Team Red",
		"friendlyFire":				"true",
		"nametagVisibility":		"always",
		"prefix":					"",
		"seeFriendlyInvisibles":	"false",
		"suffix":					""
	}
]

effects_lobby = [0,2,3,7]
items_lobby = [
	[0,1]
]

enable_custom_commands = True
