execute as @a unless score @p creeped matches 0..151 run scoreboard players add @p creeped 0
execute at @a if score @n creeped matches 1..150 run scoreboard players add @n creeped 1
execute at @a if score @n creeped matches 151.. run scoreboard players set @n creeped 0
execute at @e[type=minecraft:creeper] as @a if predicate creepersconsent:isclose if score @p creeped matches 0 run function creepersconsent:creeper_close