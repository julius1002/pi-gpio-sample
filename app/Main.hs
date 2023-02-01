module Main where

import System.GPIO
import Control.Concurrent (threadDelay)

pins :: [Pin]
pins = [P13, P5]

main :: IO ()
main = do
  pins <- mapM initWriterPin pins
  mapM_ (writePin HI) pins
  threadDelay 10000000
  mapM_ (writePin LO) pins
