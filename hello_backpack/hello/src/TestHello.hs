{-# Language TypeFamilies, MultiParamTypeClasses,FlexibleContexts #-}

module TestHello where

import Hello (str)

testHello :: IO ()
testHello = putStr str




