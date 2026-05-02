# 좌표 저장 (scoreboard에 임시 저장)
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add rotation dummy
scoreboard objectives add direction dummy

execute as @a store result score @s pos_x run data get entity @s Pos[0]
execute as @a store result score @s pos_y run data get entity @s Pos[1]
execute as @a store result score @s pos_z run data get entity @s Pos[2]
execute as @a store result score @s rotation run data get entity @s Rotation[0]

# 방위 계산 (Rotation[0]: -180~180 → 0~360 변환 후 8방위)
execute as @a store result score @s direction run scoreboard players get @s rotation
execute as @a if score @s direction matches ..-1 run scoreboard players add @s direction 360

# 8방위 태그 설정 (N=북, NE=북동, E=동, SE=남동, S=남, SW=남서, W=서, NW=북서)
tag @a remove dir_n
tag @a remove dir_ne
tag @a remove dir_e
tag @a remove dir_se
tag @a remove dir_s
tag @a remove dir_sw
tag @a remove dir_w
tag @a remove dir_nw

execute as @a if score @s direction matches 338..360 run tag @s add dir_n
execute as @a if score @s direction matches 0..22 run tag @s add dir_n
execute as @a if score @s direction matches 23..67 run tag @s add dir_ne
execute as @a if score @s direction matches 68..112 run tag @s add dir_e
execute as @a if score @s direction matches 113..157 run tag @s add dir_se
execute as @a if score @s direction matches 158..202 run tag @s add dir_s
execute as @a if score @s direction matches 203..247 run tag @s add dir_sw
execute as @a if score @s direction matches 248..292 run tag @s add dir_w
execute as @a if score @s direction matches 293..337 run tag @s add dir_nw

# 각 플레이어에게 액션바로 좌표와 방위 표시
execute as @a[tag=dir_n] run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"},{"text":" §7| §b북 (N)","bold":false}]
execute as @a[tag=dir_ne] run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"},{"text":" §7| §b북동 (NE)","bold":false}]
execute as @a[tag=dir_e] run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"},{"text":" §7| §b동 (E)","bold":false}]
execute as @a[tag=dir_se] run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"},{"text":" §7| §b남동 (SE)","bold":false}]
execute as @a[tag=dir_s] run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"},{"text":" §7| §b남 (S)","bold":false}]
execute as @a[tag=dir_sw] run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"},{"text":" §7| §b남서 (SW)","bold":false}]
execute as @a[tag=dir_w] run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"},{"text":" §7| §b서 (W)","bold":false}]
execute as @a[tag=dir_nw] run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"},{"text":" §7| §b북서 (NW)","bold":false}]
