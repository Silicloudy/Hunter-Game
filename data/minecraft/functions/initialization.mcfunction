#说明
tellraw @a {"text":"----------我是分割线----------","color":"gray"}
tellraw @a {"text":"「猎人游戏」数据包","color":"white","bold":"true"}
tellraw @a {"text":"版本：Release 1.0","color":"white"}
tellraw @a {"text":"作者：秋羽awa","color":"white"}
tellraw @a {"text":""}
tellraw @a {"translate":"！写在最前面：%s","with":[{"text":"请保证所有玩家进入世界后先点击此文本","underlined":"true","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"设置玩家原始出生点","color":"red"}},"clickEvent":{"action":"run_command","value":"/spawnpoint @a ~ ~ ~"},"color":"red"}],"color":"red"}
tellraw @a {"text":"猎物","color":"yellow","bold":"true"}
tellraw @a {"translate":"    如果你是猎物，请%s","with":[{"text":"点此","underlined":"true","hoverEvent":{"action":"show_text","value":{"text":"加入队伍[猎物]","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/team join prey @p"},"color":"yellow"}],"color":"yellow"}
tellraw @a {"translate":"    若错误加入，请%s","with":[{"text":"点此","underlined":"true","hoverEvent":{"action":"show_text","value":{"text":"退出所有队伍","color":"red"}},"clickEvent":{"action":"run_command","value":"/team leave @p"},"color":"yellow"}],"color":"yellow"}
tellraw @a {"text":""}
tellraw @a {"text":"猎人","color":"aqua","bold":"true"}
tellraw @a {"text":"    如果你是猎人，将追杀猎物","color":"aqua"}
tellraw @a {"translate":"    请%s获得追踪猎物的指南针","with":[{"text":"点此","underlined":"true","hoverEvent":{"action":"show_item","value":"{id:\"minecraft:compass\",Count:1,tag:{display:{Name:\'{\"text\":\"追踪指南针\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}'},Enchantments:[{id:\"minecraft:loyalty\",lvl:1s}],Unbreakable:1b}}"},"clickEvent":{"action":"run_command","value":"/function give_compass"},"color":"aqua"}],"color":"aqua"}
tellraw @a {"text":""}
tellraw @a {"text":"计时器","color":"green","bold":"true"}
tellraw @a {"translate":"    若要使用，请%s","with":[{"text":"点此","underlined":"true","hoverEvent":{"action":"show_text","value":{"text":"启用计时器并转到设置界面","color":"green"}},"clickEvent":{"action":"run_command","value":"/function set_timer"},"color":"green"}],"color":"green"}
tellraw @a {"text":"Tips：F3+D可清空聊天记录\n       使用/reload可再次查看此页面","color":"gray"}
tellraw @a {"text":"----------我是分割线----------","color":"gray"}

#初始化：添加队伍（猎物）
team add prey "猎物"
team modify prey color yellow

#初始化：添加计时器开关指示并将其设为假（0）
scoreboard objectives add state_timer dummy "state_timer"
scoreboard players set state_timer state_timer 0