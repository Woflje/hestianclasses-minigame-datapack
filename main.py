from zipfile import ZipFile
import os
from config import *
import math
import json

mcfunction_tick = ""
mcfunction_load = ""
mcfunction_get_winner = ""

if add_minecraft_to_commands:
	mc_str="minecraft:"
else:
	mc_str=""

print("Hestian Classes Datapack Compiler")
print("Reading config...")

def add_item(item, class_number, count, replace, slot, killstreak_number, killstreak):
	killstreak_line = ""
	replace_slot_line= ""
	load_value="1"
	add_item_command = f"{mc_str}"
	if replace:
		if minecraft_version=="1.19":
			add_item_command += f"item replace entity "
			replace_slot_line = f" {slot} with"
		else:
			add_item_command += f"replaceitem entity "
			replace_slot_line = f" {slot}"
	else:
		add_item_command += "give "
	if killstreak > 0:
		killstreak_line = f",hs_killstreak_c={str(killstreak_number)},hs_killstreak={str(killstreak)}"
		load_value="3"
			
	add_item_command += f"@a[scores={{hs_class_load={load_value}{killstreak_line},hs_class_number={class_number}}}]{replace_slot_line} {item} {count}\n"
	return add_item_command

# Book Generator
info_book_s = f"written_book{{pages:["
info_book_s += info_book['pages'][0]
info_book_s += '\'["",{"text":" \\\\u0020Click a Class!","bold":true},{"text":"\\\\n","color":"reset"},'
info_book_classes = ""
for class_number in range(0,len(classes)):
	hclass = classes[class_number]
	info_book_s += f'{{"text":"\\\\n \\\\u25b6","bold":true}},{{"text":"{hclass["name"]}","bold":true,"clickEvent":{{"action":"run_command","value":"/trigger hs_choice set {str(class_number)}"}},"hoverEvent":{{"action":"show_text","value":"{hclass["name"]}"}}}}'
	if class_number is not len(classes)-1:
		info_book_s += ","
	current_class_header = f'{{"text":"{hclass["name"]} Class\\\\n\\\\n","bold":true,"color":"dark_red"}},'
	info_book_classes += (f'\'["",{current_class_header}{{"text":"HP:","bold":true,"color":"reset"}},'
	f'{{"text":" {str(hclass["hearts"])} Hearts\\\\n","color":"reset"}},')
	page_lines = 10
	if len(hclass['effects']) > 0:
		page_lines -= 1
		info_book_classes += f'{{"text":"Effects:\\\\n","bold":true,"color":"reset"}},'
		for effect in hclass['effects']:
			if page_lines < 1:
				info_book_classes=info_book_classes[:-1]
				info_book_classes += f']\',\'["",{current_class_header}'
				page_lines = 12
			page_lines -= 1
			effect_s = effects[effect]['id'].split(":")[1][1:]
			effect_s_first = effects[effect]['id'].split(":")[1][0].upper()
			info_book_classes += f'{{"text":" {effect_s_first}{effect_s}\\\\n"}},'
	if page_lines < 2:
		info_book_classes=info_book_classes[:-1]
		info_book_classes += f']\',\'["",{current_class_header}'
		page_lines = 12
	info_book_classes += f'{{"text":"Gear:\\\\n","bold":true,"color":"reset"}},'
	page_lines -= 1
	for item in hclass['loadout']:
		if page_lines < 1:
			info_book_classes=info_book_classes[:-1]
			info_book_classes += f']\',\'["",{current_class_header}'
			page_lines = 12
		if item[1] > 1:
			info_book_classes += f'{{"text":"{str(item[1])}","color":"reset"}},'
		info_book_classes += f'{{"text":" {items_info[item[0]]["name"]}\\\\n","color":"reset"}},'
		if item[0] > 1 and item[0] < 8:
				if page_lines < 5:
					info_book_classes=info_book_classes[:-1]
					info_book_classes += f']\',\'["",{current_class_header}'
					page_lines = 12
				if item[0] == 2:
					info_book_classes += f'{{"text":"Casts a fireball\\\\n","color":"reset"}},'
				if item[0] == 3:
					info_book_classes += f'{{"text":"Players near to you start levitating\\\\n","color":"reset"}},'
				if item[0] == 4:
					info_book_classes += f'{{"text":"Players near to you start glowing\\\\n","color":"reset"}},'
				if item[0] == 5:
					info_book_classes += f'{{"text":"A loud bang that blinds and stuns nearby players\\\\n","color":"reset"}},'
				if item[0] == 6:
					info_book_classes += f'{{"text":"A powerful Dragon shout to stun and confuse nearby players\\\\n","color":"reset"}},'
				if item[0] == 7:
					info_book_classes += f'{{"text":"Summon a bunch of look-a-like decoys around you!\\\\n","color":"reset"}},'
		page_lines -= 1
	if page_lines < 2:
		info_book_classes=info_book_classes[:-1]
		info_book_classes += f']\',\'["",{current_class_header}'
		page_lines = 11
	if len(hclass['restocks']) > 0:
		info_book_classes += f'{{"text":"Restocks [max]\\\\n","bold":true,"color":"reset"}},'
		for item in hclass['restocks']:
			if page_lines < 1:
				info_book_classes=info_book_classes[:-1]
				info_book_classes += f']\',\'["",{current_class_header}'
				page_lines = 12
			info_book_classes += f'{{"text":"{items_info[item[0]]["name"]} {str(item[2])}\\\\n"}},'
			page_lines -= 1
		if page_lines < 4:
			info_book_classes=info_book_classes[:-1]
			info_book_classes += f']\',\'["",{current_class_header}'
			page_lines = 10
	if len(hclass['killstreak_rewards']) > 0:
		info_book_classes += f'{{"text":"Killstreak Rewards:","bold":true,"color":"reset"}},'
		for killstreak in hclass['killstreak_rewards']:
			if page_lines < 3:
				info_book_classes=info_book_classes[:-1]
				info_book_classes += f']\',\'["",{current_class_header}'
				page_lines = 12
			info_book_classes += f'{{"text":" At a streak of {str(killstreak[1])}:\\\\n Gear:\\\\n","bold":true,"color":"reset"}},'
			page_lines -= 2
			for item in killstreak[0]:
				if page_lines < 1:
					info_book_classes=info_book_classes[:-1]
					info_book_classes += f']\',\'["",{current_class_header}'
					page_lines = 12
				if item[1] > 1:
					info_book_classes += f'{{"text":"{str(item[1])}","color":"reset"}},'
				info_book_classes += f'{{"text":" {items_info[item[0]]["name"]}\\\\n","color":"reset"}},'
				page_lines -= 1
			if len(killstreak[2]) > 0:
				if page_lines < 2:
					info_book_classes=info_book_classes[:-1]
					info_book_classes += f']\',\'["",{current_class_header}'
					page_lines = 12
				info_book_classes += f'{{"text":"Effects:\\\\n","bold":true,"color":"reset"}},'
				page_lines -= 1
				for effect in killstreak[2]:
					if page_lines < 1:
						info_book_classes=info_book_classes[:-1]
						info_book_classes += f']\',\'["",{current_class_header}'
						page_lines = 12
					page_lines -= 1
					effect_s = effects[effect]['id'].split(":")[1][1:]
					effect_s_first = effects[effect]['id'].split(":")[1][0].upper()
					info_book_classes += f'{{"text":" {effect_s_first}{effect_s}\\\\n"}},'
	info_book_classes=info_book_classes[:-1]
	info_book_classes+="]',"

