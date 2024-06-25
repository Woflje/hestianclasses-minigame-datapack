gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle true
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule doMobSpawning false
gamerule doTraderSpawning false
gamerule doFireTick false
bossbar add hs_time "Match Time"
bossbar set hs_time max 10
bossbar set hs_time style notched_10
scoreboard objectives add hs_class_load dummy
scoreboard objectives add hs_class_number dummy
scoreboard objectives add hs_relog minecraft.custom:minecraft.leave_game
scoreboard objectives add hs_killcount playerKillCount {"text":"Total Score","color":"red","bold":"true"}
scoreboard objectives add hs_killstreak playerKillCount
scoreboard objectives add hs_killstreak_c dummy
scoreboard objectives add hs_spell_fb_cd dummy
scoreboard objectives add hs_spell_ag_cd dummy
scoreboard objectives add hs_spell_gl_cd dummy
scoreboard objectives add hs_spell_sb_cd dummy
scoreboard objectives add hs_spell_dt_cd dummy
scoreboard objectives add hs_spell_dc_cd dummy
scoreboard objectives add hs_random_pos dummy
scoreboard objectives add hs_deathcount deathCount
scoreboard objectives add hs_dead deathCount
scoreboard objectives add hs_deaths deathCount
scoreboard objectives add hs_timer dummy
scoreboard objectives add hs_temp dummy
scoreboard objectives add hs_tasks dummy
scoreboard objectives add hs_won dummy
scoreboard objectives add hs_start dummy
scoreboard objectives add hs_choice trigger
scoreboard objectives add hs_use_wand_wf minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add hs_use_wand_ca minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add hs_use_snb minecraft.used:minecraft.snowball
scoreboard objectives add hs_health health
scoreboard objectives add hs_timerb dummy
scoreboard objectives add hs_li dummy
scoreboard objectives add hs_li_t dummy
scoreboard objectives add hs_restock_t360 dummy
scoreboard objectives add hs_count_16 dummy
scoreboard objectives add hs_restock_t120 dummy
scoreboard objectives add hs_count_25 dummy
scoreboard objectives add hs_restock_t17 dummy
scoreboard objectives add hs_count_54 dummy
scoreboard objectives add hs_restock_t15 dummy
scoreboard objectives add hs_count_55 dummy
scoreboard objectives add hs_restock_t5 dummy
scoreboard objectives add hs_count_47 dummy
scoreboard objectives add hs_restock_t10 dummy
scoreboard objectives add hs_count_50 dummy
scoreboard objectives add hs_restock_t14 dummy
scoreboard objectives add hs_count_51 dummy
scoreboard objectives add hs_restock_t7 dummy
scoreboard objectives add hs_count_12 dummy
scoreboard objectives add hs_restock_t40 dummy
scoreboard objectives add hs_count_18 dummy
scoreboard objectives add hs_count_19 dummy
scoreboard objectives add hs_restock_t12 dummy
scoreboard objectives add hs_count_1 dummy
scoreboard objectives add hs_restock_t240 dummy
scoreboard objectives add hs_count_16 dummy
scoreboard objectives add hs_count_17 dummy
scoreboard objectives add hs_restock_t60 dummy
scoreboard objectives add hs_count_20 dummy
scoreboard objectives add hs_count_22 dummy
scoreboard objectives add hs_count_24 dummy
scoreboard objectives add hs_count_26 dummy
scoreboard objectives add hs_restock_t30 dummy
scoreboard objectives add hs_count_56 dummy
scoreboard objectives setdisplay sidebar hs_killcount
scoreboard players set $hs_timer hs_start 0
