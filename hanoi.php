<?php
function hanoi($n,$x,$y,$z){
  if($n>1) hanoi($n-1,$x,$z,$y);
  print "$x=>$y\n";
  #print "${x}=>${y}\n";
  if($n>1) hanoi($n-1,$z,$y,$x);
}

hanoi(fgets(STDIN),"a","b","c");
?>
