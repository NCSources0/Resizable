$data modify storage ncs:math b set value $(s)

$attribute $(t) $(a) base reset
$execute store result storage ncs:math a float 0.001 run attribute $(t) $(a) base get 1000

$data modify storage ncs:data t set value "$(t)"
$data modify storage ncs:data a set value $(a)
function supplimental_ncs:divide with storage ncs:math

function supplimental_ncs:change_attr with storage ncs:data