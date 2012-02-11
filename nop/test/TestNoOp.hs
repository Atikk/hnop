{-# OPTIONS -ffi -Wall -Werror #-}

module Main where

import Control.Nop

main :: IO ()
main = do
	putStrLn "Begin"
	noop
	putStrLn "End"
