scoreboard players add @p creeped 1
title @p reset
title @p title {"text": "A creeper is asking for consent...", "color": "green","bold": true, "underlined": true}
playsound minecraft:ambient.cave hostile @p ~ ~ ~ 10
data modify entity @n[type=minecraft:creeper] Fuse set value 150
tellraw @a {"text":"Can I explode in your face ?  ","extra":[{"text":"[YES]","color":"green","bold":false,"underlined":false,"clickEvent":{"action":"run_command","value":"/execute at @p if score @p creeped matches 1..150 run function creepersconsent:creepers_yes"}},{"text":"    "},{"text":"[NO]","color":"red","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/execute at @p if score @p creeped matches 1..150 run function creepersconsent:creepers_no"}}],"bold":false,"underlined":false}