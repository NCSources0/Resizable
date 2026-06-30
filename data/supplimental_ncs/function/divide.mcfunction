scoreboard objectives add _math dummy

$data modify storage ncs:math a set value $(a)
$data modify storage ncs:math b set value $(b)

execute store result score *a _math run data get storage ncs:math a 1000
execute store result score *b _math run data get storage ncs:math b 1000
scoreboard players set *c _math 1000

scoreboard players operation *a _math *= *c _math
scoreboard players operation *a _math /= *b _math

execute store result storage ncs:data v float 0.001 run scoreboard players get *a _math