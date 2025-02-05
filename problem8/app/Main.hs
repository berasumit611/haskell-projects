module Main (main) where
import Data.List (group)

compress :: (Eq a)=>[a]->[a]
compress = map head . group
main :: IO ()
main = do
    print $ compress "aaabcdddfgghh"
    print $ compress [1,1,1,1,2,2,3,3,4]
