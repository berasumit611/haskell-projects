-- problem 3 Find the K'th element of a list.
-- λ> elementAt [1,2,3] 2
-- 2
-- λ> elementAt "haskell" 5
-- 'e'

module Main (main) where

elementAt::[a]->Int->a
elementAt [] _=error "Index out of bounds"
elementAt(x:_) 1= x --the first element in haskell is indexed as 1
elementAt (_ :xs) k
    | k < 1 = error "Index out of bounds"
    | otherwise = elementAt xs (k-1)


main :: IO ()
main = do
    print $ elementAt[1,2,3] 2
    print $ elementAt "haskell" 5
