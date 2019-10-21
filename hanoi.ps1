function hanoi([Uint32]$n, [string]$x, [string]$y, [string]$z) {
    if ($n -gt 1) {
        hanoi ($n - 1) $x $z $y;
    }
    Write-Output "$x=>$y"
    if ($n -gt 1) {
        hanoi ($n - 1) $z $y $x;
    }
}

hanoi (Read-Host) "a" "b" "c";
