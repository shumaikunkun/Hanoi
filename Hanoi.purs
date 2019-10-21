module Hanoi where

import Prelude
import Prim as Prim
import Effect as Effect
import Effect.Console as Console
import Data.Int as Int
import Data.Maybe as Maybe
import Node.ReadLine as ReadLine

hanoi :: Prim.Int -> Prim.String -> Prim.String -> Prim.String -> Effect.Effect Unit
hanoi n x y z = do
  if n > 1 then
    hanoi (n - 1) x z y
  else
    pure unit
  Console.log (x <> "=>" <> y)
  if n > 1 then
    hanoi (n - 1) z y x
  else
    pure unit

main :: Effect.Effect Unit
main = do
  interface <- ReadLine.createConsoleInterface ReadLine.noCompletion
  ReadLine.setLineHandler interface
    ( \str -> do
        case Int.fromString str of
          Maybe.Just x -> hanoi x "a" "b" "c"
          Maybe.Nothing -> pure unit
        ReadLine.close interface
    )
