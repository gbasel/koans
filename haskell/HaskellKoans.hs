module HaskellKoans where

runKoans :: [Bool] -> IO ()
runKoans koans = show (length $ filter id koans) ++ "/" ++ show (length koans)
