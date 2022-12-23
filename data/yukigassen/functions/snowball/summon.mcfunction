
# 召喚
    execute at @s anchored eyes run summon armor_stand ^ ^ ^1 {Tags:["MaybeSnowball","Start"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}}]}
    scoreboard players operation @e[type=armor_stand,tag=MaybeSnowball,tag=Start] PlayerId = @s PlayerId
    execute at @s anchored eyes run tp @e[type=armor_stand,tag=MaybeSnowball,tag=Start] ^ ^ ^1 ~ ~-3

# 終了
    tag @e[type=armor_stand,tag=MaybeSnowball,tag=Start] remove Start
    kill @e[type=snowball,tag=TargetSnowball]