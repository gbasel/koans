koan00 :: Bool
koan00 = True

koan01 :: Bool
koan01 = True || False

koan02 :: Bool
koan02 = True && True

koan03 :: Bool
koan03 = True || undefined

koan04 :: Bool
koan04 = True && undefined

koan05 :: Bool
koan05 = False || undefined

koan06 :: Bool
koan06 = undefined || undefined

koan07 :: Bool
koan07 = undefined && undefined

koan08 :: Bool
koan08 = True && (False || True)

koan09 :: Bool
koan09 = False || (True && undefined)

koan10 :: Bool
koan10 = True && (undefined && undefined)

koan11 :: Bool
koan11 = True && (undefined || False)

koan12 :: Bool
koan12 = (False || True) && (True || False)

koan13 :: Bool
koan13 = (undefined && True) || (False || undefined)

--------------------------------------------------------------------------------

import HaskellKoans

main :: IO ()
main = runKoans [ koan00
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
                , koan12
                , koan13
                ]
