module Main where

import Lib

getmul35 :: (Integral a) => a -> Bool
getmul35 a = if (mod a 3 == 0) || (mod a 5 == 0) then True else False

main :: IO ()
main = do
  let list = [1..999]
  let multiples35 = filter getmul35 list
  let res = foldr (+) 0 multiples35
  print multiples35
  print res

  
