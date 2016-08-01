module If where

ifExample :: Char
ifExample =
    if True then
        't'
    else
        'f'

koan :: Bool
koan = ifExample == undefined

ifExample :: Int
ifExample =
    if not True then
        3
    else
        5

-- TODO
koan :: Bool
koan = ifExample == undefined

printEven :: Int -> String
printEven n =
    if even n then
        "n is even"
    else
        "n is odd"

-- TODO
koan :: Bool
koan = (printEven 4) == undefined

-- TODO
koan :: Bool
koan = (printEven 13) == undefined
