
# IDから対応するソリを特定
    scoreboard players operation $temporary_player_id PlayerId = @s PlayerId
    execute as @e[type=goat] if score @s PlayerId = $temporary_player_id PlayerId run tag @s add Target
    execute as @e[type=minecart] if score @s PlayerId = $temporary_player_id PlayerId run tag @s add Target

# トロッコが破壊されたとき
    execute if entity @s[tag=Rided] unless entity @e[type=minecart,tag=Target] run function yukigassen:minecart/kill
    
# 騎乗開始時実行
    execute if entity @s[tag=!Rided,tag=Riding] run function yukigassen:minecart/start_ride

# 騎乗終了時実行
    execute if entity @s[tag=Rided,tag=!Riding] run function yukigassen:minecart/end_ride

# プレイヤーの向いている方向に移動
    execute if entity @s[tag=Riding] positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["Motion"]}
    execute if entity @s[tag=Riding] as @e[type=goat,tag=Target] positioned ^ ^ ^1.8 run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=Riding] as @e[type=minecart,tag=Target] run data modify entity @s Motion set from entity @e[type=marker,tag=Motion,limit=1] Pos

# 演出
    execute if entity @s[tag=Riding] run scoreboard players add @s PlayerTimer 1
    execute if entity @s[tag=Riding,scores={PlayerTimer=7..}] run playsound block.amethyst_block.chime master @a ~ ~ ~ 2 1.2
    execute if entity @s[tag=Riding,scores={PlayerTimer=7..}] run playsound block.amethyst_block.chime master @a ~ ~ ~ 2 1.5
    execute if entity @s[tag=Riding,scores={PlayerTimer=7..}] run scoreboard players set @s PlayerTimer 0
    execute if entity @s[tag=Riding,scores={PlayerTimer=2}] at @s rotated ~ 0 run function yukigassen:minecart/move_particle
    execute if entity @s[tag=Riding,scores={PlayerTimer=4}] at @s rotated ~ 0 run function yukigassen:minecart/move_particle
    execute if entity @s[tag=Riding,scores={PlayerTimer=6}] at @s rotated ~ 0 run function yukigassen:minecart/move_particle

# 終了
    kill @e[type=marker,tag=Motion]
    scoreboard players reset $temporary_player_id PlayerId
    tag @e[tag=Target] remove Target
