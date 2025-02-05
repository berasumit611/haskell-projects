-- Reverse a list.Solutions

-- λ> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- λ> myReverse [1,2,3,4]
-- [4,3,2,1]

module Main (main) where

myReverse::[a]->[a]
myReverse []=[]
myReverse (x:xs)=myReverse xs ++[x]

main :: IO ()
main = do
    print $ myReverse "A man, a plan, a canal, panama!"
    print $ myReverse [1,2,3,4]