info_book_s += f"]\',"
info_book_s += info_book_classes[:-1]
info_book_s += f"]"
info_book_s += f",title:\"{info_book['title']}\",author:\"{info_book['author']}\"}}"

items = [info_book_s]
for item in items_info[1:]:
	item_string = ""
	item_string += f"{item['id']}{{"
	item_disp_nbt=""
	for nbt in item['nbt']:
		item_string += f"{nbt},"
		if nbt[0:7] == "display":
			item_disp_nbt=nbt.split("{",1)[1][:-1]+","
	item_string += f"display:{{{item_disp_nbt}Name:\"{{\\\"text\\\":\\\"{item['name']}\\\"}}\",Lore:[\"[{{\\\"text\\\":\\\"{item['lore']}\\\",\\\"italic\\\":false}}]\"]}}}}"
	items.append(item_string)

for gamerule in gamerules:
	mcfunction_load += f"gamerule {gamerule[0]} {gamerule[1]}\n"

# Handle new players
mcfunction_tick += f"scoreboard players set @a[tag=!hs_init] hs_class_load -2\n"
mcfunction_tick += f"tag @a[tag=!hs_init] add hs_init\n"

mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-2}}] hs_killcount 0\n"

mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-2}}] hs_class_load -1\n"

# Handle relog

mcfunction_tick += f"{mc_str}tp @a[scores={{hs_relog=1..,hs_health=1..}}] {coords_spawn}\n"
mcfunction_tick += f"{mc_str}tp @a[scores={{hs_class_load=-2..-1,hs_health=1..}}] {coords_spawn}\n"

mcfunction_tick += f"scoreboard players remove @a[scores={{hs_relog=1..}}] hs_killcount 1\n"
mcfunction_tick += f"{mc_str}clear @a[scores={{hs_relog=1..,hs_class_load=3}}]\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_relog=1..}}] hs_li_t 1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_relog=1..}}] hs_class_load -1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_relog=1..}}] hs_relog 0\n"

mcfunction_tick += f"{mc_str}effect clear @a[scores={{hs_class_load=-1}}]\n"
mcfunction_tick += f"{mc_str}clear @a[scores={{hs_class_load=-1}}]\n"
mcfunction_tick += f"title @a[scores={{hs_class_load=-1}}] times 10 40 30\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-1}}] hs_class_number -1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-1}}] hs_killstreak 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-1}}] hs_killstreak_c 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-1}}] hs_spell_fb_cd 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-1}}] hs_spell_ag_cd 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-1}}] hs_choice -1\n"
mcfunction_tick += f"scoreboard players enable @a[scores={{hs_class_load=0}}] hs_choice\n"
mcfunction_tick += f"execute as @a[scores={{hs_class_load=-1}}] run {mc_str}attribute @s minecraft:generic.max_health base set 20\n"

for effect in effects_lobby:
	mcfunction_tick += (f"{mc_str}effect give @a[scores={{hs_class_load=-1}}] {effects[effect]['id']} {effects[effect]['duration']} "
		f"{effects[effect]['level']} {effects[effect]['hide_particles']}\n")

for item in items_lobby:
	mcfunction_tick += f"{mc_str}give @a[scores={{hs_class_load=-1}}] {items[item[0]]} {str(item[1])}\n"

# if enable_custom_commands:
# 	mcfunction_tick += f"sudo @a[scores={{hs_class_load=-1}}] play mii.mid\n"
# 	mcfunction_tick += f"sudo @a[scores={{hs_class_load=1}}] play\n"

mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-1,hs_health=1..}}] hs_class_load 0\n"
mcfunction_tick += f"{mc_str}clear @a[scores={{hs_class_load=..-1}}]\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-1,hs_li_t=0}}] hs_li_t 1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=-3,hs_health=1..}}] hs_class_load -1\n"

# Random start position
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_class_load 2\n"
random_position = 0
for coords in coords_start:
		mcfunction_tick += f"{mc_str}tp @a[scores={{hs_class_load=2,hs_random_pos={random_position}}}] {coords}\n"
		random_position +=1
