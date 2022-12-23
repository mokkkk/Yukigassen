
# IDから対応するソリを特定
    scoreboard players operation $temporary_player_id PlayerId = @s PlayerId
    execute as @e[type=minecart] if score @s PlayerId = $temporary_player_id PlayerId run tag @s add Target

# プレイヤーの向いている方向に移動
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1.5 run summon marker ~ ~ ~ {Tags:["Motion"]}
    execute as @e[type=minecart,tag=Target] run data modify entity @s Motion set from entity @e[type=marker,tag=Motion,limit=1] Pos

# 終了
    kill @e[type=marker,tag=Motion]
    scoreboard players reset $temporary_player_id PlayerId
    tag @e[type=minecart,tag=Target] remove Target
