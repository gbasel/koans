module If where

ifExample00 :: Char
ifExample00 = if True then 't' else 'f'

-- TODO
koan00 :: Bool
koan00 = ifExample00 == undefined

ifExample01 :: Int
ifExample01 = if not True then 3 else 5

-- TODO
koan01 :: Bool
koan01 = ifExample01 == undefined

printEven :: Int -> String
printEven n = if even n then "n is even" else "n is odd"

-- TODO
koan02 :: Bool
koan02 = printEven 4 == undefined

-- TODO
koan03 :: Bool
koan03 = printEven 13 == undefined

intPredicate :: Int -> Bool
intPredicate n = n `mod` 3 == 0 || n <= 25

example04 :: Int -> [Int]
example04 n = if intPredicate n then [n .. n + 4] else [n .. n - 3]

-- TODO
koan04 :: Bool
koan04 = intPredicate 4 == undefined

-- TODO
koan05 :: Bool
koan05 = intPredicate 60 == undefined

-- TODO
koan06 :: Bool
koan06 = intPredicate 70 == undefined

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
koan07 = weird (-34) == undefined

-- TODO
koan08 :: Bool
koan08 = weird 15 == undefined

-- TODO
koan09 :: Bool
koan09 = weird 51 == undefined

-- TODO
koan10 :: Bool
koan10 = weird 7 == undefined

-- TODO
koan11 :: Bool
koan11 = weird 50 == undefined

--------------------------------------------------------------------------------

main :: IO ()
main = putStrLn result
  where
    result = show passed ++ "/" ++ show total
    passed = length $ filter id koans
    total  = length koans
    koans  = [ koan00
             , koan01
             , koan02
             , koan03
             , koan04
             , koan05
             , koan06
             , koan07
             , koan08
             , koan09
             , koan10
             , koan11
             ]
