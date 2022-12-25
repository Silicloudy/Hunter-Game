#将计时器开关指示设为假（0）
scoreboard objectives add state_timer dummy "state_timer"
scoreboard players set state_timer state_timer 0

#添加计分板standard_tps，用于储存标准TPS（20）
scoreboard objectives add standard_tps dummy "standard_tps"
scoreboard players set standard_tps standard_tps 20

#添加计分板numbers，用于储存数值
scoreboard objectives add numbers dummy "numbers"
scoreboard players set zero numbers 0
scoreboard players set one numbers 1
scoreboard players set sixty numbers 60

#添加计分板pass_tps，用于记录过了多少tick（20tick=1秒）
scoreboard objectives add pass_tps dummy "pass_tps"
scoreboard players set pass_tps pass_tps 0

#添加计分板timer，用于显示计时器
scoreboard objectives add timer dummy "计时器"
scoreboard objectives setdisplay sidebar timer
#添加项目秒
scoreboard players set 秒 timer 0
#添加项目分钟
scoreboard players set 分钟 timer 0
#添加项目小时
scoreboard players set 小时 timer 0