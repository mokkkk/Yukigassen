
# 対応するそりを削除
    kill @e[tag=Target]

# プレイヤー死亡
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1
    playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
    gamerule showDeathMessages false
    tellraw @a [{"selector":"@s"},{"text": " はサンタの資格を失った"}]
    kill @s
    tag @s remove Rided
