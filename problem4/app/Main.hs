-- Find the number of elements in a list.
-- λ> myLength [123, 456, 789]
-- 3
-- λ> myLength "Hello, world!"
-- 13

module Main (main) where

myLength::[a]->Int
myLength[]=0
myLength(_:xs)=1+myLength xs

main :: IO ()
main = do
    print $ myLength [123,345,3,4]
    print $ myLength "sumit"