mcfunction_tick += f"scoreboard players add @a[scores={{hs_class_load=0..2}}] hs_random_pos 1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=0..2,hs_random_pos={len(coords_start)-1}..}}] hs_random_pos 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=2}}] hs_class_load 3\n"


# Bossbars
mcfunction_load += f'bossbar add hs_time "Match Time"\n'
mcfunction_load += f'bossbar set hs_time max 10\n'
mcfunction_load += f'bossbar set hs_time style notched_10\n'

mcfunction_tick += f'execute store result score $hs_timer hs_timerb run scoreboard players get $hs_timer hs_timer\n'
mcfunction_tick += f'bossbar set hs_time players @a\n'

mcfunction_tick += f'execute if score $hs_timer hs_timer matches 0..{str(int(lobby_wait_minutes*20*60))} run bossbar set hs_time name "Waiting for next Match"\n'
mcfunction_tick += f'execute if score $hs_timer hs_timer matches 0..{str(int(lobby_wait_minutes*20*60))} run bossbar set hs_time color blue\n'
mcfunction_tick += f'execute if score $hs_timer hs_timer matches 0..{str(int(lobby_wait_minutes*20*60))} run bossbar set hs_time max {str(int(lobby_wait_minutes*20*60))}\n'

mcfunction_tick += f'execute if score $hs_timer hs_timer matches {str(int(1+lobby_wait_minutes*20*60))}..{str(int((lobby_wait_minutes+match_duration_minutes)*20*60))} run scoreboard players remove $hs_timer hs_timerb {str(int(lobby_wait_minutes*20*60))}\n'
mcfunction_tick += f'execute if score $hs_timer hs_timer matches {str(int(1+lobby_wait_minutes*20*60))}..{str(int((lobby_wait_minutes+match_duration_minutes)*20*60))} run bossbar set hs_time name "Match Time"\n'
mcfunction_tick += f'execute if score $hs_timer hs_timer matches {str(int(1+lobby_wait_minutes*20*60))}..{str(int((lobby_wait_minutes+match_duration_minutes)*20*60))} run bossbar set hs_time color pink\n'
mcfunction_tick += f'execute if score $hs_timer hs_timer matches {str(int(1+lobby_wait_minutes*20*60))}..{str(int((lobby_wait_minutes+match_duration_minutes)*20*60))} run bossbar set hs_time max {str(int((match_duration_minutes)*20*60))}\n'

mcfunction_tick += f'execute if score $hs_timer hs_timer matches {str(int(1+(lobby_wait_minutes+match_duration_minutes)*20*60))}..{str(int(((lobby_wait_minutes+match_duration_minutes)*60+after_match_seconds)*20))} run scoreboard players remove $hs_timer hs_timerb {str(int((lobby_wait_minutes+match_duration_minutes)*20*60))}\n'
mcfunction_tick += f'execute if score $hs_timer hs_timer matches {str(int(1+(lobby_wait_minutes+match_duration_minutes)*20*60))}..{str(int(((lobby_wait_minutes+match_duration_minutes)*60+after_match_seconds)*20))} run bossbar set hs_time name "Celebration Time"\n'
mcfunction_tick += f'execute if score $hs_timer hs_timer matches {str(int(1+(lobby_wait_minutes+match_duration_minutes)*20*60))}..{str(int(((lobby_wait_minutes+match_duration_minutes)*60+after_match_seconds)*20))} run bossbar set hs_time color white\n'
mcfunction_tick += f'execute if score $hs_timer hs_timer matches {str(int(1+(lobby_wait_minutes+match_duration_minutes)*20*60))}..{str(int(((lobby_wait_minutes+match_duration_minutes)*60+after_match_seconds)*20))} run bossbar set hs_time max {str(int(after_match_seconds*20))}\n'

mcfunction_tick += f'execute store result bossbar minecraft:hs_time value run scoreboard players get $hs_timer hs_timerb\n'


