module Main where

import qualified Hello.TestHello as Hello
import qualified World.TestHello as World

main :: IO ()
main = do
 Hello.testHello
 putStr " "
 World.testHello
 