{-# LANGUAGE TemplateHaskell #-}

import HaskellKoans

ifExample00 :: Char
ifExample00 = if True then 't' else 'f'

-- TODO
koan00 :: Bool
koan00 = ifExample00 == 't'

ifExample01 :: Int
ifExample01 = if not True then 3 else 5

-- TODO
koan01 :: Bool
koan01 = ifExample01 == 5

printEven :: Int -> String
printEven n = if even n then "n is even" else "n is odd"

-- TODO
koan02 :: Bool
koan02 = printEven 4 == "n is even"

-- TODO
koan03 :: Bool
koan03 = printEven 13 == "n is odd"

intPredicate :: Int -> Bool
intPredicate n = n `mod` 3 == 0 || n <= 25

example04 :: Int -> [Int]
example04 n = if intPredicate n then [n .. n + 4] else [n .. n - 3]

-- TODO
koan04 :: Bool
koan04 = example04 4 == [4..8]

-- TODO
koan05 :: Bool
koan05 = example04 60 == [60..(60+4)]

-- TODO
koan06 :: Bool
koan06 = example04 70 == [70..(70-3)]

weird :: Int -> Int
weird n =
    if n `mod` 5 == 0 then
        n + 2
    else
        if 0 < n && n < 20 then
            negate n
        else
            if n < 0 then
                n * 3
            else
                42
-- TODO
koan07 :: Bool
koan07 = weird (-34) == (-34*3)

-- TODO
koan08 :: Bool
koan08 = weird 15 == (15+2)

-- TODO
koan09 :: Bool
koan09 = weird 51 == 42

-- TODO
koan10 :: Bool
koan10 = weird 7 == (negate 7)

-- TODO
koan11 :: Bool
koan11 = weird 50 == (50+2)

--------------------------------------------------------------------------------

main :: IO ()
main = runKoans $(koanList 11)
