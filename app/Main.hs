module Main where

import Forest.Level1 (Forest(..), level1forest)
import User.Actions.Move (AvailableMoves, move)

main :: IO ()
main = do
    putStrLn "You're trapped in a forest, try to escape! Remember you lose stamina every move."
    gameLoop (10 :: Int, level1forest)
    where 
        gameLoop (_, FoundExit) = putStrLn "You found the exit!"
        gameLoop (s,_) | s <= 0 = putStrnLn "You ran out of stamina and died!"
        gameLoop (s, forest) = do
            putStrnLn $ "You have " ++ show s ++ " stamina, and you're still in the forest."
            selectedMove <- getLine
            gameLoop $ move (s, forest) (read selectedMove :: AvailableMoves)
