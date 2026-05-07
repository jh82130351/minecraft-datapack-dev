# ========================================
# 포션 판매 처리 (1개 단위)
# ========================================

# 신속 포션 (50 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}} run scoreboard players add @s coins 50
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}} run tellraw @s {"text":"✅ 신속 포션을 50 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}} run return 0

# 힘 포션 (50 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}} run scoreboard players add @s coins 50
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}} run tellraw @s {"text":"✅ 힘 포션을 50 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}} run return 0

# 재생 포션 (60 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}} run scoreboard players add @s coins 60
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}} run tellraw @s {"text":"✅ 재생 포션을 60 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}} run return 0

# 화염 저항 포션 (40 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}} run scoreboard players add @s coins 40
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}} run tellraw @s {"text":"✅ 화염 저항 포션을 40 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}} run return 0

# 야간 투시 포션 (40 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}} run scoreboard players add @s coins 40
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}} run tellraw @s {"text":"✅ 야간 투시 포션을 40 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}} run return 0

# 투명화 포션 (80 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}} run scoreboard players add @s coins 80
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}} run tellraw @s {"text":"✅ 투명화 포션을 80 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}} run return 0

# 수중 호흡 포션 (40 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}} run scoreboard players add @s coins 40
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}} run tellraw @s {"text":"✅ 수중 호흡 포션을 40 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}} run return 0

# 느린 낙하 포션 (40 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}} run scoreboard players add @s coins 40
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}} run tellraw @s {"text":"✅ 느린 낙하 포션을 40 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}} run return 0

# 점프 강화 포션 (50 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}} run scoreboard players add @s coins 50
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}} run tellraw @s {"text":"✅ 점프 강화 포션을 50 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}} run return 0

# 신속 II 포션 (100 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}} run scoreboard players add @s coins 100
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}} run tellraw @s {"text":"✅ 신속 II 포션을 100 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}} run return 0

# 힘 II 포션 (100 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}} run scoreboard players add @s coins 100
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}} run tellraw @s {"text":"✅ 힘 II 포션을 100 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}} run return 0

# 재생 II 포션 (120 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}} run scoreboard players add @s coins 120
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}} run tellraw @s {"text":"✅ 재생 II 포션을 120 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}} run return 0

# 거북 물약 (80 코인)
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_turtle_master"}}} run scoreboard players add @s coins 80
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_turtle_master"}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_turtle_master"}}} run tellraw @s {"text":"✅ 거북 물약을 80 코인에 판매했습니다!","color":"green"}
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_turtle_master"}}} run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_turtle_master"}}} run scoreboard players reset @s sell
execute if data entity @s SelectedItem{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_turtle_master"}}} run return 0

# 저항 포션 (200 코인) — 포션 아이템이 없으므로 판매 불가 (effect로 부여한 것은 팔 수 없음)
# 저항 효과는 포션 아이템이 아니므로 `/trigger sell`로 판매 불가

# ========================================
# 블록 판매 처리 (64개 단위)
# ========================================

# 손에 든 아이템이 64개인지 확인
execute store result score @s coin_amount run data get entity @s SelectedItem.count

# 64개가 아니면 실패
execute unless score @s coin_amount matches 64 run tellraw @s {"text":"❌ 블록은 손에 64개를 들어야 합니다! (포션은 1개씩 판매 가능)","color":"red"}
execute unless score @s coin_amount matches 64 run scoreboard players reset @s sell
execute unless score @s coin_amount matches 64 run return 0

# 손에 아무것도 없으면 실패
execute unless data entity @s SelectedItem.id run tellraw @s {"text":"❌ 손에 아이템을 들어야 합니다!","color":"red"}
execute unless data entity @s SelectedItem.id run scoreboard players reset @s sell
execute unless data entity @s SelectedItem.id run return 0

# 손에 든 아이템 64개 제거
item replace entity @s weapon.mainhand with air

# 5 코인 지급
scoreboard players add @s coins 5

# 성공 메시지
tellraw @s {"text":"✅ 블록 64개를 5 코인에 판매했습니다!","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# 리셋
scoreboard players reset @s sell
scoreboard players reset @s coin_amount
