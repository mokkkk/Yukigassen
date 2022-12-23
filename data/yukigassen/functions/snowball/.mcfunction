
# 雪玉を前方にテレポート（ヤギに当たらないようにする）
    execute as @e[type=snowball,limit=1,sort=nearest] run tag @s add TargetSnowball
    # execute if entity @s[tag=Riding] as @e[type=snowball,tag=TargetSnowball] run tp @s ^ ^ ^5
    # execute if entity @s[tag=Riding] as @e[type=snowball,tag=TargetSnowball] run data modify entity @s Item set value {id:"minecraft:chest",Count:1b}

# 雪玉を消して処理用marker召喚
    function yukigassen:snowball/summon

# survival 又は adventure の場合，雪玉補充
    execute if entity @s[gamemode=survival] run give @s snowball{CustomModelData:1}
    execute if entity @s[gamemode=adventure] run give @s snowball{CustomModelData:1}

# 終了
    tag @e[type=snowball,tag=TargetSnowball] remove TargetSnowball
    scoreboard players set @s UsedSnowball 0
