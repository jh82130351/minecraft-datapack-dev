# 모든 플레이어 타이머 증가
scoreboard players add @s regen_timer 1

# SLEEP (잠자기) — 20틱(1초)마다 ❤️ 1 회복
execute if entity @s[nbt={Sleeping:1b}] if score @s regen_timer matches 20.. run effect give @s regeneration 3 0 true
execute if entity @s[nbt={Sleeping:1b}] if score @s regen_timer matches 20.. run scoreboard players set @s regen_timer 0
execute if entity @s[nbt={Sleeping:1b}] run return fail

# 그 외 — 60틱(3초)마다 ❤️ 0.5 회복
execute if score @s regen_timer matches 60.. run effect give @s regeneration 2 0 true
execute if score @s regen_timer matches 60.. run scoreboard players set @s regen_timer 0
