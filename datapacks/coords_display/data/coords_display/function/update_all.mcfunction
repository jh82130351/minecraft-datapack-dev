# 각 플레이어에게 액션바로 좌표 표시
execute as @a at @s run title @s actionbar [{"text":"§6[ 좌표 ] §f","bold":true},{"text":"X: ","color":"green"},{"score":{"name":"@s","objective":"pos_x"},"color":"white"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"pos_y"},"color":"white"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"pos_z"},"color":"white"}]

# 좌표 저장 (scoreboard에 임시 저장)
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy

execute as @a store result score @s pos_x run data get entity @s Pos[0]
execute as @a store result score @s pos_y run data get entity @s Pos[1]
execute as @a store result score @s pos_z run data get entity @s Pos[2]
