
# 各プレイヤー実行
    execute as @a at @s run function yukigassen:tick_player

# 雪玉処理
    execute as @e[type=armor_stand,tag=MaybeSnowball] at @s run function yukigassen:snowball/move
