# ============================================
# detect_state.mcfunction — 이동 상태 감지 및 회복
# ============================================
# 매 틱마다 타이머 증가 (상태 전환 시에도 연속성 유지)
scoreboard players add @s regen_timer 1

# 1. 수면 감지 (SLEEP — 우선순위 최상)
execute if entity @s[nbt={Sleeping:1b}] run function regen_system:regen_sleep
execute if entity @s[nbt={Sleeping:1b}] run title @s actionbar {"text":"😴 SLEEP","color":"gray"}
execute if entity @s[nbt={Sleeping:1b}] run return fail

# 2. 현재 좌표 저장
execute store result score @s regen_tmp0 run data get entity @s Pos[0] 1000
execute store result score @s regen_tmp1 run data get entity @s Pos[1] 1000
execute store result score @s regen_tmp2 run data get entity @s Pos[2] 1000

# 3. IDLE 감지 (이전 좌표 == 현재 좌표)
execute if score @s prev_x = @s regen_tmp0 if score @s prev_y = @s regen_tmp1 if score @s prev_z = @s regen_tmp2 run function regen_system:regen_idle
execute if score @s prev_x = @s regen_tmp0 if score @s prev_y = @s regen_tmp1 if score @s prev_z = @s regen_tmp2 run title @s actionbar {"text":"🧍 IDLE","color":"green"}
execute if score @s prev_x = @s regen_tmp0 if score @s prev_y = @s regen_tmp1 if score @s prev_z = @s regen_tmp2 run return fail

# 4. RUN 감지 (스프린트 — 회복 없음, 몰래 타이머 리셋)
execute if entity @s[nbt={Sprint:1b}] run scoreboard players set @s regen_timer 0
execute if entity @s[nbt={Sprint:1b}] run scoreboard players operation @s prev_x = @s regen_tmp0
execute if entity @s[nbt={Sprint:1b}] run scoreboard players operation @s prev_y = @s regen_tmp1
execute if entity @s[nbt={Sprint:1b}] run scoreboard players operation @s prev_z = @s regen_tmp2
execute if entity @s[nbt={Sprint:1b}] run title @s actionbar {"text":"🏃 RUN","color":"red"}
execute if entity @s[nbt={Sprint:1b}] run return fail

# 5. SWIM 감지 (물 속)
execute if entity @s[nbt={IsInWater:1b}] run function regen_system:regen_swim
execute if entity @s[nbt={IsInWater:1b}] run scoreboard players operation @s prev_x = @s regen_tmp0
execute if entity @s[nbt={IsInWater:1b}] run scoreboard players operation @s prev_y = @s regen_tmp1
execute if entity @s[nbt={IsInWater:1b}] run scoreboard players operation @s prev_z = @s regen_tmp2
execute if entity @s[nbt={IsInWater:1b}] run title @s actionbar {"text":"🏊 SWIM","color":"aqua"}
execute if entity @s[nbt={IsInWater:1b}] run return fail

# 6. WALK (위 조건에 해당 없으면 걷는 중)
function regen_system:regen_walk
title @s actionbar {"text":"🚶 WALK","color":"yellow"}
scoreboard players operation @s prev_x = @s regen_tmp0
scoreboard players operation @s prev_y = @s regen_tmp1
scoreboard players operation @s prev_z = @s regen_tmp2