# Class loadouts and scripts
mcfunction_tick += f"{mc_str}clear @a[scores={{hs_class_load=3}}] minecraft:glass_bottle 1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=0,hs_class_number=0..}}] hs_class_load 1\n"
mcfunction_tick += f"{mc_str}effect clear @a[scores={{hs_class_load=1}}]\n"
mcfunction_tick += f"{mc_str}gamemode survival @a[scores={{hs_class_load=1}}]\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_killstreak 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_killstreak_c 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_spell_fb_cd -1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_spell_ag_cd -1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_spell_sb_cd -1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_spell_dt_cd -1\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_spell_dc_cd -1\n"
mcfunction_tick += f"scoreboard players reset @a[scores={{hs_class_load=1}}] hs_choice\n"
mcfunction_tick += f"{mc_str}clear @a[scores={{hs_class_load=1}}]\n"
mcfunction_tick += f"execute if score $hs_timer hs_start matches 0 as @a[scores={{hs_choice=0..}}] run title @s actionbar \"Match has yet to start!\"\n"
mcfunction_tick += f"execute if score $hs_timer hs_start matches 0 as @a[scores={{hs_choice=0..}}] run scoreboard players set @s hs_choice -1\n"
for class_number in range(0,len(classes)):
	hclass=classes[class_number]
	mcfunction_tick += f"execute if score $hs_timer hs_start matches 1 as @a[scores={{hs_choice={str(class_number)},hs_class_load=0}}] run scoreboard players set @s hs_class_number {str(class_number)}\n"
	# Give base loadout
	for start_item in hclass['loadout']:
		mcfunction_tick += add_item(items[start_item[0]], class_number, start_item[1], start_item[2], start_item[3], 0, 0)
		if start_item[0] == 3:
			mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1,hs_class_number={str(class_number)}}}] hs_spell_ag_cd 0\n"
		if start_item[0] == 4:
			mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1,hs_class_number={str(class_number)}}}] hs_spell_gl_cd 0\n"
		if start_item[0] == 5:
			mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1,hs_class_number={str(class_number)}}}] hs_spell_sb_cd 0\n"
		if start_item[0] == 6:
			mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1,hs_class_number={str(class_number)}}}] hs_spell_dt_cd 0\n"
		if start_item[0] == 7:
			mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1,hs_class_number={str(class_number)}}}] hs_spell_dc_cd 0\n"

	# Give effects
	for effect in hclass['effects']:
		mcfunction_tick += (f"{mc_str}effect give @a[scores={{hs_class_load=1,hs_class_number={str(class_number)}}}] {effects[effect]['id']} {effects[effect]['duration']} "
			f"{effects[effect]['level']} {effects[effect]['hide_particles']}\n")

	# Give killstreak awards
	for killstreak_reward_number in range(0,len(hclass['killstreak_rewards'])):
		for killstreak_reward in hclass['killstreak_rewards'][killstreak_reward_number][0]:
			mcfunction_tick += add_item(items[killstreak_reward[0]], class_number, killstreak_reward[1], killstreak_reward[2], killstreak_reward[3], killstreak_reward_number, hclass['killstreak_rewards'][killstreak_reward_number][1])
		for effect in hclass['killstreak_rewards'][killstreak_reward_number][2]:
			mcfunction_tick += (f"{mc_str}effect give @a[scores={{hs_class_load=3,hs_class_number={str(class_number)},hs_killstreak={str(hclass['killstreak_rewards'][killstreak_reward_number][1])}..}}] {effects[effect]['id']} {effects[effect]['duration']} "
				f"{effects[effect]['level']} {effects[effect]['hide_particles']}\n")
		mcfunction_tick += (f"title @a[scores={{hs_class_number={str(class_number)},hs_killstreak_c={str(killstreak_reward_number)},hs_killstreak="
			f"{str(hclass['killstreak_rewards'][killstreak_reward_number][1])}..}}] title \"\"\n")
		mcfunction_tick += (f"title @a[scores={{hs_class_number={str(class_number)},hs_killstreak_c={str(killstreak_reward_number)},hs_killstreak="
			f"{str(hclass['killstreak_rewards'][killstreak_reward_number][1])}..}}] subtitle \"UPGRADE!\"\n")
		mcfunction_tick += (f"execute as @a[scores={{hs_class_number={str(class_number)},hs_killstreak_c={str(killstreak_reward_number)},hs_killstreak="
			f"{str(hclass['killstreak_rewards'][killstreak_reward_number][1])}..}}] at @s run {mc_str}playsound {sounds[hclass['killstreak_rewards'][killstreak_reward_number][3]]} player @s\n")
		mcfunction_tick += (f"execute as @a[scores={{hs_class_number={str(class_number)},hs_killstreak_c={str(killstreak_reward_number)},hs_killstreak="
			f"{str(hclass['killstreak_rewards'][killstreak_reward_number][1])}..}}] run title @a[tag=hs_init] actionbar [\"\",{{\"selector\":\"@s\"}},{{\"text\":\" got a killstreak going of "
			f"{str(hclass['killstreak_rewards'][killstreak_reward_number][1])}!\"}}]\n")
		mcfunction_tick += (f"scoreboard players set @a[scores={{hs_class_number={str(class_number)},hs_killstreak_c={str(killstreak_reward_number)},hs_killstreak={str(hclass['killstreak_rewards'][killstreak_reward_number][1])}..,"
			f"hs_class_load=3}}] hs_killstreak_c {str(killstreak_reward_number+1)}\n")

	# Give restock items
	for restock_item in hclass['restocks']:
		if [f"hs_restock_t{str(restock_item[1])}","dummy"] not in objectives:
			objectives.append([f"hs_restock_t{str(restock_item[1])}","dummy"])
			mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=1}}] hs_restock_t{str(restock_item[1])} 0\n"
			mcfunction_tick += f"scoreboard players add @a[scores={{hs_class_load=3}}] hs_restock_t{str(restock_item[1])} 1\n"
		objectives.append([f"hs_count_{items_info[restock_item[0]]['#']}","dummy"])
		mcfunction_tick += f"scoreboard players set @a[scores={{hs_class_load=3,hs_class_number={str(class_number)},hs_count_{items_info[restock_item[0]]['#']}={str(restock_item[2])}..}}] hs_restock_t{str(restock_item[1])} 0\n"
		mcfunction_tick += (f"execute as @a[scores={{hs_class_load=3,hs_class_number={str(class_number)}}}] store result score @s "
			f"hs_count_{items_info[restock_item[0]]['#']} run clear @s {items[restock_item[0]]} 0\n")
		mcfunction_tick += (f"{mc_str}give @a[scores={{hs_class_load=3,hs_restock_t{str(restock_item[1])}={str(restock_item[1]*20)}..,hs_class_number={str(class_number)},"
			f"hs_count_{items_info[restock_item[0]]['#']}=..{str(restock_item[2]-1)}}}] {items[restock_item[0]]} 1\n")
		mcfunction_tick += (f"scoreboard players add @a[scores={{hs_class_load=3,hs_restock_t{str(restock_item[1])}=..{str(restock_item[1]*20)},"
			f"hs_count_{items_info[restock_item[0]]['#']}=..{str(restock_item[2]-1)}}}] hs_restock_t{str(restock_item[1])} 1\n")
		mcfunction_tick += (f"{mc_str}clear @a[scores={{hs_class_load=3,hs_class_number={str(class_number)},"
			f"hs_count_{items_info[restock_item[0]]['#']}={str(restock_item[2]+1)}..}}] {items[restock_item[0]]} 1\n")
		mcfunction_tick += (f"scoreboard players set @a[scores={{hs_class_load=3,hs_restock_t{str(restock_item[1])}={str(1+restock_item[1]*20)}..}}] hs_restock_t{str(restock_item[1])} 0\n")

	# Change attributes
	mcfunction_tick += f"execute as @a[scores={{hs_class_load=1,hs_class_number={str(class_number)}}}] run {mc_str}attribute @s minecraft:generic.max_health base set {str(2*hclass['hearts'])}\n"

