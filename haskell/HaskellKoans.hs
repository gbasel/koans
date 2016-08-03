{-# LANGUAGE TemplateHaskell #-}

module HaskellKoans where

import Language.Haskell.TH

varList :: String -> Int -> ExpQ
varList base = listE . map (varE . mkName . (base ++) . pad) . enumFromTo 0
  where
    pad n = if length (show n) == 1 then '0' : show n else show n

koanList :: Int -> ExpQ
koanList = varList "koan"

runKoans :: [Bool] -> IO ()
runKoans koans = print 
               $ show (length $ filter id koans) ++ "/" ++ show (length koans)
