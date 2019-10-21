sub hanoi{
  my($n,$x,$y,$z)=@_;
  &hanoi($n-1,$x,$z,$y) if($n>1);
  print "$x=>$y\n";
  #print "${x}=>${y}\n";
  &hanoi($n-1,$z,$y,$x) if($n>1);
}

my $n=<STDIN>;
&hanoi($n,"a","b","c")
