hanoi :: Int -> String -> String -> String -> IO ()
hanoi n x y z
  = do if n > 1 then hanoi (n - 1) x z y else return ()
       putStrLn (x ++ "=>" ++ y)
       if n > 1 then hanoi (n - 1) z y x else return ()

main :: IO ()
main
  = do n <- getLine
       hanoi ((read n) :: Int) "a" "b" "c"
