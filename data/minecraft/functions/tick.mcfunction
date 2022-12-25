#猎物
#设置世界出生点影响指南针
execute at @a[team=prey] run setworldspawn ~ ~ ~

#未编程
#   在每个tick赋予猎物发光效果
#   effect give @a[team=prey] minecraft:glowing 1 0 true

#计时器
#记录tick数量
execute if score state_timer state_timer = one numbers run scoreboard players add pass_tps pass_tps 1
#判断tick数量是否>=20，是则记录为1秒
execute if score pass_tps pass_tps >= standard_tps standard_tps run scoreboard players remove 秒 timer 1
#判断秒是否<0，是则减少为1分钟
execute if score 秒 timer < zero numbers run scoreboard players remove 分钟 timer 1
#判断分钟数量是否<0，是则减少为1小时
execute if score 分钟 timer < zero numbers run scoreboard players remove 小时 timer 1
#判断分钟数量是否<0，是则重置为59分钟
execute if score 分钟 timer < zero numbers run scoreboard players set 分钟 timer 59
#判断秒数量是否<0，是则重置为59秒
execute if score 秒 timer < zero numbers run scoreboard players set 秒 timer 59
#判断tick数量是否>=20，是则清空pass_tps重新记录
execute if score pass_tps pass_tps >= standard_tps standard_tps run scoreboard players set pass_tps pass_tps 0
#判断秒数量是否>=60，是则减少60秒
execute if score 秒 timer >= sixty numbers run scoreboard players remove 秒 timer 60
#判断分钟数量是否>=60，是则减少60分钟
execute if score 分钟 timer >= sixty numbers run scoreboard players remove 分钟 timer 60