# Fireball spell
mcfunction_tick += f"execute at @e[type=minecraft:snowball] run summon minecraft:fireball ^ ^ ^0.2 {{power:[0.0,-0.01,0.0]}}\n"
mcfunction_tick += "execute as @e[type=minecraft:snowball] at @s run data modify entity @e[type=minecraft:fireball,limit=1,sort=nearest] Motion set from entity @s Motion\n"
mcfunction_tick += f"{mc_str}kill @e[type=minecraft:snowball]\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_snb=1..}}] at @s run {mc_str}playsound {sounds[fb_sound_use]} player @a\n"

# Anty Gravity Spell
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_wf=1..,hs_spell_ag_cd=0}}] at @s run {mc_str}playsound {sounds[ag_sound_use]} player @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_wf=1..,hs_spell_ag_cd=1..}}] at @s run {mc_str}playsound {sounds[ag_sound_not_ready]} player @s\n"
mcfunction_tick += f"title @a[scores={{hs_use_wand_wf=1..,hs_spell_ag_cd=1..}}] actionbar \"Spell recharging...\"\n"
mcfunction_tick += f"title @a[scores={{hs_spell_ag_cd=1,hs_class_load=3}}] actionbar \"Gravity Spell ready!\"\n"
mcfunction_tick += f"execute as @a[scores={{hs_spell_ag_cd=1}}] at @s run {mc_str}playsound {sounds[ag_sound_ready]} player @s\n"
mcfunction_tick += f"scoreboard players remove @a[scores={{hs_spell_ag_cd=1..}}] hs_spell_ag_cd 1\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_wf=1..,hs_spell_ag_cd=0}}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_wf=1..,hs_spell_ag_cd=0}}] at @s run {mc_str}effect give @e[distance=1..10] minecraft:levitation 3 1 false\n"


# Glow Spell
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_gl_cd=0}}] at @s run {mc_str}playsound {sounds[gl_sound_use]} player @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_gl_cd=1..}}] at @s run {mc_str}playsound {sounds[gl_sound_not_ready]} player @s\n"
mcfunction_tick += f"title @a[scores={{hs_use_wand_ca=1..,hs_spell_gl_cd=1..}}] actionbar \"Spell recharging...\"\n"
mcfunction_tick += f"title @a[scores={{hs_spell_gl_cd=1,hs_class_load=3}}] actionbar \"Glow Spell ready!\"\n"
mcfunction_tick += f"execute as @a[scores={{hs_spell_gl_cd=1}}] at @s run {mc_str}playsound {sounds[gl_sound_ready]} player @s\n"
mcfunction_tick += f"scoreboard players remove @a[scores={{hs_spell_gl_cd=1..}}] hs_spell_gl_cd 1\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_gl_cd=0}}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_gl_cd=0}}] at @s run {mc_str}effect give @e[distance=1..15] minecraft:glowing 6 1 true\n"

# Decoy Spell
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run {mc_str}playsound {sounds[dc_sound_use]} player @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=1..}}] at @s run {mc_str}playsound {sounds[dc_sound_not_ready]} player @s\n"
mcfunction_tick += f"title @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=1..}}] actionbar \"Spell recharging...\"\n"
mcfunction_tick += f"title @a[scores={{hs_spell_dc_cd=1,hs_class_load=3}}] actionbar \"Decoy Spell ready!\"\n"
mcfunction_tick += f"execute as @a[scores={{hs_spell_dc_cd=1}}] at @s run {mc_str}playsound {sounds[dc_sound_ready]} player @s\n"
mcfunction_tick += f"scoreboard players remove @a[scores={{hs_spell_dc_cd=1..}}] hs_spell_dc_cd 1\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run {mc_str}effect give @e[distance=1..3] minecraft:blindness 1 1 true\n"

decoy_str = f'{{Tags:["decoy_init"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{{id:"leather_boots",Count:1b,tag:{{display:{{color:16711893}}}}}},{{id:"leather_leggings",Count:1b,tag:{{display:{{color:11545754}}}}}},{{id:"leather_chestplate",Count:1b,tag:{{display:{{color:15073535}}}}}},{{id:"player_head",Count:1b,tag:{{SkullOwner:""}}}}],HandItems:[{{id:"carrot_on_a_stick",Count:1b}},{{}}],DisabledSlots:4144959,Pose:{{LeftLeg:[323f,0f,0f],RightLeg:[28f,0f,0f],LeftArm:[34f,0f,0f],RightArm:[319f,0f,0f]}}}}'

mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~3 ~ ~ {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~-3 ~ ~ {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~ ~ ~3 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~ ~ ~-3 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~2 ~ ~2 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~2 ~ ~-2 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~2 ~ ~2 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~2 ~ ~-2 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~0.5 ~ ~1.5 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~0.5 ~ ~-1.5 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~-0.5 ~ ~1.5 {decoy_str}\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run summon minecraft:armor_stand ~-0.5 ~ ~-1.5 {decoy_str}\n"

mcfunction_tick += f"scoreboard players set @e[type=armor_stand,tag=!decoy,tag=decoy_init] hs_spell_dc_cd 0\n"
mcfunction_tick += f"tag @e[type=armor_stand,tag=!decoy,tag=decoy_init] add decoy\n"

mcfunction_tick += f"execute as @e[type=armor_stand,tag=decoy,scores={{hs_spell_dc_cd=0}}] at @s run particle {dc_particle} ~ ~ ~ 1 1 1 0.1 8 force @a\n"
mcfunction_tick += f"execute as @e[type=armor_stand,tag=decoy,scores={{hs_spell_dc_cd=0}}] at @s run {mc_str}playsound {sounds[9]} player @a\n"
mcfunction_tick += f"scoreboard players add @e[type=armor_stand,tag=decoy,scores={{hs_spell_dc_cd=..{dc_alive_duration_seconds*20}}}] hs_spell_dc_cd 1\n"
mcfunction_tick += f"execute as @e[type=armor_stand,tag=decoy,scores={{hs_spell_dc_cd={dc_alive_duration_seconds*20}..}}] at @s run particle {dc_particle} ~ ~ ~ 1 1 1 0.1 8 force @a\n"
mcfunction_tick += f"{mc_str}kill @e[type=armor_stand,tag=decoy,scores={{hs_spell_dc_cd={dc_alive_duration_seconds*20}..}}]\n"

# Smoke Bomb
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_sb_cd=0}}] at @s run {mc_str}playsound {sounds[sb_sound_use]} player @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_sb_cd=1..}}] at @s run {mc_str}playsound {sounds[sb_sound_not_ready]} player @s\n"
mcfunction_tick += f"title @a[scores={{hs_use_wand_ca=1..,hs_spell_sb_cd=1..}}] actionbar \"Spell recharging...\"\n"
mcfunction_tick += f"title @a[scores={{hs_spell_sb_cd=1,hs_class_load=3}}] actionbar \"Smoke Bomb ready!\"\n"
mcfunction_tick += f"execute as @a[scores={{hs_spell_sb_cd=1}}] at @s run {mc_str}playsound {sounds[sb_sound_ready]} player @s\n"
mcfunction_tick += f"scoreboard players remove @a[scores={{hs_spell_sb_cd=1..}}] hs_spell_sb_cd 1\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_sb_cd=0}}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_sb_cd=0}}] at @s run {mc_str}effect give @e[distance=1..7] minecraft:blindness 7 1 true\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_sb_cd=0}}] at @s run {mc_str}effect give @e[distance=1..7] minecraft:slowness 7 1 true\n"

# Dragon's Tongue
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=0}}] at @s run {mc_str}playsound {sounds[dt_sound_use]} player @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=1..}}] at @s run {mc_str}playsound {sounds[dt_sound_not_ready]} player @s\n"
mcfunction_tick += f"title @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=1..}}] actionbar \"Spell recharging...\"\n"
mcfunction_tick += f"title @a[scores={{hs_spell_dt_cd=1,hs_class_load=3}}] actionbar \"Dragon's Tongue ready!\"\n"
mcfunction_tick += f"execute as @a[scores={{hs_spell_dt_cd=1}}] at @s run {mc_str}playsound {sounds[dt_sound_ready]} player @s\n"
mcfunction_tick += f"scoreboard players remove @a[scores={{hs_spell_dt_cd=1..}}] hs_spell_dt_cd 1\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=0}}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=0}}] at @s run {mc_str}effect give @e[distance=1..8] minecraft:nausea 10 1 false\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=0}}] at @s run {mc_str}effect give @e[distance=1..8] minecraft:poison 10 2 false\n"
mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=0}}] at @s run {mc_str}effect give @e[distance=1..8] minecraft:slowness 3 3 false\n"

# Spell particles
for t in range(0,100):
	t=t/(100/20)
	mcfunction_tick += f"execute as @a[scores={{hs_use_wand_wf=1..,hs_spell_ag_cd=0}}] at @s run particle {ag_particle} ~{round(t*math.cos(t),3)} ~{round(0.1*t,3)} ~{round(t*math.sin(t),3)} 0 0 0 0 1 force @a\n"
	mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_gl_cd=0}}] at @s run particle {gl_particle} ~{round(t*math.cos(t),3)} ~{round(0.1*t,3)} ~{round(t*math.sin(t),3)} 0 0 0 0 1 force @a\n"
	mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] at @s run particle {dc_particle} ~{round(t*math.cos(t),3)} ~{round(0.1*t,3)} ~{round(t*math.sin(t),3)} 0 0 0 0 1 force @a\n"
	mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=0}}] at @s run particle {dt_particle} ^{round(0.08*t*math.cos(t),3)} ^{round(0.08*t*math.sin(t),3)} ^{round(0.1*t,3)} 0 1 0 0 1 force @a\n"
	mcfunction_tick += f"execute as @a[scores={{hs_use_snb=1..}}] at @s run particle {fb_particle} ^{round(0.08*t*math.cos(t),3)} ^{round(0.08*t*math.sin(t),3)} ^{round(0.8*t,3)} 0 1 0 0 1 force @a\n"

