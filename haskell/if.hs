module If where

ifExample0 :: Char
ifExample0 =
    if True then
        't'
    else
        'f'

-- TODO
koan0 :: Bool
koan0 = ifExample0 == undefined

ifExample1 :: Int
ifExample1 =
    if not True then
        3
    else
        5

-- TODO
koan1 :: Bool
koan1 = ifExample1 == undefined

printEven :: Int -> String
printEven n =
    if even n then
        "n is even"
    else
        "n is odd"

-- TODO
koan2 :: Bool
koan2 = (printEven 4) == undefined

-- TODO
koan3 :: Bool
koan3 = (printEven 13) == undefined

--------------------------------------------------------------------------------

main :: IO ()
main = putStrLn result
  where
    result = show passed ++ "/" ++ show total
    passed = length $ filter id koans
    total  = length koans
    koans  = [ koan0
             , koan1
             , koan2
             , koan3
             ]
