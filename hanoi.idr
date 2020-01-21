module Main

import Data.String

hanoi : Int -> String -> String -> String -> IO ()
hanoi n x y z = do
  if n > 1 then (hanoi (n - 1) x z y) else pure ()
  putStrLn $ x ++ "=>" ++ y
  if n > 1 then (hanoi (n - 1) z y x) else pure ()

main : IO ()
main = do
  getLine >>= \x => do
    case parseInteger {a=Int} x of
      Nothing => pure ()
      Just n  => hanoi n "a" "b" "c"