mcfunction_tick += f"execute as @a[scores={{hs_use_wand_ca=1..,hs_spell_sb_cd=0}}] at @s run particle minecraft:explosion ~ ~ ~ 2 2 2 1 100\n"
mcfunction_tick += f"scoreboard players set @e[type=minecraft:fireball,tag=!fbt] hs_spell_fb_cd 8\n"
mcfunction_tick += f"tag @e[type=minecraft:fireball,tag=!fbt] add fbt\n"
mcfunction_tick += f"scoreboard players remove @e[type=minecraft:fireball,scores={{hs_spell_fb_cd=1..}}] hs_spell_fb_cd 1\n"
mcfunction_tick += f"execute as @e[type=minecraft:fireball,scores={{hs_spell_fb_cd=0}}] at @s run {mc_str}playsound {sounds[fb_sound_fly]} player @a\n"
mcfunction_tick += f"execute as @e[type=minecraft:fireball,scores={{hs_spell_fb_cd=0}}] at @s run particle {fb_particle} ~ ~ ~ 0 0 0 0 1 force @a\n"
mcfunction_tick += f"scoreboard players set @e[type=minecraft:fireball,scores={{hs_spell_fb_cd=0}}] hs_spell_fb_cd 8\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_use_wand_wf=1..,hs_spell_ag_cd=0}}] hs_spell_ag_cd {str(anti_gravity_spell_cooldown_seconds*20)}\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_use_wand_ca=1..,hs_spell_gl_cd=0}}] hs_spell_gl_cd {str(glow_spell_cooldown_seconds*20)}\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_use_wand_ca=1..,hs_spell_sb_cd=0}}] hs_spell_sb_cd {str(smoke_bomb_cooldown_seconds*20)}\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_use_wand_ca=1..,hs_spell_dt_cd=0}}] hs_spell_dt_cd {str(dragons_tongue_spell_cooldown_seconds*20)}\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_use_wand_ca=1..,hs_spell_dc_cd=0}}] hs_spell_dc_cd {str(decoy_spell_cooldown_seconds*20)}\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_use_wand_wf=1..}}] hs_use_wand_wf 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_use_wand_ca=1..}}] hs_use_wand_ca 0\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_use_snb=1..}}] hs_use_snb 0\n"

# Kill bounty
if enable_kill_bounty:
	for item in kill_bounty_items:
		mcfunction_tick += (f"execute at @a[scores={{hs_class_load=3,hs_dead=1..}}] run summon minecraft:item ~ ~ ~ {{Item:{{id:\"{items_info[item[0]]['id']}\","
			f"Count:{str(item[1])},tag:{{display:{{Name:\"{{\\\"text\\\":\\\"{items_info[item[0]]['name']}\\\"}}\",Lore:[\"[{{\\\"text\\\":\\\"{items_info[item[0]]['lore']}\\\""
			f",\\\"italic\\\":false}}]\"]}}}}}}}}\n")
		mcfunction_tick += f"tag @e[type=minecraft:item,nbt={{Item:{{id:\"{items_info[item[0]]['id']}\"}}}},tag=!kbi] add kbi\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_dead=1..}}] hs_class_load -3\n"
mcfunction_tick += f"scoreboard players set @a[scores={{hs_dead=1..}}] hs_dead 0\n"

# Disable item dropping
if disable_item_dropping:
	mcfunction_tick += "execute as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower\n"
	mcfunction_tick += "execute as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0\n"
	mcfunction_tick += "tag @e[type=item] add processed\n"
	mcfunction_tick += f"{mc_str}kill @e[type=item,tag=!kbi,nbt={{OnGround:1b}}]\n"

mcfunction_tick += f"execute as @e[type=minecraft:arrow,tag=!pua,nbt=!{{pickup:0b}}] run data modify entity @s pickup set value 0b\n"
mcfunction_tick += f"execute as @e[type=minecraft:spectral_arrow,tag=!pua,nbt=!{{pickup:0b}}] run data modify entity @s pickup set value 0b\n"

# Add objectives and variables to world data
for objective in objectives:
	mcfunction_load+=f"scoreboard objectives add {objective[0]} {objective[1]}"
	if len(objective) > 2:
		mcfunction_load +=f' {objective[2]}'
	mcfunction_load +='\n'

if enable_teams:
	for team in teams:
		mcfunction_load += f"team add {team['name']}\n"
		mcfunction_load += f"team modify {team['name']} collisionRule {team['collisionRule']}\n"
		mcfunction_load += f"team modify {team['name']} color {team['color']}\n"
		mcfunction_load += f"team modify {team['name']} deathMessageVisibility {team['deathMessageVisibility']}\n"
		mcfunction_load += f"team modify {team['name']} displayName {team['displayName']}\n"
		mcfunction_load += f"team modify {team['name']} friendlyFire {team['friendlyFire']}\n"
		mcfunction_load += f"team modify {team['name']} nametagVisibility {team['nametagVisibility']}\n"
		mcfunction_load += f"team modify {team['name']} prefix {team['prefix']}\n"
		mcfunction_load += f"team modify {team['name']} seeFriendlyInvisibles {team['seeFriendlyInvisibles']}\n"
		mcfunction_load += f"team modify {team['name']} suffix {team['suffix']}\n"

mcfunction_load += f"scoreboard objectives setdisplay sidebar hs_killcount\n"
mcfunction_load += f"scoreboard players set $hs_timer hs_start 0\n"

mcfunction_tick += f"scoreboard players add $hs_timer hs_timer 1\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches 2 run title @a title \"Hestian Classes\"\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches 2 run title @a subtitle \"Starting in {str(lobby_wait_minutes)} minutes!\"\n"
lobby_countdown_message_at = [30,20,10,5]
match_end_countdown_message_at = [[10,5],[60,30,10,5,4,3,2,1]]
match_and_lobby = match_duration_minutes+lobby_wait_minutes
for message_time in lobby_countdown_message_at:
	mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*(lobby_wait_minutes*60-message_time)))} run title @a[tag=hs_init] title \"\"\n"
	mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*(lobby_wait_minutes*60-message_time)))} run title @a[tag=hs_init] subtitle \"Starting in {message_time} seconds!\"\n"
for message_time in match_end_countdown_message_at[0]:
	mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*60*(match_and_lobby-message_time)))} run title @a[tag=hs_init] title \"\"\n"
	mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*60*(match_and_lobby-message_time)))} run title @a[tag=hs_init] subtitle \"{message_time} minutes left!\"\n"
for message_time in match_end_countdown_message_at[1]:
	mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*(match_and_lobby*60-message_time)))} run title @a[tag=hs_init] title \"\"\n"
	if message_time > 9:
		mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*(match_and_lobby*60-message_time)))} run title @a[tag=hs_init] subtitle \"{message_time} seconds left!\"\n"
	else:
		mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*(match_and_lobby*60-message_time)))} run title @a[tag=hs_init] subtitle \"{message_time}\"\n"

mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(lobby_wait_minutes*60*20))} run scoreboard players set $hs_timer hs_start 1\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(lobby_wait_minutes*60*20))} run scoreboard players set @a[tag=hs_init] hs_killcount 0\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(lobby_wait_minutes*60*20))} run execute as @a[tag=hs_init] at @s run {mc_str}playsound {sounds[start_sound]} player @s\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(lobby_wait_minutes*60*20))} run title @a[tag=hs_init] title \"START!\"\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(lobby_wait_minutes*60*20))} run title @a[tag=hs_init] subtitle \"Choose a class!\"\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(lobby_wait_minutes*60*20))} run title @a[tag=hs_init] actionbar \"Match duration: {str(match_duration_minutes)} minutes\"\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(match_and_lobby*60*20))} run function hestian_classes:get_winner\n"
mcfunction_get_winner += f"scoreboard players set $hs_timer hs_start 0\n"
mcfunction_get_winner += f"scoreboard players set @a[tag=hs_init] hs_won 0\n"
mcfunction_get_winner += f"execute as @a[scores={{hs_class_load=-2..}}] run scoreboard players operation @s hs_temp = @s hs_killcount\n"
mcfunction_get_winner += f"scoreboard players set $highest hs_temp -2147483648\n"
mcfunction_get_winner += f"execute as @a run scoreboard players operation $highest hs_temp > @s hs_temp\n"
mcfunction_get_winner += f"execute as @a[scores={{hs_class_load=-2..}}] if score @s hs_temp = $highest hs_temp run scoreboard players set @s hs_won 1\n"
mcfunction_get_winner += f"{mc_str}tp @a {coords_spawn}\n"
mcfunction_get_winner += f"execute as @a[tag=hs_init] at @s run {mc_str}playsound {sounds[finish_sound]} player @s\n"
mcfunction_get_winner += f"{mc_str}kill @e[type=minecraft:arrow]\n"
mcfunction_get_winner += f"{mc_str}kill @e[type=minecraft:fireball]\n"
mcfunction_get_winner += f"{mc_str}kill @e[type=minecraft:item]\n"
mcfunction_get_winner += f"title @a[scores={{hs_won=0}}] title \"\"\n"
mcfunction_get_winner += f"title @a[scores={{hs_won=1}}] title \"You Win!\"\n"
mcfunction_get_winner += f"execute as @a[scores={{hs_won=1}}] at @s run {mc_str}playsound {sounds[win_sound]} player @s\n"
mcfunction_get_winner += f"title @a[tag=hs_init] subtitle [\"\",{{\"selector\":\"@a[scores={{hs_won=1}}]\"}},{{\"text\":\" won the competition!\"}}]\n"
mcfunction_get_winner += f"scoreboard players set @a[tag=hs_init] hs_class_load -2\n"

mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(3+match_and_lobby*60*20))} run {mc_str}effect give @a[scores={{hs_won=1}}] minecraft:glowing 999999 1 true\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*after_match_seconds+match_and_lobby*60*20))} run scoreboard players reset * hs_won\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*after_match_seconds+match_and_lobby*60*20))} run scoreboard players reset * hs_killcount\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*after_match_seconds+match_and_lobby*60*20))} run scoreboard players set @a[tag=hs_init] hs_class_load -2\n"
mcfunction_tick += f"execute if score $hs_timer hs_timer matches {str(int(20*after_match_seconds+match_and_lobby*60*20))} run scoreboard players set $hs_timer hs_timer 0\n"

load_file = open("data/hestian_classes/functions/load.mcfunction","w")
load_file.write(mcfunction_load)
load_file.close()

tick_file = open("data/hestian_classes/functions/tick.mcfunction","w")
tick_file.write(mcfunction_tick)
tick_file.close()

get_winner_file = open("data/hestian_classes/functions/get_winner.mcfunction","w")
get_winner_file.write(mcfunction_get_winner)
get_winner_file.close()

json_file=open('pack.mcmeta','r')
json_load=json.load(json_file)
json_file.close()

pack_is_server="client"
if minecraft_version == "1.19":
	json_load['pack']['pack_format']=9
	if add_minecraft_to_commands:
		pack_is_server="server"
	pack_is_server=pack_is_server+minecraft_version
# if minecraft_version_117:
# 	json_load['pack']['pack_format']='7'
# 	if add_minecraft_to_commands:
# 		pack_is_server="server"
# 	pack_is_server=pack_is_server+' 1.17.1'
# else:
# 	json_load['pack']['pack_format']='6'
# 	if add_minecraft_to_commands:
# 		pack_is_server="server"
# 	pack_is_server=pack_is_server+' 1.16.5'

mcmeta=True 

if mcmeta:
	mcmeta_desc = f"Woflje's Hestian Classes datapack! A fun non-stop gamemode without the need of plugins. This pack was compiled for minecraft {pack_is_server}. It contains the following classes:"
	for hclass in classes:
		mcmeta_desc += f" {hclass['name']},"
	mcmeta_desc=mcmeta_desc[:-1]
	json_load['pack']['description'] = mcmeta_desc

	json_out=open('pack.mcmeta','w')
	json.dump(json_load,json_out)
	json_out.close()

try:
	os.remove(datapack_output_path)
except:
	print(f"Cannot remove datapack zipfile '{datapack_output_path}': Not found!")
with ZipFile(datapack_output_path,"w") as zf:
	for folderName, subfolders, filenames in os.walk("data"):
		for filename in filenames:
			filePath = os.path.join(folderName,filename)
			zf.write(filePath,filePath)
	zf.write("pack.mcmeta")
	zf.write("pack.png")
zf.close()

print("Done!")