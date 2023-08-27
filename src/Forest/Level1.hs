module Forest.Level1 (Forest(..), level1forest) where

data Forest a = FoundExit | Trail a (Forest a) (Forest a) (Forest a) deriving

level1forest :: (Num a, Ord a) => Forest a
level1forest =
    Trail
        3
        ( Trail
            7
            (Trail 3 FoundExit FoundExit FoundExit)
            (Trail 4 FoundExit FoundExit FoundExit)
            (Trail 5 FoundExit FoundExit FoundExit)
        )
        ( Trail
            3
            (Trail 3 FoundExit FoundExit FoundExit)
            (Trail 9 FoundExit FoundExit FoundExit)
            (Trail 5 FoundExit FoundExit FoundExit)
        )
        ( Trail
            5
            (Trail 3 FoundExit FoundExit FoundExit)
            (Trail 4 FoundExit FoundExit FoundExit)
            (Trail 1 FoundExit FoundExit FoundExit)
        )